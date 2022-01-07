; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_init_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32*, %struct.TYPE_4__*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QUEUE_STOPPED = common dso_local global i32 0, align 4
@bfin_spi_pump_transfers = common dso_local global i32 0, align 4
@bfin_spi_pump_messages = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @bfin_spi_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_spi_init_queue(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 7
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %8 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %7, i32 0, i32 6
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load i32, i32* @QUEUE_STOPPED, align 4
  %11 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %12 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %14 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 3
  %17 = load i32, i32* @bfin_spi_pump_transfers, align 4
  %18 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %19 = ptrtoint %struct.driver_data* %18 to i64
  %20 = call i32 @tasklet_init(i32* %16, i32 %17, i64 %19)
  %21 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %22 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %21, i32 0, i32 2
  %23 = load i32, i32* @bfin_spi_pump_messages, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %26 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_name(i32 %30)
  %32 = call i32* @create_singlethread_workqueue(i32 %31)
  %33 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %36 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
