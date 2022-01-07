; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cb_stats_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cb_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32 }
%struct.bna_stats = type { i32 }

@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@hw_stats_updates = common dso_local global i32 0, align 4
@BNAD_RF_STATS_TIMER_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BNAD_STATS_TIMER_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_cb_stats_get(%struct.bnad* %0, i32 %1, %struct.bna_stats* %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bna_stats*, align 8
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bna_stats* %2, %struct.bna_stats** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.bnad*, %struct.bnad** %4, align 8
  %12 = load i32, i32* @hw_stats_updates, align 4
  %13 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %struct.bnad*, %struct.bnad** %4, align 8
  %16 = getelementptr inbounds %struct.bnad, %struct.bnad* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_running(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @BNAD_RF_STATS_TIMER_RUNNING, align 4
  %22 = load %struct.bnad*, %struct.bnad** %4, align 8
  %23 = getelementptr inbounds %struct.bnad, %struct.bnad* %22, i32 0, i32 1
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %14
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.bnad*, %struct.bnad** %4, align 8
  %29 = getelementptr inbounds %struct.bnad, %struct.bnad* %28, i32 0, i32 0
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i32, i32* @BNAD_STATS_TIMER_FREQ, align 4
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @mod_timer(i32* %29, i64 %33)
  br label %35

35:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
