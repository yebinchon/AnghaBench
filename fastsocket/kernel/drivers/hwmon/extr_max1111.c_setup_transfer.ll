; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1111.c_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1111.c_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1111_data = type { i32*, i32*, %struct.spi_transfer*, %struct.spi_message }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.spi_message = type { i32 }

@MAX1111_TX_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX1111_RX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max1111_data*)* @setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_transfer(%struct.max1111_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max1111_data*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  store %struct.max1111_data* %0, %struct.max1111_data** %3, align 8
  %6 = load i32, i32* @MAX1111_TX_BUF_SIZE, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kmalloc(i32 %6, i32 %7)
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %11 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %13 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load i32, i32* @MAX1111_RX_BUF_SIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i32 %20, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %25 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %27 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %19
  %31 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %32 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %19
  %38 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %39 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %38, i32 0, i32 3
  store %struct.spi_message* %39, %struct.spi_message** %4, align 8
  %40 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %41 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %40, i32 0, i32 2
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %41, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i64 0
  store %struct.spi_transfer* %43, %struct.spi_transfer** %5, align 8
  %44 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %45 = call i32 @spi_message_init(%struct.spi_message* %44)
  %46 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %47 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %55 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %56 = call i32 @spi_message_add_tail(%struct.spi_transfer* %54, %struct.spi_message* %55)
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 1
  store %struct.spi_transfer* %58, %struct.spi_transfer** %5, align 8
  %59 = load %struct.max1111_data*, %struct.max1111_data** %3, align 8
  %60 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %65, i32 0, i32 0
  store i32 2, i32* %66, align 8
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %68 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %69 = call i32 @spi_message_add_tail(%struct.spi_transfer* %67, %struct.spi_message* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %37, %30, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
