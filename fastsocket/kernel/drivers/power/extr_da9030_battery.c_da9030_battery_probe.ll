; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.da9030_battery_info* }
%struct.da9030_battery_info = type { i32, i32, i32, i32, i32, i64 }
%struct.da9030_charger = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9030_charging_monitor = common dso_local global i32 0, align 4
@da9030_battery_event = common dso_local global i32 0, align 4
@DA9030_EVENT_CHDET = common dso_local global i32 0, align 4
@DA9030_EVENT_VBATMON = common dso_local global i32 0, align 4
@DA9030_EVENT_CHIOVER = common dso_local global i32 0, align 4
@DA9030_EVENT_TBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9030_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9030_charger*, align 8
  %5 = alloca %struct.da9030_battery_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %9, align 8
  store %struct.da9030_battery_info* %10, %struct.da9030_battery_info** %5, align 8
  %11 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %12 = icmp eq %struct.da9030_battery_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %167

16:                                               ; preds = %1
  %17 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %18 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 1500
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %23 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 4000
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %28 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 4350
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21, %16
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %167

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.da9030_charger* @kzalloc(i32 44, i32 %35)
  store %struct.da9030_charger* %36, %struct.da9030_charger** %4, align 8
  %37 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %38 = icmp eq %struct.da9030_charger* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %167

42:                                               ; preds = %34
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %48 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %50 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %53
  %56 = phi i64 [ %51, %53 ], [ 10, %54 ]
  %57 = mul nsw i64 %56, 1000
  %58 = trunc i64 %57 to i32
  %59 = call i32 @msecs_to_jiffies(i32 %58)
  %60 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %61 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %63 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %66 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %68 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %71 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %73 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %76 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 4
  %77 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %78 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %81 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  %82 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %83 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %86 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %88 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %5, align 8
  %89 = call i32 @da9030_battery_convert_thresholds(%struct.da9030_charger* %87, %struct.da9030_battery_info* %88)
  %90 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %91 = call i32 @da9030_battery_charger_init(%struct.da9030_charger* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %55
  br label %163

95:                                               ; preds = %55
  %96 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %97 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %96, i32 0, i32 2
  %98 = load i32, i32* @da9030_charging_monitor, align 4
  %99 = call i32 @INIT_DELAYED_WORK(i32* %97, i32 %98)
  %100 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %101 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %100, i32 0, i32 2
  %102 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %103 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @schedule_delayed_work(i32* %101, i32 %104)
  %106 = load i32, i32* @da9030_battery_event, align 4
  %107 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %108 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %111 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %114 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %113, i32 0, i32 3
  %115 = load i32, i32* @DA9030_EVENT_CHDET, align 4
  %116 = load i32, i32* @DA9030_EVENT_VBATMON, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @DA9030_EVENT_CHIOVER, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @DA9030_EVENT_TBAT, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @da903x_register_notifier(i32 %112, %struct.TYPE_5__* %114, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %95
  br label %159

126:                                              ; preds = %95
  %127 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %128 = call i32 @da9030_battery_setup_psy(%struct.da9030_charger* %127)
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %132 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %131, i32 0, i32 6
  %133 = call i32 @power_supply_register(%struct.TYPE_4__* %130, i32* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %145

137:                                              ; preds = %126
  %138 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %139 = call i32 @da9030_bat_create_debugfs(%struct.da9030_charger* %138)
  %140 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %141 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.da9030_charger* %143)
  store i32 0, i32* %2, align 4
  br label %167

145:                                              ; preds = %136
  %146 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %147 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %150 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %149, i32 0, i32 3
  %151 = load i32, i32* @DA9030_EVENT_CHDET, align 4
  %152 = load i32, i32* @DA9030_EVENT_VBATMON, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @DA9030_EVENT_CHIOVER, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @DA9030_EVENT_TBAT, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @da903x_unregister_notifier(i32 %148, %struct.TYPE_5__* %150, i32 %157)
  br label %159

159:                                              ; preds = %145, %125
  %160 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %161 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %160, i32 0, i32 2
  %162 = call i32 @cancel_delayed_work(i32* %161)
  br label %163

163:                                              ; preds = %159, %94
  %164 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %165 = call i32 @kfree(%struct.da9030_charger* %164)
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %163, %137, %39, %31, %13
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.da9030_charger* @kzalloc(i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @da9030_battery_convert_thresholds(%struct.da9030_charger*, %struct.da9030_battery_info*) #1

declare dso_local i32 @da9030_battery_charger_init(%struct.da9030_charger*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @da903x_register_notifier(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @da9030_battery_setup_psy(%struct.da9030_charger*) #1

declare dso_local i32 @power_supply_register(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @da9030_bat_create_debugfs(%struct.da9030_charger*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9030_charger*) #1

declare dso_local i32 @da903x_unregister_notifier(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @kfree(%struct.da9030_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
