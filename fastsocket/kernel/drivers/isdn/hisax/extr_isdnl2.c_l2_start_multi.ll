; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_start_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_start_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32, i32, i64, i64, i64, i64 }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32 }

@UA = common dso_local global i32 0, align 4
@RSP = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@DL_ESTABLISH = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_start_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_start_multi(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.PStack*, %struct.PStack** %10, align 8
  store %struct.PStack* %11, %struct.PStack** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.PStack*, %struct.PStack** %7, align 8
  %15 = load i32, i32* @UA, align 4
  %16 = load %struct.PStack*, %struct.PStack** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i32 @get_PollFlagFree(%struct.PStack* %16, %struct.sk_buff* %17)
  %19 = or i32 %15, %18
  %20 = load i32, i32* @RSP, align 4
  %21 = call i32 @send_uframe(%struct.PStack* %14, i32 %19, i32 %20)
  %22 = load %struct.PStack*, %struct.PStack** %7, align 8
  %23 = getelementptr inbounds %struct.PStack, %struct.PStack* %22, i32 0, i32 0
  %24 = call i32 @clear_exception(%struct.TYPE_2__* %23)
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.PStack*, %struct.PStack** %7, align 8
  %32 = getelementptr inbounds %struct.PStack, %struct.PStack* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.PStack*, %struct.PStack** %7, align 8
  %35 = getelementptr inbounds %struct.PStack, %struct.PStack* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %38 = load i32, i32* @ST_L2_7, align 4
  %39 = call i32 @FsmChangeState(%struct.FsmInst* %37, i32 %38)
  %40 = load %struct.PStack*, %struct.PStack** %7, align 8
  %41 = getelementptr inbounds %struct.PStack, %struct.PStack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load %struct.PStack*, %struct.PStack** %7, align 8
  %44 = getelementptr inbounds %struct.PStack, %struct.PStack* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EV_L2_T203, align 4
  %48 = call i32 @FsmAddTimer(i32* %42, i32 %46, i32 %47, i32* null, i32 3)
  %49 = load %struct.PStack*, %struct.PStack** %7, align 8
  %50 = getelementptr inbounds %struct.PStack, %struct.PStack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %51, align 8
  %53 = load %struct.PStack*, %struct.PStack** %7, align 8
  %54 = bitcast %struct.PStack* %53 to %struct.PStack.0*
  %55 = load i32, i32* @DL_ESTABLISH, align 4
  %56 = load i32, i32* @INDICATION, align 4
  %57 = or i32 %55, %56
  %58 = call i32 %52(%struct.PStack.0* %54, i32 %57, i32* null)
  ret void
}

declare dso_local i32 @send_uframe(%struct.PStack*, i32, i32) #1

declare dso_local i32 @get_PollFlagFree(%struct.PStack*, %struct.sk_buff*) #1

declare dso_local i32 @clear_exception(%struct.TYPE_2__*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
