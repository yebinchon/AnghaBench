; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_dim_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_dim_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, i32, %struct.bnad_rx_info*, i32 }
%struct.bnad_rx_info = type { %struct.bnad_rx_ctrl*, i32 }
%struct.bnad_rx_ctrl = type { i32 }

@BNAD_RF_DIM_TIMER_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BNAD_DIM_TIMER_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bnad_dim_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_dim_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bnad_rx_info*, align 8
  %5 = alloca %struct.bnad_rx_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.bnad*
  store %struct.bnad* %10, %struct.bnad** %3, align 8
  %11 = load %struct.bnad*, %struct.bnad** %3, align 8
  %12 = getelementptr inbounds %struct.bnad, %struct.bnad* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @netif_carrier_ok(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %90

17:                                               ; preds = %1
  %18 = load %struct.bnad*, %struct.bnad** %3, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 2
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %68, %17
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.bnad*, %struct.bnad** %3, align 8
  %25 = getelementptr inbounds %struct.bnad, %struct.bnad* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %22
  %29 = load %struct.bnad*, %struct.bnad** %3, align 8
  %30 = getelementptr inbounds %struct.bnad, %struct.bnad* %29, i32 0, i32 5
  %31 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %31, i64 %33
  store %struct.bnad_rx_info* %34, %struct.bnad_rx_info** %4, align 8
  %35 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %4, align 8
  %36 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %68

40:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.bnad*, %struct.bnad** %3, align 8
  %44 = getelementptr inbounds %struct.bnad, %struct.bnad* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %4, align 8
  %49 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %48, i32 0, i32 0
  %50 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %50, i64 %52
  store %struct.bnad_rx_ctrl* %53, %struct.bnad_rx_ctrl** %5, align 8
  %54 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %5, align 8
  %55 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %5, align 8
  %61 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bna_rx_dim_update(i32 %62)
  br label %64

64:                                               ; preds = %59, %58
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %41

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %22

71:                                               ; preds = %22
  %72 = load i32, i32* @BNAD_RF_DIM_TIMER_RUNNING, align 4
  %73 = load %struct.bnad*, %struct.bnad** %3, align 8
  %74 = getelementptr inbounds %struct.bnad, %struct.bnad* %73, i32 0, i32 4
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.bnad*, %struct.bnad** %3, align 8
  %79 = getelementptr inbounds %struct.bnad, %struct.bnad* %78, i32 0, i32 3
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i32, i32* @BNAD_DIM_TIMER_FREQ, align 4
  %82 = call i64 @msecs_to_jiffies(i32 %81)
  %83 = add nsw i64 %80, %82
  %84 = call i32 @mod_timer(i32* %79, i64 %83)
  br label %85

85:                                               ; preds = %77, %71
  %86 = load %struct.bnad*, %struct.bnad** %3, align 8
  %87 = getelementptr inbounds %struct.bnad, %struct.bnad* %86, i32 0, i32 2
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %16
  ret void
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_rx_dim_update(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
