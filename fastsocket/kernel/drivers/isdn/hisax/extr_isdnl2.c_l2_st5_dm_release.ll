; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st5_dm_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st5_dm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32, i32 }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32 }

@FLG_L3_INIT = common dso_local global i32 0, align 4
@FLG_LAPB = common dso_local global i32 0, align 4
@PH_DEACTIVATE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st5_dm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st5_dm_release(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i64 @get_PollFlagFree(%struct.PStack* %14, %struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = call i32 @stop_t200(%struct.PStack* %19, i32 7)
  %21 = load i32, i32* @FLG_L3_INIT, align 4
  %22 = load %struct.PStack*, %struct.PStack** %7, align 8
  %23 = getelementptr inbounds %struct.PStack, %struct.PStack* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = call i32 @skb_queue_purge(i32* %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load i32, i32* @FLG_LAPB, align 4
  %34 = load %struct.PStack*, %struct.PStack** %7, align 8
  %35 = getelementptr inbounds %struct.PStack, %struct.PStack* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i64 @test_bit(i32 %33, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.PStack*, %struct.PStack** %7, align 8
  %41 = getelementptr inbounds %struct.PStack, %struct.PStack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %42, align 8
  %44 = load %struct.PStack*, %struct.PStack** %7, align 8
  %45 = bitcast %struct.PStack* %44 to %struct.PStack.0*
  %46 = load i32, i32* @PH_DEACTIVATE, align 4
  %47 = load i32, i32* @REQUEST, align 4
  %48 = or i32 %46, %47
  %49 = call i32 %43(%struct.PStack.0* %45, i32 %48, i32* null)
  br label %50

50:                                               ; preds = %39, %32
  %51 = load %struct.PStack*, %struct.PStack** %7, align 8
  %52 = call i32 @st5_dl_release_l2l3(%struct.PStack* %51)
  %53 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %54 = load i32, i32* @ST_L2_4, align 4
  %55 = call i32 @FsmChangeState(%struct.FsmInst* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %3
  ret void
}

declare dso_local i64 @get_PollFlagFree(%struct.PStack*, %struct.sk_buff*) #1

declare dso_local i32 @stop_t200(%struct.PStack*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @st5_dl_release_l2l3(%struct.PStack*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
