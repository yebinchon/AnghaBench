; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__*, i32, i64, %struct.IsdnCardState* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.IsdnCardState = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HFCSX_SEL_B2_TX = common dso_local global i32 0, align 4
@HFCSX_SEL_B1_TX = common dso_local global i32 0, align 4
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@HFCSX_BTRANS_THRESHOLD = common dso_local global i32 0, align 4
@FLG_LLI_L1WAKEUP = common dso_local global i32 0, align 4
@PACKET_NOACK = common dso_local global i64 0, align 8
@B_ACKPENDING = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @hfcsx_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcsx_fill_fifo(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %5 = load %struct.BCState*, %struct.BCState** %2, align 8
  %6 = getelementptr inbounds %struct.BCState, %struct.BCState* %5, i32 0, i32 8
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  store %struct.IsdnCardState* %7, %struct.IsdnCardState** %3, align 8
  %8 = load %struct.BCState*, %struct.BCState** %2, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i32 0, i32 2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %117

13:                                               ; preds = %1
  %14 = load %struct.BCState*, %struct.BCState** %2, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %117

21:                                               ; preds = %13
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = load %struct.BCState*, %struct.BCState** %2, align 8
  %24 = getelementptr inbounds %struct.BCState, %struct.BCState* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load %struct.BCState*, %struct.BCState** %2, align 8
  %27 = getelementptr inbounds %struct.BCState, %struct.BCState* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @HFCSX_SEL_B2_TX, align 4
  br label %41

39:                                               ; preds = %30, %21
  %40 = load i32, i32* @HFCSX_SEL_B1_TX, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.BCState*, %struct.BCState** %2, align 8
  %44 = getelementptr inbounds %struct.BCState, %struct.BCState* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @L1_MODE_TRANS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @HFCSX_BTRANS_THRESHOLD, align 4
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = call i64 @write_fifo(%struct.IsdnCardState* %22, %struct.TYPE_11__* %25, i32 %42, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %117

55:                                               ; preds = %51
  %56 = load %struct.BCState*, %struct.BCState** %2, align 8
  %57 = getelementptr inbounds %struct.BCState, %struct.BCState* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.BCState*, %struct.BCState** %2, align 8
  %62 = getelementptr inbounds %struct.BCState, %struct.BCState* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load i32, i32* @FLG_LLI_L1WAKEUP, align 4
  %68 = load %struct.BCState*, %struct.BCState** %2, align 8
  %69 = getelementptr inbounds %struct.BCState, %struct.BCState* %68, i32 0, i32 5
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = call i64 @test_bit(i32 %67, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %55
  %76 = load i64, i64* @PACKET_NOACK, align 8
  %77 = load %struct.BCState*, %struct.BCState** %2, align 8
  %78 = getelementptr inbounds %struct.BCState, %struct.BCState* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %75
  %84 = load %struct.BCState*, %struct.BCState** %2, align 8
  %85 = getelementptr inbounds %struct.BCState, %struct.BCState* %84, i32 0, i32 3
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @spin_lock_irqsave(i32* %85, i32 %86)
  %88 = load %struct.BCState*, %struct.BCState** %2, align 8
  %89 = getelementptr inbounds %struct.BCState, %struct.BCState* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.BCState*, %struct.BCState** %2, align 8
  %94 = getelementptr inbounds %struct.BCState, %struct.BCState* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.BCState*, %struct.BCState** %2, align 8
  %100 = getelementptr inbounds %struct.BCState, %struct.BCState* %99, i32 0, i32 3
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i32 %101)
  %103 = load %struct.BCState*, %struct.BCState** %2, align 8
  %104 = load i32, i32* @B_ACKPENDING, align 4
  %105 = call i32 @schedule_event(%struct.BCState* %103, i32 %104)
  br label %106

106:                                              ; preds = %83, %75, %55
  %107 = load %struct.BCState*, %struct.BCState** %2, align 8
  %108 = getelementptr inbounds %struct.BCState, %struct.BCState* %107, i32 0, i32 2
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = call i32 @dev_kfree_skb_any(%struct.TYPE_11__* %109)
  %111 = load %struct.BCState*, %struct.BCState** %2, align 8
  %112 = getelementptr inbounds %struct.BCState, %struct.BCState* %111, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %112, align 8
  %113 = load i32, i32* @BC_FLG_BUSY, align 4
  %114 = load %struct.BCState*, %struct.BCState** %2, align 8
  %115 = getelementptr inbounds %struct.BCState, %struct.BCState* %114, i32 0, i32 1
  %116 = call i32 @test_and_clear_bit(i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %12, %20, %106, %51
  ret void
}

declare dso_local i64 @write_fifo(%struct.IsdnCardState*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_11__*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
