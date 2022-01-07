; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_tei.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_tei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i64, %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ST_L2_3 = common dso_local global i64 0, align 8
@FLG_L3_INIT = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_got_tei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_got_tei(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 1
  %10 = load %struct.PStack*, %struct.PStack** %9, align 8
  store %struct.PStack* %10, %struct.PStack** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.PStack*, %struct.PStack** %7, align 8
  %14 = getelementptr inbounds %struct.PStack, %struct.PStack* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %17 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ST_L2_3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %23 = call i32 @establishlink(%struct.FsmInst* %22)
  %24 = load i32, i32* @FLG_L3_INIT, align 4
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = call i32 @test_and_set_bit(i32 %24, i32* %27)
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %31 = load i32, i32* @ST_L2_4, align 4
  %32 = call i32 @FsmChangeState(%struct.FsmInst* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.PStack*, %struct.PStack** %7, align 8
  %35 = getelementptr inbounds %struct.PStack, %struct.PStack* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @skb_queue_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.PStack*, %struct.PStack** %7, align 8
  %41 = call i32 @tx_ui(%struct.PStack* %40)
  br label %42

42:                                               ; preds = %39, %33
  ret void
}

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @tx_ui(%struct.PStack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
