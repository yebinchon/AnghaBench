; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_dwait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_dwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32*, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@TXS_WAIT = common dso_local global i64 0, align 8
@TXS_IDLE = common dso_local global i64 0, align 8
@TXS_BUSY = common dso_local global i64 0, align 8
@KISS_DUPLEX_HALF = common dso_local global i64 0, align 8
@Rand = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@RTS = common dso_local global i32 0, align 4
@TX_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @t_dwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_dwait(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scc_channel*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.scc_channel*
  store %struct.scc_channel* %5, %struct.scc_channel** %3, align 8
  %6 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %7 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TXS_WAIT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %14 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %13, i32 0, i32 5
  %15 = call i64 @skb_queue_empty(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i64, i64* @TXS_IDLE, align 8
  %19 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %20 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %23 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netif_wake_queue(i32 %24)
  br label %96

26:                                               ; preds = %12
  %27 = load i64, i64* @TXS_BUSY, align 8
  %28 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %29 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @KISS_DUPLEX_HALF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %31
  %39 = load i32, i32* @Rand, align 4
  %40 = mul nsw i32 %39, 17
  %41 = add nsw i32 %40, 31
  store i32 %41, i32* @Rand, align 4
  %42 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %43 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %38
  %47 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %48 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @Rand, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  %54 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %55 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %61 = call i64 @is_grouped(%struct.scc_channel* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59, %46, %38
  %64 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %65 = call i32 @scc_start_defer(%struct.scc_channel* %64)
  %66 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %67 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %68 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @scc_start_tx_timer(%struct.scc_channel* %66, void (i64)* @t_dwait, i32 %70)
  br label %96

72:                                               ; preds = %59, %53
  br label %73

73:                                               ; preds = %72, %31
  %74 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %75 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @R5, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @RTS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %73
  %84 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %85 = load i32, i32* @TX_ON, align 4
  %86 = call i32 @scc_key_trx(%struct.scc_channel* %84, i32 %85)
  %87 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %88 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %89 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @scc_start_tx_timer(%struct.scc_channel* %87, void (i64)* @t_txdelay, i32 %91)
  br label %96

93:                                               ; preds = %73
  %94 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %95 = call i32 @scc_start_tx_timer(%struct.scc_channel* %94, void (i64)* @t_txdelay, i32 0)
  br label %96

96:                                               ; preds = %17, %63, %93, %83
  ret void
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i64 @is_grouped(%struct.scc_channel*) #1

declare dso_local i32 @scc_start_defer(%struct.scc_channel*) #1

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, void (i64)*, i32) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local void @t_txdelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
