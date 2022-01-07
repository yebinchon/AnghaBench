; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_set_hw_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_set_hw_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i64, i64 }

@TYPE_INST_WATCHPOINT = common dso_local global i32 0, align 4
@TYPE_DATA_WATCHPOINT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@HW_INST_WATCHPOINT_NUM = common dso_local global i32 0, align 4
@breakinfo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfin_set_hw_break(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %20 [
    i32 130, label %12
    i32 128, label %14
    i32 129, label %16
    i32 131, label %18
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @TYPE_INST_WATCHPOINT, align 4
  store i32 %13, i32* %9, align 4
  br label %23

14:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  %15 = load i32, i32* @TYPE_DATA_WATCHPOINT, align 4
  store i32 %15, i32* %9, align 4
  br label %23

16:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  %17 = load i32, i32* @TYPE_DATA_WATCHPOINT, align 4
  store i32 %17, i32* %9, align 4
  br label %23

18:                                               ; preds = %3
  store i32 3, i32* %10, align 4
  %19 = load i32, i32* @TYPE_DATA_WATCHPOINT, align 4
  store i32 %19, i32* %9, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %85

23:                                               ; preds = %18, %16, %14, %12
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %79, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @HW_INST_WATCHPOINT_NUM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %29, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %28
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i64 %61, i64* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32 %67, i32* %72, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %85

78:                                               ; preds = %37, %28
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %24

82:                                               ; preds = %24
  %83 = load i32, i32* @ENOSPC, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %45, %20
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
