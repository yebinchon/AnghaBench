; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ucb1x00_ts = type { i32, i64 }

@UCB_IRQ_TSPX = common dso_local global i32 0, align 4
@UCB_TS_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @ucb1x00_ts_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1x00_ts_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.ucb1x00_ts*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.ucb1x00_ts* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.ucb1x00_ts* %5, %struct.ucb1x00_ts** %3, align 8
  %6 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %7 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %12 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @kthread_stop(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %17 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ucb1x00_enable(i32 %18)
  %20 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %21 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UCB_IRQ_TSPX, align 4
  %24 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %25 = call i32 @ucb1x00_free_irq(i32 %22, i32 %23, %struct.ucb1x00_ts* %24)
  %26 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %27 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UCB_TS_CR, align 4
  %30 = call i32 @ucb1x00_reg_write(i32 %28, i32 %29, i32 0)
  %31 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %32 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ucb1x00_disable(i32 %33)
  ret void
}

declare dso_local %struct.ucb1x00_ts* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @ucb1x00_enable(i32) #1

declare dso_local i32 @ucb1x00_free_irq(i32, i32, %struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_reg_write(i32, i32, i32) #1

declare dso_local i32 @ucb1x00_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
