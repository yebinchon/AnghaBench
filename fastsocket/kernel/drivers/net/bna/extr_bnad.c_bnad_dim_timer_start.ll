; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_dim_timer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_dim_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32 }

@BNAD_CF_DIM_ENABLED = common dso_local global i32 0, align 4
@BNAD_RF_DIM_TIMER_RUNNING = common dso_local global i32 0, align 4
@bnad_dim_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BNAD_DIM_TIMER_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_dim_timer_start(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %3 = load %struct.bnad*, %struct.bnad** %2, align 8
  %4 = getelementptr inbounds %struct.bnad, %struct.bnad* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BNAD_CF_DIM_ENABLED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load i32, i32* @BNAD_RF_DIM_TIMER_RUNNING, align 4
  %11 = load %struct.bnad*, %struct.bnad** %2, align 8
  %12 = getelementptr inbounds %struct.bnad, %struct.bnad* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load %struct.bnad*, %struct.bnad** %2, align 8
  %17 = getelementptr inbounds %struct.bnad, %struct.bnad* %16, i32 0, i32 1
  %18 = load i32, i32* @bnad_dim_timeout, align 4
  %19 = load %struct.bnad*, %struct.bnad** %2, align 8
  %20 = ptrtoint %struct.bnad* %19 to i64
  %21 = call i32 @setup_timer(i32* %17, i32 %18, i64 %20)
  %22 = load i32, i32* @BNAD_RF_DIM_TIMER_RUNNING, align 4
  %23 = load %struct.bnad*, %struct.bnad** %2, align 8
  %24 = getelementptr inbounds %struct.bnad, %struct.bnad* %23, i32 0, i32 2
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.bnad*, %struct.bnad** %2, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 1
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @BNAD_DIM_TIMER_FREQ, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @mod_timer(i32* %27, i64 %31)
  br label %33

33:                                               ; preds = %15, %9, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
