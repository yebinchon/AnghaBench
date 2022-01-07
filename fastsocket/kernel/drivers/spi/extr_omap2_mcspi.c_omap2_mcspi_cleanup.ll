; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, %struct.omap2_mcspi_cs*, i32 }
%struct.omap2_mcspi_cs = type { i32 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @omap2_mcspi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_cleanup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.omap2_mcspi*, align 8
  %4 = alloca %struct.omap2_mcspi_dma*, align 8
  %5 = alloca %struct.omap2_mcspi_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %8)
  store %struct.omap2_mcspi* %9, %struct.omap2_mcspi** %3, align 8
  %10 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %11 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %10, i32 0, i32 0
  %12 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %11, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %12, i64 %15
  store %struct.omap2_mcspi_dma* %16, %struct.omap2_mcspi_dma** %4, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %18, align 8
  store %struct.omap2_mcspi_cs* %19, %struct.omap2_mcspi_cs** %5, align 8
  %20 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %21 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %24, align 8
  %26 = call i32 @kfree(%struct.omap2_mcspi_cs* %25)
  %27 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %28 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %33 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @omap_free_dma(i32 %34)
  %36 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %37 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %40 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %45 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @omap_free_dma(i32 %46)
  %48 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %49 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %38
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.omap2_mcspi_cs*) #1

declare dso_local i32 @omap_free_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
