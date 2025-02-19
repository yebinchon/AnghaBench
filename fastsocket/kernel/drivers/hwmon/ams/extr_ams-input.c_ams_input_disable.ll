; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-input.c_ams_input_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-input.c_ams_input_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ams_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@joystick = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ams_input_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ams_input_disable() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 0), align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 0), align 8
  %5 = call i32 @input_unregister_polled_device(i32* %4)
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 0), align 8
  %7 = call i32 @input_free_polled_device(i32* %6)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 0), align 8
  br label %8

8:                                                ; preds = %3, %0
  store i64 0, i64* @joystick, align 8
  ret void
}

declare dso_local i32 @input_unregister_polled_device(i32*) #1

declare dso_local i32 @input_free_polled_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
