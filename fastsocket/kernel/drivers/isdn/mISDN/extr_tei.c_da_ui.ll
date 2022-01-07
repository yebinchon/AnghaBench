; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_da_ui.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_da_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.manager* }
%struct.manager = type { i32, i32 }

@OPTION_L1_HOLD = common dso_local global i32 0, align 4
@DATIMER_VAL = common dso_local global i32 0, align 4
@EV_DATIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @da_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da_ui(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.manager*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.manager*, %struct.manager** %9, align 8
  store %struct.manager* %10, %struct.manager** %7, align 8
  %11 = load i32, i32* @OPTION_L1_HOLD, align 4
  %12 = load %struct.manager*, %struct.manager** %7, align 8
  %13 = getelementptr inbounds %struct.manager, %struct.manager* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.manager*, %struct.manager** %7, align 8
  %18 = getelementptr inbounds %struct.manager, %struct.manager* %17, i32 0, i32 0
  %19 = call i32 @mISDN_FsmDelTimer(i32* %18, i32 2)
  %20 = load %struct.manager*, %struct.manager** %7, align 8
  %21 = getelementptr inbounds %struct.manager, %struct.manager* %20, i32 0, i32 0
  %22 = load i32, i32* @DATIMER_VAL, align 4
  %23 = load i32, i32* @EV_DATIMER, align 4
  %24 = call i32 @mISDN_FsmAddTimer(i32* %21, i32 %22, i32 %23, i32* null, i32 2)
  br label %25

25:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmDelTimer(i32*, i32) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
