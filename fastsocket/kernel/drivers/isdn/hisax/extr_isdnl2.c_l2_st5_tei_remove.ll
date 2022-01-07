; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st5_tei_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st5_tei_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ST_L2_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st5_tei_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st5_tei_remove(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %11 = load %struct.PStack*, %struct.PStack** %7, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @skb_queue_purge(i32* %13)
  %15 = load %struct.PStack*, %struct.PStack** %7, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @skb_queue_purge(i32* %17)
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = call i32 @freewin(%struct.PStack* %19)
  %21 = load %struct.PStack*, %struct.PStack** %7, align 8
  %22 = getelementptr inbounds %struct.PStack, %struct.PStack* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load %struct.PStack*, %struct.PStack** %7, align 8
  %25 = call i32 @stop_t200(%struct.PStack* %24, i32 17)
  %26 = load %struct.PStack*, %struct.PStack** %7, align 8
  %27 = call i32 @st5_dl_release_l2l3(%struct.PStack* %26)
  %28 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %29 = load i32, i32* @ST_L2_1, align 4
  %30 = call i32 @FsmChangeState(%struct.FsmInst* %28, i32 %29)
  ret void
}

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @freewin(%struct.PStack*) #1

declare dso_local i32 @stop_t200(%struct.PStack*, i32) #1

declare dso_local i32 @st5_dl_release_l2l3(%struct.PStack*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
