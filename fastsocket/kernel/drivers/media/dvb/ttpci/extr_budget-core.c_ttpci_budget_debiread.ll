; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_ttpci_budget_debiread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_ttpci_budget_debiread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@DEBI_COMMAND = common dso_local global i32 0, align 4
@DEBI_CONFIG = common dso_local global i32 0, align 4
@DEBI_PAGE = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@DEBI_AD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttpci_budget_debiread(%struct.budget* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.budget*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.saa7146_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.budget* %0, %struct.budget** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.budget*, %struct.budget** %8, align 8
  %18 = getelementptr inbounds %struct.budget, %struct.budget* %17, i32 0, i32 1
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %18, align 8
  store %struct.saa7146_dev* %19, %struct.saa7146_dev** %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %6
  store i32 0, i32* %7, align 4
  br label %105

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.budget*, %struct.budget** %8, align 8
  %31 = getelementptr inbounds %struct.budget, %struct.budget* %30, i32 0, i32 0
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.budget*, %struct.budget** %8, align 8
  %44 = getelementptr inbounds %struct.budget, %struct.budget* %43, i32 0, i32 0
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %105

49:                                               ; preds = %34
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %51 = load i32, i32* @DEBI_COMMAND, align 4
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 17
  %54 = or i32 %53, 65536
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 65535
  %57 = or i32 %54, %56
  %58 = call i32 @saa7146_write(%struct.saa7146_dev* %50, i32 %51, i32 %57)
  %59 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %60 = load i32, i32* @DEBI_CONFIG, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @saa7146_write(%struct.saa7146_dev* %59, i32 %60, i32 %61)
  %63 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %64 = load i32, i32* @DEBI_PAGE, align 4
  %65 = call i32 @saa7146_write(%struct.saa7146_dev* %63, i32 %64, i32 0)
  %66 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %67 = load i32, i32* @MC2, align 4
  %68 = call i32 @saa7146_write(%struct.saa7146_dev* %66, i32 %67, i32 131074)
  %69 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %49
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.budget*, %struct.budget** %8, align 8
  %78 = getelementptr inbounds %struct.budget, %struct.budget* %77, i32 0, i32 0
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %7, align 4
  br label %105

83:                                               ; preds = %49
  %84 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  %85 = load i32, i32* @DEBI_AD, align 4
  %86 = call i32 @saa7146_read(%struct.saa7146_dev* %84, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 4, %87
  %89 = mul nsw i32 %88, 8
  %90 = zext i32 %89 to i64
  %91 = lshr i64 4294967295, %90
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = and i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %83
  %99 = load %struct.budget*, %struct.budget** %8, align 8
  %100 = getelementptr inbounds %struct.budget, %struct.budget* %99, i32 0, i32 0
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %98, %83
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %81, %47, %25
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
