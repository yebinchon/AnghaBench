; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_start_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_start_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32, i32, i32, i32*, i32*, i32*, i64 }

@QUEUE_RUNNING = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @bfin_spi_start_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_spi_start_queue(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i64, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %5 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %6 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %5, i32 0, i32 3
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %10 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QUEUE_RUNNING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14, %1
  %20 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 3
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %14
  %27 = load i64, i64* @QUEUE_RUNNING, align 8
  %28 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %31 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %33 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %32, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %35 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 3
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %41 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %44 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %43, i32 0, i32 1
  %45 = call i32 @queue_work(i32 %42, i32* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %26, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
