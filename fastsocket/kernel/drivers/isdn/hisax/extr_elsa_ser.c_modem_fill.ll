; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_modem_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_modem_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FLG_LLI_L1WAKEUP = common dso_local global i32 0, align 4
@PACKET_NOACK = common dso_local global i64 0, align 8
@B_ACKPENDING = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@B_XMTBUFREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @modem_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modem_fill(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %4 = load %struct.BCState*, %struct.BCState** %2, align 8
  %5 = getelementptr inbounds %struct.BCState, %struct.BCState* %4, i32 0, i32 3
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %8, label %66

8:                                                ; preds = %1
  %9 = load %struct.BCState*, %struct.BCState** %2, align 8
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 3
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.BCState*, %struct.BCState** %2, align 8
  %17 = call i32 @write_modem(%struct.BCState* %16)
  br label %92

18:                                               ; preds = %8
  %19 = load i32, i32* @FLG_LLI_L1WAKEUP, align 4
  %20 = load %struct.BCState*, %struct.BCState** %2, align 8
  %21 = getelementptr inbounds %struct.BCState, %struct.BCState* %20, i32 0, i32 6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %19, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %18
  %28 = load i64, i64* @PACKET_NOACK, align 8
  %29 = load %struct.BCState*, %struct.BCState** %2, align 8
  %30 = getelementptr inbounds %struct.BCState, %struct.BCState* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct.BCState*, %struct.BCState** %2, align 8
  %37 = getelementptr inbounds %struct.BCState, %struct.BCState* %36, i32 0, i32 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @spin_lock_irqsave(i32* %37, i32 %38)
  %40 = load %struct.BCState*, %struct.BCState** %2, align 8
  %41 = getelementptr inbounds %struct.BCState, %struct.BCState* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.BCState*, %struct.BCState** %2, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.BCState*, %struct.BCState** %2, align 8
  %52 = getelementptr inbounds %struct.BCState, %struct.BCState* %51, i32 0, i32 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i32 %53)
  %55 = load %struct.BCState*, %struct.BCState** %2, align 8
  %56 = load i32, i32* @B_ACKPENDING, align 4
  %57 = call i32 @schedule_event(%struct.BCState* %55, i32 %56)
  br label %58

58:                                               ; preds = %35, %27, %18
  %59 = load %struct.BCState*, %struct.BCState** %2, align 8
  %60 = getelementptr inbounds %struct.BCState, %struct.BCState* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = call i32 @dev_kfree_skb_any(%struct.TYPE_11__* %61)
  %63 = load %struct.BCState*, %struct.BCState** %2, align 8
  %64 = getelementptr inbounds %struct.BCState, %struct.BCState* %63, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %64, align 8
  br label %65

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %1
  %67 = load %struct.BCState*, %struct.BCState** %2, align 8
  %68 = getelementptr inbounds %struct.BCState, %struct.BCState* %67, i32 0, i32 2
  %69 = call %struct.TYPE_11__* @skb_dequeue(i32* %68)
  %70 = load %struct.BCState*, %struct.BCState** %2, align 8
  %71 = getelementptr inbounds %struct.BCState, %struct.BCState* %70, i32 0, i32 3
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %71, align 8
  %72 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.BCState*, %struct.BCState** %2, align 8
  %75 = getelementptr inbounds %struct.BCState, %struct.BCState* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @BC_FLG_BUSY, align 4
  %79 = load %struct.BCState*, %struct.BCState** %2, align 8
  %80 = getelementptr inbounds %struct.BCState, %struct.BCState* %79, i32 0, i32 0
  %81 = call i32 @test_and_set_bit(i32 %78, i32* %80)
  %82 = load %struct.BCState*, %struct.BCState** %2, align 8
  %83 = call i32 @write_modem(%struct.BCState* %82)
  br label %92

84:                                               ; preds = %66
  %85 = load i32, i32* @BC_FLG_BUSY, align 4
  %86 = load %struct.BCState*, %struct.BCState** %2, align 8
  %87 = getelementptr inbounds %struct.BCState, %struct.BCState* %86, i32 0, i32 0
  %88 = call i32 @test_and_clear_bit(i32 %85, i32* %87)
  %89 = load %struct.BCState*, %struct.BCState** %2, align 8
  %90 = load i32, i32* @B_XMTBUFREADY, align 4
  %91 = call i32 @schedule_event(%struct.BCState* %89, i32 %90)
  br label %92

92:                                               ; preds = %15, %84, %73
  ret void
}

declare dso_local i32 @write_modem(%struct.BCState*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @skb_dequeue(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
