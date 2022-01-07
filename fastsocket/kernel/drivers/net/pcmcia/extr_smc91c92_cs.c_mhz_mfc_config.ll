; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mhz_mfc_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mhz_mfc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.net_device* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { i32 }
%struct.smc_private = type { i64, i64, i32 }
%struct.smc_cfg_mem = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CCSR_AUDIO_ENA = common dso_local global i32 0, align 4
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@IRQ_FIRST_SHARED = common dso_local global i32 0, align 4
@IRQ_HANDLE_PRESENT = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@mhz_mfc_config_check = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_8 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_AM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@MANFID_MOTOROLA = common dso_local global i64 0, align 8
@MANFID_MEGAHERTZ = common dso_local global i64 0, align 8
@PRODID_MEGAHERTZ_EM3288 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mhz_mfc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mhz_mfc_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_private*, align 8
  %6 = alloca %struct.smc_cfg_mem*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 4
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.smc_private* @netdev_priv(%struct.net_device* %13)
  store %struct.smc_private* %14, %struct.smc_private** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.smc_cfg_mem* @kmalloc(i32 4, i32 %15)
  store %struct.smc_cfg_mem* %16, %struct.smc_cfg_mem** %6, align 8
  %17 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %6, align 8
  %18 = icmp ne %struct.smc_cfg_mem* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %127

22:                                               ; preds = %1
  %23 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @CCSR_AUDIO_ENA, align 4
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %34 = load i32, i32* @IRQ_FIRST_SHARED, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IRQ_HANDLE_PRESENT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 16, i32* %43, align 8
  %44 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 8, i32* %50, align 4
  %51 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %52 = load i32, i32* @mhz_mfc_config_check, align 4
  %53 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %51, i32 %52, i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %22
  br label %122

56:                                               ; preds = %22
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @WIN_DATA_WIDTH_8, align 4
  %64 = load i32, i32* @WIN_MEMORY_TYPE_AM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WIN_ENABLE, align 4
  %67 = or i32 %65, %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %73 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %72, i32 0, i32 0
  %74 = call i32 @pcmcia_request_window(%struct.pcmcia_device** %3, %struct.TYPE_11__* %7, i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %56
  br label %122

78:                                               ; preds = %56
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ioremap(i64 %80, i64 %82)
  %84 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %85 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %89 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MANFID_MOTOROLA, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %78
  %94 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %95 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %78
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %101 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pcmcia_map_mem_page(i32 %102, %struct.TYPE_12__* %8)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %108 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MANFID_MEGAHERTZ, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %114 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PRODID_MEGAHERTZ_EM3288, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %120 = call i32 @mhz_3288_power(%struct.pcmcia_device* %119)
  br label %121

121:                                              ; preds = %118, %112, %106, %99
  br label %122

122:                                              ; preds = %121, %77, %55
  %123 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %6, align 8
  %124 = call i32 @kfree(%struct.smc_cfg_mem* %123)
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %19
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.smc_cfg_mem* @kmalloc(i32, i32) #1

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device**, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @pcmcia_map_mem_page(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @mhz_3288_power(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.smc_cfg_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
