; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_l1_info4_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_l1_info4_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.PStack.0*, i32, i32*)* }
%struct.PStack.0 = type opaque

@ST_L1_F7 = common dso_local global i32 0, align 4
@HW_INFO3 = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@FLG_L1_DEACTTIMER = common dso_local global i32 0, align 4
@FLG_L1_ACTIVATED = common dso_local global i32 0, align 4
@FLG_L1_T3RUN = common dso_local global i32 0, align 4
@EV_TIMER_ACT = common dso_local global i32 0, align 4
@FLG_L1_ACTTIMER = common dso_local global i32 0, align 4
@FLG_L1_UINT = common dso_local global i32 0, align 4
@ST_L1_TRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_info4_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_info4_ind(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %12 = load i32, i32* @ST_L1_F7, align 4
  %13 = call i32 @FsmChangeState(%struct.FsmInst* %11, i32 %12)
  %14 = load %struct.PStack*, %struct.PStack** %7, align 8
  %15 = getelementptr inbounds %struct.PStack, %struct.PStack* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %16, align 8
  %18 = load %struct.PStack*, %struct.PStack** %7, align 8
  %19 = bitcast %struct.PStack* %18 to %struct.PStack.0*
  %20 = load i32, i32* @HW_INFO3, align 4
  %21 = load i32, i32* @REQUEST, align 4
  %22 = or i32 %20, %21
  %23 = call i32 %17(%struct.PStack.0* %19, i32 %22, i32* null)
  %24 = load i32, i32* @FLG_L1_DEACTTIMER, align 4
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @test_and_clear_bit(i32 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.PStack*, %struct.PStack** %7, align 8
  %32 = getelementptr inbounds %struct.PStack, %struct.PStack* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @FsmDelTimer(i32* %33, i32 4)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i32, i32* @FLG_L1_ACTIVATED, align 4
  %37 = load %struct.PStack*, %struct.PStack** %7, align 8
  %38 = getelementptr inbounds %struct.PStack, %struct.PStack* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %36, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @FLG_L1_T3RUN, align 4
  %44 = load %struct.PStack*, %struct.PStack** %7, align 8
  %45 = getelementptr inbounds %struct.PStack, %struct.PStack* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i64 @test_and_clear_bit(i32 %43, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.PStack*, %struct.PStack** %7, align 8
  %51 = getelementptr inbounds %struct.PStack, %struct.PStack* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @FsmDelTimer(i32* %52, i32 3)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.PStack*, %struct.PStack** %7, align 8
  %56 = getelementptr inbounds %struct.PStack, %struct.PStack* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* @EV_TIMER_ACT, align 4
  %59 = call i32 @FsmRestartTimer(i32* %57, i32 110, i32 %58, i32* null, i32 2)
  %60 = load i32, i32* @FLG_L1_ACTTIMER, align 4
  %61 = load %struct.PStack*, %struct.PStack** %7, align 8
  %62 = getelementptr inbounds %struct.PStack, %struct.PStack* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @test_and_set_bit(i32 %60, i32* %63)
  br label %65

65:                                               ; preds = %54, %35
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
