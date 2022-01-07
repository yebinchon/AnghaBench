; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54spi.c_p54spi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54spi.c_p54spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.p54s_priv = type { %struct.ieee80211_hw*, %struct.spi_device*, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.p54s_priv* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not alloc ieee80211_hw\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"spi_setup failed\00", align 1
@p54spi_gpio_power = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"p54spi power\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"power GPIO request failed: %d\00", align 1
@p54spi_gpio_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"p54spi irq\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"irq GPIO request failed: %d\00", align 1
@p54spi_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"p54spi\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"request_irq() failed\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@p54spi_work = common dso_local global i32 0, align 4
@p54spi_op_start = common dso_local global i32 0, align 4
@p54spi_op_stop = common dso_local global i32 0, align 4
@p54spi_op_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @p54spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.p54s_priv*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.p54s_priv* null, %struct.p54s_priv** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call %struct.ieee80211_hw* @p54_init_common(i32 48)
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = icmp ne %struct.ieee80211_hw* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 2
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %169

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.p54s_priv*, %struct.p54s_priv** %20, align 8
  store %struct.p54s_priv* %21, %struct.p54s_priv** %4, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %24 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %23, i32 0, i32 0
  store %struct.ieee80211_hw* %22, %struct.ieee80211_hw** %24, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %27 = call i32 @spi_set_drvdata(%struct.spi_device* %25, %struct.p54s_priv* %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %30 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %29, i32 0, i32 1
  store %struct.spi_device* %28, %struct.spi_device** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  store i32 16, i32* %32, align 4
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 1
  store i32 24000000, i32* %34, align 4
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = call i32 @spi_setup(%struct.spi_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %18
  %40 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %41 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %40, i32 0, i32 1
  %42 = load %struct.spi_device*, %struct.spi_device** %41, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 2
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %163

45:                                               ; preds = %18
  %46 = load i32, i32* @p54spi_gpio_power, align 4
  %47 = call i32 @gpio_request(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %52 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %51, i32 0, i32 1
  %53 = load %struct.spi_device*, %struct.spi_device** %52, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 2
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %163

57:                                               ; preds = %45
  %58 = load i32, i32* @p54spi_gpio_irq, align 4
  %59 = call i32 @gpio_request(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %64 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %63, i32 0, i32 1
  %65 = load %struct.spi_device*, %struct.spi_device** %64, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 2
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %160

69:                                               ; preds = %57
  %70 = load i32, i32* @p54spi_gpio_power, align 4
  %71 = call i32 @gpio_direction_output(i32 %70, i32 0)
  %72 = load i32, i32* @p54spi_gpio_irq, align 4
  %73 = call i32 @gpio_direction_input(i32 %72)
  %74 = load i32, i32* @p54spi_gpio_irq, align 4
  %75 = call i32 @gpio_to_irq(i32 %74)
  %76 = load i32, i32* @p54spi_interrupt, align 4
  %77 = load i32, i32* @IRQF_DISABLED, align 4
  %78 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %79 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %78, i32 0, i32 1
  %80 = load %struct.spi_device*, %struct.spi_device** %79, align 8
  %81 = call i32 @request_irq(i32 %75, i32 %76, i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.spi_device* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %69
  %85 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %86 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %85, i32 0, i32 1
  %87 = load %struct.spi_device*, %struct.spi_device** %86, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 2
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %157

90:                                               ; preds = %69
  %91 = load i32, i32* @p54spi_gpio_irq, align 4
  %92 = call i32 @gpio_to_irq(i32 %91)
  %93 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %94 = call i32 @irq_set_irq_type(i32 %92, i32 %93)
  %95 = load i32, i32* @p54spi_gpio_irq, align 4
  %96 = call i32 @gpio_to_irq(i32 %95)
  %97 = call i32 @disable_irq(i32 %96)
  %98 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %99 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %98, i32 0, i32 7
  %100 = load i32, i32* @p54spi_work, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %103 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %102, i32 0, i32 6
  %104 = call i32 @init_completion(i32* %103)
  %105 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %106 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %105, i32 0, i32 5
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %109 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %108, i32 0, i32 4
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %112 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %111, i32 0, i32 3
  %113 = call i32 @spin_lock_init(i32* %112)
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %115 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %116 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %115, i32 0, i32 2
  %117 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %114, i32* %116)
  %118 = load i32, i32* @p54spi_op_start, align 4
  %119 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %120 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* @p54spi_op_stop, align 4
  %123 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %124 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @p54spi_op_tx, align 4
  %127 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %128 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %131 = call i32 @p54spi_request_firmware(%struct.ieee80211_hw* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %90
  br label %152

135:                                              ; preds = %90
  %136 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %137 = call i32 @p54spi_request_eeprom(%struct.ieee80211_hw* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %152

141:                                              ; preds = %135
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %143 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %144 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %143, i32 0, i32 1
  %145 = load %struct.spi_device*, %struct.spi_device** %144, align 8
  %146 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %145, i32 0, i32 2
  %147 = call i32 @p54_register_common(%struct.ieee80211_hw* %142, i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %152

151:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %169

152:                                              ; preds = %150, %140, %134
  %153 = load i32, i32* @p54spi_gpio_irq, align 4
  %154 = call i32 @gpio_to_irq(i32 %153)
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = call i32 @free_irq(i32 %154, %struct.spi_device* %155)
  br label %157

157:                                              ; preds = %152, %84
  %158 = load i32, i32* @p54spi_gpio_irq, align 4
  %159 = call i32 @gpio_free(i32 %158)
  br label %160

160:                                              ; preds = %157, %62
  %161 = load i32, i32* @p54spi_gpio_power, align 4
  %162 = call i32 @gpio_free(i32 %161)
  br label %163

163:                                              ; preds = %160, %50, %39
  %164 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %165 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %164, i32 0, i32 0
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %165, align 8
  %167 = call i32 @p54_free_common(%struct.ieee80211_hw* %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %163, %151, %12
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.ieee80211_hw* @p54_init_common(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.p54s_priv*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.spi_device*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @p54spi_request_firmware(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54spi_request_eeprom(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54_register_common(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.spi_device*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @p54_free_common(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
