; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_establishlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_establishlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@SABME = common dso_local global i32 0, align 4
@SABM = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@FLG_PEND_REL = common dso_local global i32 0, align 4
@ST_L2_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*)* @establishlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @establishlink(%struct.FsmInst* %0) #0 {
  %2 = alloca %struct.FsmInst*, align 8
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %2, align 8
  %5 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %6 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %5, i32 0, i32 0
  %7 = load %struct.PStack*, %struct.PStack** %6, align 8
  store %struct.PStack* %7, %struct.PStack** %3, align 8
  %8 = load %struct.PStack*, %struct.PStack** %3, align 8
  %9 = getelementptr inbounds %struct.PStack, %struct.PStack* %8, i32 0, i32 0
  %10 = call i32 @clear_exception(%struct.TYPE_2__* %9)
  %11 = load %struct.PStack*, %struct.PStack** %3, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @FLG_MOD128, align 4
  %15 = load %struct.PStack*, %struct.PStack** %3, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @SABME, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @SABM, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = or i32 %25, 16
  store i32 %26, i32* %4, align 4
  %27 = load %struct.PStack*, %struct.PStack** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CMD, align 4
  %30 = call i32 @send_uframe(%struct.PStack* %27, i32 %28, i32 %29)
  %31 = load %struct.PStack*, %struct.PStack** %3, align 8
  %32 = getelementptr inbounds %struct.PStack, %struct.PStack* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @FsmDelTimer(i32* %33, i32 1)
  %35 = load %struct.PStack*, %struct.PStack** %3, align 8
  %36 = call i32 @restart_t200(%struct.PStack* %35, i32 1)
  %37 = load i32, i32* @FLG_PEND_REL, align 4
  %38 = load %struct.PStack*, %struct.PStack** %3, align 8
  %39 = getelementptr inbounds %struct.PStack, %struct.PStack* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @test_and_clear_bit(i32 %37, i32* %40)
  %42 = load %struct.PStack*, %struct.PStack** %3, align 8
  %43 = call i32 @freewin(%struct.PStack* %42)
  %44 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %45 = load i32, i32* @ST_L2_5, align 4
  %46 = call i32 @FsmChangeState(%struct.FsmInst* %44, i32 %45)
  ret void
}

declare dso_local i32 @clear_exception(%struct.TYPE_2__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @send_uframe(%struct.PStack*, i32, i32) #1

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i32 @restart_t200(%struct.PStack*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @freewin(%struct.PStack*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
