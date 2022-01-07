; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_ciintf_slot_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_ciintf_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.budget_ci = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAA7146_GPIO_IRQHI = common dso_local global i32 0, align 4
@SLOTSTATUS_RESET = common dso_local global i32 0, align 4
@DEBICICTL = common dso_local global i32 0, align 4
@DEBIADDR_CICONTROL = common dso_local global i32 0, align 4
@CICONTROL_RESET = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@BUDGET_VIDEO_PORTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @ciintf_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_slot_reset(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.budget_ci*, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.budget_ci*
  store %struct.budget_ci* %11, %struct.budget_ci** %6, align 8
  %12 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %13 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  store %struct.saa7146_dev* %15, %struct.saa7146_dev** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %23 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %28 = load i32, i32* @SAA7146_GPIO_IRQHI, align 4
  %29 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %27, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* @SLOTSTATUS_RESET, align 4
  %32 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %33 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %35 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %34, i32 0, i32 0
  %36 = load i32, i32* @DEBICICTL, align 4
  %37 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %38 = call i32 @ttpci_budget_debiwrite(%struct.TYPE_2__* %35, i32 %36, i32 %37, i32 1, i32 0, i32 1, i32 0)
  %39 = call i32 @msleep(i32 1)
  %40 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %41 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %40, i32 0, i32 0
  %42 = load i32, i32* @DEBICICTL, align 4
  %43 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %44 = load i32, i32* @CICONTROL_RESET, align 4
  %45 = call i32 @ttpci_budget_debiwrite(%struct.TYPE_2__* %41, i32 %42, i32 %43, i32 1, i32 %44, i32 1, i32 0)
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %47 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %48 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %46, i32 1, i32 %47)
  %49 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %50 = load i32, i32* @BUDGET_VIDEO_PORTB, align 4
  %51 = call i32 @ttpci_budget_set_video_port(%struct.saa7146_dev* %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %30, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @ttpci_budget_debiwrite(%struct.TYPE_2__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ttpci_budget_set_video_port(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
