; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_l1_power_up_s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_l1_power_up_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.PStack.0*, i32, i32*)* }
%struct.PStack.0 = type opaque

@FLG_L1_ACTIVATING = common dso_local global i32 0, align 4
@ST_L1_F4 = common dso_local global i32 0, align 4
@HW_INFO3 = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@TIMER3_VALUE = common dso_local global i32 0, align 4
@EV_TIMER3 = common dso_local global i32 0, align 4
@FLG_L1_T3RUN = common dso_local global i32 0, align 4
@ST_L1_F3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_power_up_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_power_up_s(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %11 = load i32, i32* @FLG_L1_ACTIVATING, align 4
  %12 = load %struct.PStack*, %struct.PStack** %7, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %19 = load i32, i32* @ST_L1_F4, align 4
  %20 = call i32 @FsmChangeState(%struct.FsmInst* %18, i32 %19)
  %21 = load %struct.PStack*, %struct.PStack** %7, align 8
  %22 = getelementptr inbounds %struct.PStack, %struct.PStack* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %23, align 8
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = bitcast %struct.PStack* %25 to %struct.PStack.0*
  %27 = load i32, i32* @HW_INFO3, align 4
  %28 = load i32, i32* @REQUEST, align 4
  %29 = or i32 %27, %28
  %30 = call i32 %24(%struct.PStack.0* %26, i32 %29, i32* null)
  %31 = load %struct.PStack*, %struct.PStack** %7, align 8
  %32 = getelementptr inbounds %struct.PStack, %struct.PStack* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* @TIMER3_VALUE, align 4
  %35 = load i32, i32* @EV_TIMER3, align 4
  %36 = call i32 @FsmRestartTimer(i32* %33, i32 %34, i32 %35, i32* null, i32 2)
  %37 = load i32, i32* @FLG_L1_T3RUN, align 4
  %38 = load %struct.PStack*, %struct.PStack** %7, align 8
  %39 = getelementptr inbounds %struct.PStack, %struct.PStack* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @test_and_set_bit(i32 %37, i32* %40)
  br label %46

42:                                               ; preds = %3
  %43 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %44 = load i32, i32* @ST_L1_F3, align 4
  %45 = call i32 @FsmChangeState(%struct.FsmInst* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %17
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
