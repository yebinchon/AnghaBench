; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.wl1251 = type { i64, i32, i32, %struct.TYPE_2__*, %struct.wl1251_sdio* }
%struct.wl1251_sdio = type { %struct.sdio_func* }
%struct.ieee80211_hw = type { i32, i64, i32, %struct.wl1251* }
%struct.wl12xx_platform_data = type { i32, i64, i32, %struct.wl1251* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wl1251_sdio_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@wl1251_line_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wl1251\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"request_irq() failed: %d\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@wl1251_enable_line_irq = common dso_local global i32 0, align 4
@wl1251_disable_line_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"using dedicated interrupt line\00", align 1
@wl1251_sdio_enable_irq = common dso_local global i32 0, align 4
@wl1251_sdio_disable_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"using SDIO interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @wl1251_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1251*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.wl1251_sdio*, align 8
  %10 = alloca %struct.wl12xx_platform_data*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %11 = call %struct.wl12xx_platform_data* (...) @wl1251_alloc_hw()
  %12 = bitcast %struct.wl12xx_platform_data* %11 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %14 = bitcast %struct.ieee80211_hw* %13 to %struct.wl12xx_platform_data*
  %15 = call i64 @IS_ERR(%struct.wl12xx_platform_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %19 = bitcast %struct.ieee80211_hw* %18 to %struct.wl12xx_platform_data*
  %20 = call i32 @PTR_ERR(%struct.wl12xx_platform_data* %19)
  store i32 %20, i32* %3, align 4
  br label %153

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 3
  %24 = load %struct.wl1251*, %struct.wl1251** %23, align 8
  store %struct.wl1251* %24, %struct.wl1251** %7, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.wl1251_sdio* @kzalloc(i32 8, i32 %25)
  store %struct.wl1251_sdio* %26, %struct.wl1251_sdio** %9, align 8
  %27 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %28 = icmp eq %struct.wl1251_sdio* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %149

32:                                               ; preds = %21
  %33 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %34 = call i32 @sdio_claim_host(%struct.sdio_func* %33)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %36 = call i32 @sdio_enable_func(%struct.sdio_func* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %144

40:                                               ; preds = %32
  %41 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %42 = call i32 @sdio_set_block_size(%struct.sdio_func* %41, i32 512)
  %43 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %44 = call i32 @sdio_release_host(%struct.sdio_func* %43)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %46 = bitcast %struct.ieee80211_hw* %45 to %struct.wl12xx_platform_data*
  %47 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %48 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %47, i32 0, i32 0
  %49 = call i32 @SET_IEEE80211_DEV(%struct.wl12xx_platform_data* %46, i32* %48)
  %50 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %51 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %52 = getelementptr inbounds %struct.wl1251_sdio, %struct.wl1251_sdio* %51, i32 0, i32 0
  store %struct.sdio_func* %50, %struct.sdio_func** %52, align 8
  %53 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %54 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 4
  store %struct.wl1251_sdio* %53, %struct.wl1251_sdio** %55, align 8
  %56 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %57 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %56, i32 0, i32 3
  store %struct.TYPE_2__* @wl1251_sdio_ops, %struct.TYPE_2__** %57, align 8
  %58 = call %struct.wl12xx_platform_data* (...) @wl12xx_get_platform_data()
  store %struct.wl12xx_platform_data* %58, %struct.wl12xx_platform_data** %10, align 8
  %59 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %10, align 8
  %60 = call i64 @IS_ERR(%struct.wl12xx_platform_data* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %40
  %63 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %10, align 8
  %64 = getelementptr inbounds %struct.wl12xx_platform_data, %struct.wl12xx_platform_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %67 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %10, align 8
  %69 = getelementptr inbounds %struct.wl12xx_platform_data, %struct.wl12xx_platform_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %72 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %10, align 8
  %74 = getelementptr inbounds %struct.wl12xx_platform_data, %struct.wl12xx_platform_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %62, %40
  %79 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %80 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %78
  %84 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %85 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %88 = call i32 @irq_set_status_flags(i64 %86, i32 %87)
  %89 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %90 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @wl1251_line_irq, align 4
  %93 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %94 = call i32 @request_irq(i64 %91, i32 %92, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.wl1251* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @wl1251_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %139

100:                                              ; preds = %83
  %101 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %102 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %105 = call i32 @irq_set_irq_type(i64 %103, i32 %104)
  %106 = load i32, i32* @wl1251_enable_line_irq, align 4
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 1), align 4
  %107 = load i32, i32* @wl1251_disable_line_irq, align 4
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 0), align 4
  %108 = call i32 @wl1251_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %113

109:                                              ; preds = %78
  %110 = load i32, i32* @wl1251_sdio_enable_irq, align 4
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 1), align 4
  %111 = load i32, i32* @wl1251_sdio_disable_irq, align 4
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 0), align 4
  %112 = call i32 @wl1251_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %100
  %114 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %115 = call i32 @wl1251_init_ieee80211(%struct.wl1251* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %127

119:                                              ; preds = %113
  %120 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %121 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %122 = call i32 @sdio_set_drvdata(%struct.sdio_func* %120, %struct.wl1251* %121)
  %123 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %124 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %123, i32 0, i32 0
  %125 = call i32 @pm_runtime_put_noidle(i32* %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %153

127:                                              ; preds = %118
  %128 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %129 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %134 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %137 = call i32 @free_irq(i64 %135, %struct.wl1251* %136)
  br label %138

138:                                              ; preds = %132, %127
  br label %139

139:                                              ; preds = %138, %97
  %140 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %141 = call i32 @sdio_claim_host(%struct.sdio_func* %140)
  %142 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %143 = call i32 @sdio_disable_func(%struct.sdio_func* %142)
  br label %144

144:                                              ; preds = %139, %39
  %145 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %146 = call i32 @sdio_release_host(%struct.sdio_func* %145)
  %147 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %148 = call i32 @kfree(%struct.wl1251_sdio* %147)
  br label %149

149:                                              ; preds = %144, %29
  %150 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %151 = call i32 @wl1251_free_hw(%struct.wl1251* %150)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %119, %17
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.wl12xx_platform_data* @wl1251_alloc_hw(...) #1

declare dso_local i64 @IS_ERR(%struct.wl12xx_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.wl12xx_platform_data*) #1

declare dso_local %struct.wl1251_sdio* @kzalloc(i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.wl12xx_platform_data*, i32*) #1

declare dso_local %struct.wl12xx_platform_data* @wl12xx_get_platform_data(...) #1

declare dso_local i32 @irq_set_status_flags(i64, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.wl1251*) #1

declare dso_local i32 @wl1251_error(i8*, i32) #1

declare dso_local i32 @irq_set_irq_type(i64, i32) #1

declare dso_local i32 @wl1251_info(i8*) #1

declare dso_local i32 @wl1251_init_ieee80211(%struct.wl1251*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.wl1251*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.wl1251*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.wl1251_sdio*) #1

declare dso_local i32 @wl1251_free_hw(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
