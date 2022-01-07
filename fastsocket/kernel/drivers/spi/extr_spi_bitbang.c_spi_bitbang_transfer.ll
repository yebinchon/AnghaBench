; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bitbang.c_spi_bitbang_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bitbang.c_spi_bitbang_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_message = type { i32, i32, i64 }
%struct.spi_bitbang = type { i32, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_bitbang_transfer(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.spi_bitbang*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %9 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = sub nsw i32 0, %10
  %12 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %13 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.spi_bitbang* @spi_master_get_devdata(i32 %16)
  store %struct.spi_bitbang* %17, %struct.spi_bitbang** %5, align 8
  %18 = load %struct.spi_bitbang*, %struct.spi_bitbang** %5, align 8
  %19 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENETDOWN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %31 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %30, i32 0, i32 0
  %32 = load %struct.spi_bitbang*, %struct.spi_bitbang** %5, align 8
  %33 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %32, i32 0, i32 3
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.spi_bitbang*, %struct.spi_bitbang** %5, align 8
  %36 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.spi_bitbang*, %struct.spi_bitbang** %5, align 8
  %39 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %38, i32 0, i32 1
  %40 = call i32 @queue_work(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %29, %26
  %42 = load %struct.spi_bitbang*, %struct.spi_bitbang** %5, align 8
  %43 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.spi_bitbang* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
