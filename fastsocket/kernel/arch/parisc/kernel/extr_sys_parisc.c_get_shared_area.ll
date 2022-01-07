; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_sys_parisc.c_get_shared_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_sys_parisc.c_get_shared_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.address_space = type { i32 }
%struct.vm_area_struct = type { i64, i32, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.address_space*, i64, i64, i64)* @get_shared_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_shared_area(%struct.address_space* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.address_space*, %struct.address_space** %6, align 8
  %13 = icmp ne %struct.address_space* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.address_space*, %struct.address_space** %6, align 8
  %16 = call i32 @get_offset(%struct.address_space* %15)
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 0, %17 ]
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %20, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @DCACHE_ALIGN(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call %struct.vm_area_struct* @find_vma(i32 %31, i64 %32)
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %10, align 8
  br label %34

34:                                               ; preds = %76, %18
  %35 = load i64, i64* @TASK_SIZE, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* @ENOMEM, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %80

43:                                               ; preds = %34
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %45 = icmp ne %struct.vm_area_struct* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ule i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46, %43
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %5, align 8
  br label %80

56:                                               ; preds = %46
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @DCACHE_ALIGN(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %56
  %73 = load i64, i64* @ENOMEM, align 8
  %74 = sub i64 0, %73
  store i64 %74, i64* %5, align 8
  br label %80

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 2
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %78, align 8
  store %struct.vm_area_struct* %79, %struct.vm_area_struct** %10, align 8
  br label %34

80:                                               ; preds = %72, %54, %40
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local i32 @get_offset(%struct.address_space*) #1

declare dso_local i32 @DCACHE_ALIGN(i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
