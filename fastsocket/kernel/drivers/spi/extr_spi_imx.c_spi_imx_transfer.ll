; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.spi_imx_data = type { i32, i32, i32 (%struct.spi_imx_data*, i32)*, i64, i32, i32 }

@MXC_INT_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_imx_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.spi_imx_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.spi_imx_data* @spi_master_get_devdata(i32 %8)
  store %struct.spi_imx_data* %9, %struct.spi_imx_data** %5, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %14 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %19 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %24 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %26 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %28 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %27, i32 0, i32 1
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %31 = call i32 @spi_imx_push(%struct.spi_imx_data* %30)
  %32 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %33 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %32, i32 0, i32 2
  %34 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %33, align 8
  %35 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %36 = load i32, i32* @MXC_INT_TE, align 4
  %37 = call i32 %34(%struct.spi_imx_data* %35, i32 %36)
  %38 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %39 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %38, i32 0, i32 1
  %40 = call i32 @wait_for_completion(i32* %39)
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  ret i32 %43
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_imx_push(%struct.spi_imx_data*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
