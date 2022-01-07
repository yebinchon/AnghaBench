; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_gru_vtop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_gru_vtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@VTOP_SUCCESS = common dso_local global i32 0, align 4
@VTOP_INVALID = common dso_local global i32 0, align 4
@VTOP_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_thread_state*, i64, i32, i32, i64*, i32*)* @gru_vtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_vtop(%struct.gru_thread_state* %0, i64 %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gru_thread_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %20 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %14, align 8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %22, i64 %23)
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %15, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %26 = icmp ne %struct.vm_area_struct* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  br label %67

28:                                               ; preds = %6
  %29 = call i32 (...) @rmb()
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @atomic_pte_lookup(%struct.vm_area_struct* %30, i64 %31, i32 %32, i64* %16, i32* %18)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %69

40:                                               ; preds = %36
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @non_atomic_pte_lookup(%struct.vm_area_struct* %41, i64 %42, i32 %43, i64* %16, i32* %18)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %67

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i64, i64* %16, align 8
  %50 = call i64 @is_gru_paddr(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %67

53:                                               ; preds = %48
  %54 = load i64, i64* %16, align 8
  %55 = load i32, i32* %18, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = sub i64 %57, 1
  %59 = xor i64 %58, -1
  %60 = and i64 %54, %59
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = call i64 @uv_soc_phys_ram_to_gpa(i64 %61)
  %63 = load i64*, i64** %12, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @VTOP_SUCCESS, align 4
  store i32 %66, i32* %7, align 4
  br label %71

67:                                               ; preds = %52, %46, %27
  %68 = load i32, i32* @VTOP_INVALID, align 4
  store i32 %68, i32* %7, align 4
  br label %71

69:                                               ; preds = %39
  %70 = load i32, i32* @VTOP_RETRY, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %67, %53
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @atomic_pte_lookup(%struct.vm_area_struct*, i64, i32, i64*, i32*) #1

declare dso_local i64 @non_atomic_pte_lookup(%struct.vm_area_struct*, i64, i32, i64*, i32*) #1

declare dso_local i64 @is_gru_paddr(i64) #1

declare dso_local i64 @uv_soc_phys_ram_to_gpa(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
