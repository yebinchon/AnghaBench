; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_connected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 (%struct.PStack.0*, i32, %struct.sk_buff*)*, i32, i32 }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32 }

@ST_L3_LC_ESTAB = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lc_connected: release link\00", align 1
@EV_RELEASE_REQ = common dso_local global i32 0, align 4
@DL_ESTABLISH = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lc_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lc_connected(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.PStack*, %struct.PStack** %11, align 8
  store %struct.PStack* %12, %struct.PStack** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.PStack*, %struct.PStack** %7, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = call i32 @FsmDelTimer(i32* %17, i32 51)
  %19 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %20 = load i32, i32* @ST_L3_LC_ESTAB, align 4
  %21 = call i32 @FsmChangeState(%struct.FsmInst* %19, i32 %20)
  br label %22

22:                                               ; preds = %28, %3
  %23 = load %struct.PStack*, %struct.PStack** %7, align 8
  %24 = getelementptr inbounds %struct.PStack, %struct.PStack* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = call %struct.sk_buff* @skb_dequeue(i32* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %8, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.PStack*, %struct.PStack** %7, align 8
  %30 = getelementptr inbounds %struct.PStack, %struct.PStack* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32 (%struct.PStack.0*, i32, %struct.sk_buff*)*, i32 (%struct.PStack.0*, i32, %struct.sk_buff*)** %31, align 8
  %33 = load %struct.PStack*, %struct.PStack** %7, align 8
  %34 = bitcast %struct.PStack* %33 to %struct.PStack.0*
  %35 = load i32, i32* @DL_DATA, align 4
  %36 = load i32, i32* @REQUEST, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 %32(%struct.PStack.0* %34, i32 %37, %struct.sk_buff* %38)
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load %struct.PStack*, %struct.PStack** %7, align 8
  %44 = getelementptr inbounds %struct.PStack, %struct.PStack* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load %struct.PStack*, %struct.PStack** %7, align 8
  %53 = getelementptr inbounds %struct.PStack, %struct.PStack* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.PStack*, %struct.PStack** %7, align 8
  %59 = call i32 @l3_debug(%struct.PStack* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.PStack*, %struct.PStack** %7, align 8
  %62 = getelementptr inbounds %struct.PStack, %struct.PStack* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* @EV_RELEASE_REQ, align 4
  %65 = call i32 @FsmEvent(i32* %63, i32 %64, i32* null)
  br label %72

66:                                               ; preds = %48, %42
  %67 = load %struct.PStack*, %struct.PStack** %7, align 8
  %68 = load i32, i32* @DL_ESTABLISH, align 4
  %69 = load i32, i32* @CONFIRM, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @l3ml3p(%struct.PStack* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %60
  ret void
}

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*) #1

declare dso_local i32 @FsmEvent(i32*, i32, i32*) #1

declare dso_local i32 @l3ml3p(%struct.PStack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
