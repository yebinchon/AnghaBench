; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_start_delay_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_start_delay_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ST_L3_LC_REL_DELAY = common dso_local global i32 0, align 4
@ISDN_PTYPE_NI1 = common dso_local global i64 0, align 8
@DREL_TIMER_VALUE = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lc_start_delay_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lc_start_delay_check(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.PStack*, %struct.PStack** %9, align 8
  store %struct.PStack* %10, %struct.PStack** %7, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = load i32, i32* @ST_L3_LC_REL_DELAY, align 4
  %13 = call i32 @FsmChangeState(%struct.FsmInst* %11, i32 %12)
  %14 = load %struct.PStack*, %struct.PStack** %7, align 8
  %15 = getelementptr inbounds %struct.PStack, %struct.PStack* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISDN_PTYPE_NI1, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.PStack*, %struct.PStack** %7, align 8
  %21 = getelementptr inbounds %struct.PStack, %struct.PStack* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @DREL_TIMER_VALUE, align 4
  %24 = load i32, i32* @EV_TIMEOUT, align 4
  %25 = call i32 @FsmAddTimer(i32* %22, i32 %23, i32 %24, i32* null, i32 50)
  br label %26

26:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
