; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_ui.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, %struct.sk_buff*)* }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32 }

@DL_UNIT_DATA = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_got_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_got_ui(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load %struct.PStack*, %struct.PStack** %7, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = call i32 @l2headersize(%struct.TYPE_2__* %16, i32 1)
  %18 = call i32 @skb_pull(%struct.sk_buff* %14, i32 %17)
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.PStack.0*, i32, %struct.sk_buff*)*, i32 (%struct.PStack.0*, i32, %struct.sk_buff*)** %21, align 8
  %23 = load %struct.PStack*, %struct.PStack** %7, align 8
  %24 = bitcast %struct.PStack* %23 to %struct.PStack.0*
  %25 = load i32, i32* @DL_UNIT_DATA, align 4
  %26 = load i32, i32* @INDICATION, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call i32 %22(%struct.PStack.0* %24, i32 %27, %struct.sk_buff* %28)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2headersize(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
