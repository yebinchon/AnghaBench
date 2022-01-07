; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_budget_ci_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_budget_ci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.budget_ci = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.saa7146_dev* }

@SAA7146_GPIO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @budget_ci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_ci_detach(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.budget_ci*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %7 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.budget_ci*
  store %struct.budget_ci* %9, %struct.budget_ci** %3, align 8
  %10 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %11 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %4, align 8
  %14 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %15 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %21 = call i32 @ciintf_deinit(%struct.budget_ci* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %24 = call i32 @msp430_ir_deinit(%struct.budget_ci* %23)
  %25 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %26 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %32 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dvb_unregister_frontend(i64 %34)
  %36 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %37 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dvb_frontend_detach(i64 %39)
  br label %41

41:                                               ; preds = %30, %22
  %42 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %43 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %42, i32 0, i32 0
  %44 = call i32 @ttpci_budget_deinit(%struct.TYPE_2__* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %46 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %47 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %45, i32 2, i32 %46)
  %48 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %49 = call i32 @kfree(%struct.budget_ci* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @ciintf_deinit(%struct.budget_ci*) #1

declare dso_local i32 @msp430_ir_deinit(%struct.budget_ci*) #1

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_frontend_detach(i64) #1

declare dso_local i32 @ttpci_budget_deinit(%struct.TYPE_2__*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @kfree(%struct.budget_ci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
