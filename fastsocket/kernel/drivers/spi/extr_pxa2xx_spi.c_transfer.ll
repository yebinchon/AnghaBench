; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32, i32, i32, i64 }
%struct.driver_data = type { i64, i32, i32, i32, i32, i32 }

@QUEUE_STOPPED = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@START_STATE = common dso_local global i32 0, align 4
@QUEUE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_message*)* @transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.driver_data* @spi_master_get_devdata(i32 %10)
  store %struct.driver_data* %11, %struct.driver_data** %6, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QUEUE_STOPPED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %23 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* @ESHUTDOWN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %30 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @EINPROGRESS, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %34 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @START_STATE, align 4
  %36 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %37 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %39 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %38, i32 0, i32 0
  %40 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %41 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %40, i32 0, i32 5
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %44 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QUEUE_RUNNING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %28
  %49 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %50 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %55 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %58 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %57, i32 0, i32 2
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %53, %48, %28
  %61 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %62 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %61, i32 0, i32 1
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.driver_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
