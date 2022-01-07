; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_activate_s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_activate_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer1* }
%struct.layer1 = type { i32, i32 (i32, i32)*, i32, i32 }

@TIMER3_VALUE = common dso_local global i32 0, align 4
@EV_TIMER3 = common dso_local global i32 0, align 4
@FLG_L1_T3RUN = common dso_local global i32 0, align 4
@HW_RESET_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_activate_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_activate_s(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer1*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.layer1*, %struct.layer1** %9, align 8
  store %struct.layer1* %10, %struct.layer1** %7, align 8
  %11 = load %struct.layer1*, %struct.layer1** %7, align 8
  %12 = getelementptr inbounds %struct.layer1, %struct.layer1* %11, i32 0, i32 3
  %13 = load i32, i32* @TIMER3_VALUE, align 4
  %14 = load i32, i32* @EV_TIMER3, align 4
  %15 = call i32 @mISDN_FsmRestartTimer(i32* %12, i32 %13, i32 %14, i32* null, i32 2)
  %16 = load i32, i32* @FLG_L1_T3RUN, align 4
  %17 = load %struct.layer1*, %struct.layer1** %7, align 8
  %18 = getelementptr inbounds %struct.layer1, %struct.layer1* %17, i32 0, i32 2
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = load %struct.layer1*, %struct.layer1** %7, align 8
  %21 = getelementptr inbounds %struct.layer1, %struct.layer1* %20, i32 0, i32 1
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.layer1*, %struct.layer1** %7, align 8
  %24 = getelementptr inbounds %struct.layer1, %struct.layer1* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HW_RESET_REQ, align 4
  %27 = call i32 %22(i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @mISDN_FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
