; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_ciintf_slot_ts_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_ciintf_slot_ts_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.budget_ci = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@DEBICICTL = common dso_local global i32 0, align 4
@DEBIADDR_CICONTROL = common dso_local global i32 0, align 4
@CICONTROL_ENABLETS = common dso_local global i32 0, align 4
@BUDGET_VIDEO_PORTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @ciintf_slot_ts_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_slot_ts_enable(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.budget_ci*, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.budget_ci*
  store %struct.budget_ci* %12, %struct.budget_ci** %6, align 8
  %13 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %14 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %24 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %25 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %23, i32 1, i32 %24)
  %26 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %27 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %26, i32 0, i32 0
  %28 = load i32, i32* @DEBICICTL, align 4
  %29 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %30 = call i32 @ttpci_budget_debiread(%struct.TYPE_3__* %27, i32 %28, i32 %29, i32 1, i32 1, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %32 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %31, i32 0, i32 0
  %33 = load i32, i32* @DEBICICTL, align 4
  %34 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @CICONTROL_ENABLETS, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ttpci_budget_debiwrite(%struct.TYPE_3__* %32, i32 %33, i32 %34, i32 1, i32 %37, i32 1, i32 0)
  %39 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %40 = load i32, i32* @BUDGET_VIDEO_PORTA, align 4
  %41 = call i32 @ttpci_budget_set_video_port(%struct.saa7146_dev* %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %22, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @ttpci_budget_debiread(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ttpci_budget_debiwrite(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ttpci_budget_set_video_port(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
