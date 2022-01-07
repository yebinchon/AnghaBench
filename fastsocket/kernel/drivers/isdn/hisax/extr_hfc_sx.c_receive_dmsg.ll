; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_receive_dmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_receive_dmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 }
%struct.sk_buff = type { i32 }

@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rec_dmsg blocked\00", align 1
@HFCSX_SEL_D_RX = common dso_local global i32 0, align 4
@D_RCVBUFREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*)* @receive_dmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_dmsg(%struct.IsdnCardState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 5, i32* %5, align 4
  %6 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %13 = call i32 @debugl1(%struct.IsdnCardState* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %37, %14
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %17 = load i32, i32* @HFCSX_SEL_D_RX, align 4
  %18 = call %struct.sk_buff* @read_fifo(%struct.IsdnCardState* %16, i32 %17, i32 0)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @skb_queue_tail(i32* %23, %struct.sk_buff* %24)
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %27 = load i32, i32* @D_RCVBUFREADY, align 4
  %28 = call i32 @schedule_event(%struct.IsdnCardState* %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  br i1 %38, label %15, label %39

39:                                               ; preds = %37
  %40 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 0
  %43 = call i32 @test_and_clear_bit(i32 %40, i32* %42)
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local %struct.sk_buff* @read_fifo(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_event(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
