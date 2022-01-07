; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c_sram_alloc_with_lsl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c_sram_alloc_with_lsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sram_list_struct* }
%struct.sram_list_struct = type { i64, %struct.sram_list_struct*, i8* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@L1_INST_SRAM = common dso_local global i64 0, align 8
@L1_DATA_A_SRAM = common dso_local global i64 0, align 8
@L1_DATA_B_SRAM = common dso_local global i64 0, align 8
@L2_SRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sram_alloc_with_lsl(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sram_list_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store %struct.sram_list_struct* null, %struct.sram_list_struct** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sram_list_struct* @kzalloc(i32 24, i32 %12)
  store %struct.sram_list_struct* %13, %struct.sram_list_struct** %7, align 8
  %14 = load %struct.sram_list_struct*, %struct.sram_list_struct** %7, align 8
  %15 = icmp ne %struct.sram_list_struct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %82

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @L1_INST_SRAM, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = call i8* @l1_inst_sram_alloc(i64 %23)
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @L1_DATA_A_SRAM, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = call i8* @l1_data_A_sram_alloc(i64 %34)
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @L1_DATA_B_SRAM, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = call i8* @l1_data_B_sram_alloc(i64 %45)
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %44, %39, %36
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @L2_SRAM, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, i64* %4, align 8
  %57 = call i8* @l2_sram_alloc(i64 %56)
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %55, %50, %47
  %59 = load i8*, i8** %6, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.sram_list_struct*, %struct.sram_list_struct** %7, align 8
  %63 = call i32 @kfree(%struct.sram_list_struct* %62)
  store i8* null, i8** %3, align 8
  br label %82

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.sram_list_struct*, %struct.sram_list_struct** %7, align 8
  %67 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.sram_list_struct*, %struct.sram_list_struct** %7, align 8
  %70 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %72 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.sram_list_struct*, %struct.sram_list_struct** %73, align 8
  %75 = load %struct.sram_list_struct*, %struct.sram_list_struct** %7, align 8
  %76 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %75, i32 0, i32 1
  store %struct.sram_list_struct* %74, %struct.sram_list_struct** %76, align 8
  %77 = load %struct.sram_list_struct*, %struct.sram_list_struct** %7, align 8
  %78 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %79 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store %struct.sram_list_struct* %77, %struct.sram_list_struct** %80, align 8
  %81 = load i8*, i8** %6, align 8
  store i8* %81, i8** %3, align 8
  br label %82

82:                                               ; preds = %64, %61, %16
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

declare dso_local %struct.sram_list_struct* @kzalloc(i32, i32) #1

declare dso_local i8* @l1_inst_sram_alloc(i64) #1

declare dso_local i8* @l1_data_A_sram_alloc(i64) #1

declare dso_local i8* @l1_data_B_sram_alloc(i64) #1

declare dso_local i8* @l2_sram_alloc(i64) #1

declare dso_local i32 @kfree(%struct.sram_list_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
