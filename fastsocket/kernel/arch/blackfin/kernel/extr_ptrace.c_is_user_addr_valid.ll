; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ptrace.c_is_user_addr_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ptrace.c_is_user_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sram_list_struct* }
%struct.sram_list_struct = type { i64, i64, %struct.sram_list_struct* }
%struct.vm_area_struct = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@FIXED_CODE_START = common dso_local global i64 0, align 8
@FIXED_CODE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @is_user_addr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_user_addr_valid(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.sram_list_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %10, %11
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_4__* %21, i64 %22)
  store %struct.vm_area_struct* %23, %struct.vm_area_struct** %8, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %25 = icmp ne %struct.vm_area_struct* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %33, %34
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ule i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %89

41:                                               ; preds = %32, %26, %18
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.sram_list_struct*, %struct.sram_list_struct** %46, align 8
  store %struct.sram_list_struct* %47, %struct.sram_list_struct** %9, align 8
  br label %48

48:                                               ; preds = %71, %41
  %49 = load %struct.sram_list_struct*, %struct.sram_list_struct** %9, align 8
  %50 = icmp ne %struct.sram_list_struct* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.sram_list_struct*, %struct.sram_list_struct** %9, align 8
  %54 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.sram_list_struct*, %struct.sram_list_struct** %9, align 8
  %62 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sram_list_struct*, %struct.sram_list_struct** %9, align 8
  %65 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = icmp ult i64 %60, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %89

70:                                               ; preds = %57, %51
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.sram_list_struct*, %struct.sram_list_struct** %9, align 8
  %73 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %72, i32 0, i32 2
  %74 = load %struct.sram_list_struct*, %struct.sram_list_struct** %73, align 8
  store %struct.sram_list_struct* %74, %struct.sram_list_struct** %9, align 8
  br label %48

75:                                               ; preds = %48
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @FIXED_CODE_START, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %80, %81
  %83 = load i64, i64* @FIXED_CODE_END, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %89

86:                                               ; preds = %79, %75
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %85, %69, %40, %15
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
