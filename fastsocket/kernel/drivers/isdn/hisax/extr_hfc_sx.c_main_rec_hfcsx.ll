; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_main_rec_hfcsx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_main_rec_hfcsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i64, %struct.IsdnCardState* }
%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rec_data %d blocked\00", align 1
@HFCSX_SEL_B2_RX = common dso_local global i32 0, align 4
@HFCSX_SEL_B1_RX = common dso_local global i32 0, align 4
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@HFCSX_BTRANS_THRESHOLD = common dso_local global i32 0, align 4
@B_RCVBUFREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @main_rec_hfcsx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_rec_hfcsx(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %6 = load %struct.BCState*, %struct.BCState** %2, align 8
  %7 = getelementptr inbounds %struct.BCState, %struct.BCState* %6, i32 0, i32 3
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  store %struct.IsdnCardState* %8, %struct.IsdnCardState** %3, align 8
  store i32 5, i32* %4, align 4
  br label %9

9:                                                ; preds = %73, %1
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 0
  %15 = call i64 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %19 = load %struct.BCState*, %struct.BCState** %2, align 8
  %20 = getelementptr inbounds %struct.BCState, %struct.BCState* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @debugl1(%struct.IsdnCardState* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %75

23:                                               ; preds = %9
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %25 = load %struct.BCState*, %struct.BCState** %2, align 8
  %26 = getelementptr inbounds %struct.BCState, %struct.BCState* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @HFCSX_SEL_B2_RX, align 4
  br label %40

38:                                               ; preds = %29, %23
  %39 = load i32, i32* @HFCSX_SEL_B1_RX, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.BCState*, %struct.BCState** %2, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @L1_MODE_TRANS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @HFCSX_BTRANS_THRESHOLD, align 4
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call %struct.sk_buff* @read_fifo(%struct.IsdnCardState* %24, i32 %41, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.BCState*, %struct.BCState** %2, align 8
  %57 = getelementptr inbounds %struct.BCState, %struct.BCState* %56, i32 0, i32 1
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @skb_queue_tail(i32* %57, %struct.sk_buff* %58)
  %60 = load %struct.BCState*, %struct.BCState** %2, align 8
  %61 = load i32, i32* @B_RCVBUFREADY, align 4
  %62 = call i32 @schedule_event(%struct.BCState* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %50
  %64 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 0
  %67 = call i32 @test_and_clear_bit(i32 %64, i32* %66)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %9

74:                                               ; preds = %70, %63
  br label %75

75:                                               ; preds = %74, %17
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i64) #1

declare dso_local %struct.sk_buff* @read_fifo(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
