; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.spi_device = type { i32, i64, %struct.omap2_mcspi_cs*, i32, i32 }
%struct.omap2_mcspi_cs = type { i32, i64, i64, i64 }
%struct.omap2_mcspi = type { %struct.TYPE_3__*, i64, i64, %struct.omap2_mcspi_dma* }
%struct.TYPE_3__ = type { i32 }
%struct.omap2_mcspi_dma = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"setup: unsupported %d bit words\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@omap2_mcspi_ctx = common dso_local global %struct.TYPE_4__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @omap2_mcspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcspi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap2_mcspi*, align 8
  %6 = alloca %struct.omap2_mcspi_dma*, align 8
  %7 = alloca %struct.omap2_mcspi_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %9, align 8
  store %struct.omap2_mcspi_cs* %10, %struct.omap2_mcspi_cs** %7, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 32
  br i1 %19, label %20, label %29

20:                                               ; preds = %15, %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 4
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %121

29:                                               ; preds = %15
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %32)
  store %struct.omap2_mcspi* %33, %struct.omap2_mcspi** %5, align 8
  %34 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %35 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %34, i32 0, i32 3
  %36 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %35, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %36, i64 %39
  store %struct.omap2_mcspi_dma* %40, %struct.omap2_mcspi_dma** %6, align 8
  %41 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  %42 = icmp ne %struct.omap2_mcspi_cs* %41, null
  br i1 %42, label %90, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.omap2_mcspi_cs* @kzalloc(i32 32, i32 %44)
  store %struct.omap2_mcspi_cs* %45, %struct.omap2_mcspi_cs** %7, align 8
  %46 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  %47 = icmp ne %struct.omap2_mcspi_cs* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %121

51:                                               ; preds = %43
  %52 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %53 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %57, 20
  %59 = add i64 %54, %58
  %60 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  %61 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %63 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = mul i64 %67, 20
  %69 = add i64 %64, %68
  %70 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  %71 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  %73 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 2
  store %struct.omap2_mcspi_cs* %74, %struct.omap2_mcspi_cs** %76, align 8
  %77 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  %78 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @omap2_mcspi_ctx, align 8
  %80 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %81 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @list_add_tail(i32* %78, i32* %88)
  br label %90

90:                                               ; preds = %51, %29
  %91 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %92 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %97 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %95, %90
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = call i32 @omap2_mcspi_request_dma(%struct.spi_device* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %121

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %110 = call i64 @omap2_mcspi_enable_clocks(%struct.omap2_mcspi* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %121

115:                                              ; preds = %108
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = call i32 @omap2_mcspi_setup_transfer(%struct.spi_device* %116, i32* null)
  store i32 %117, i32* %4, align 4
  %118 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %119 = call i32 @omap2_mcspi_disable_clocks(%struct.omap2_mcspi* %118)
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %115, %112, %105, %48, %20
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local %struct.omap2_mcspi_cs* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @omap2_mcspi_request_dma(%struct.spi_device*) #1

declare dso_local i64 @omap2_mcspi_enable_clocks(%struct.omap2_mcspi*) #1

declare dso_local i32 @omap2_mcspi_setup_transfer(%struct.spi_device*, i32*) #1

declare dso_local i32 @omap2_mcspi_disable_clocks(%struct.omap2_mcspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
