; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_ttpci_budget_debiwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_ttpci_budget_debiwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@DEBI_COMMAND = common dso_local global i32 0, align 4
@DEBI_CONFIG = common dso_local global i32 0, align 4
@DEBI_PAGE = common dso_local global i32 0, align 4
@DEBI_AD = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttpci_budget_debiwrite(%struct.budget* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.budget*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.saa7146_dev*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.budget* %0, %struct.budget** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.budget*, %struct.budget** %9, align 8
  %20 = getelementptr inbounds %struct.budget, %struct.budget* %19, i32 0, i32 1
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %20, align 8
  store %struct.saa7146_dev* %21, %struct.saa7146_dev** %16, align 8
  store i64 0, i64* %17, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %7
  store i32 0, i32* %8, align 4
  br label %97

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.budget*, %struct.budget** %9, align 8
  %33 = getelementptr inbounds %struct.budget, %struct.budget* %32, i32 0, i32 0
  %34 = load i64, i64* %17, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %37, i32 %38)
  store i32 %39, i32* %18, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.budget*, %struct.budget** %9, align 8
  %46 = getelementptr inbounds %struct.budget, %struct.budget* %45, i32 0, i32 0
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %8, align 4
  br label %97

51:                                               ; preds = %36
  %52 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %53 = load i32, i32* @DEBI_COMMAND, align 4
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 %54, 17
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 65535
  %58 = or i32 %55, %57
  %59 = call i32 @saa7146_write(%struct.saa7146_dev* %52, i32 %53, i32 %58)
  %60 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %61 = load i32, i32* @DEBI_CONFIG, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @saa7146_write(%struct.saa7146_dev* %60, i32 %61, i32 %62)
  %64 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %65 = load i32, i32* @DEBI_PAGE, align 4
  %66 = call i32 @saa7146_write(%struct.saa7146_dev* %64, i32 %65, i32 0)
  %67 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %68 = load i32, i32* @DEBI_AD, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @saa7146_write(%struct.saa7146_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %72 = load i32, i32* @MC2, align 4
  %73 = call i32 @saa7146_write(%struct.saa7146_dev* %71, i32 %72, i32 131074)
  %74 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %74, i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %51
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.budget*, %struct.budget** %9, align 8
  %83 = getelementptr inbounds %struct.budget, %struct.budget* %82, i32 0, i32 0
  %84 = load i64, i64* %17, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %8, align 4
  br label %97

88:                                               ; preds = %51
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.budget*, %struct.budget** %9, align 8
  %93 = getelementptr inbounds %struct.budget, %struct.budget* %92, i32 0, i32 0
  %94 = load i64, i64* %17, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %91, %88
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %86, %49, %27
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
