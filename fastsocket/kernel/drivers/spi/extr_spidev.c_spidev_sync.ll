; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spidev_data = type { i32, i32* }
%struct.spi_message = type { i32, i32, i32*, i32 }

@done = common dso_local global i32 0, align 4
@spidev_complete = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spidev_data*, %struct.spi_message*)* @spidev_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spidev_sync(%struct.spidev_data* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spidev_data*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca i32, align 4
  store %struct.spidev_data* %0, %struct.spidev_data** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %6 = load i32, i32* @done, align 4
  %7 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %6)
  %8 = load i32, i32* @spidev_complete, align 4
  %9 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %10 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 2
  store i32* @done, i32** %12, align 8
  %13 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %14 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %17 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ESHUTDOWN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %25 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %28 = call i32 @spi_async(i32* %26, %struct.spi_message* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %31 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = call i32 @wait_for_completion(i32* @done)
  %37 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %38 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %44 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spi_async(i32*, %struct.spi_message*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
