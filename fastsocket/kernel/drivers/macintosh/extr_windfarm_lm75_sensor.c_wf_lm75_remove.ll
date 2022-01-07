; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wf_lm75_sensor = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"wf_lm75: i2c detatch called for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @wf_lm75_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_lm75_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.wf_lm75_sensor*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.wf_lm75_sensor* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.wf_lm75_sensor* %5, %struct.wf_lm75_sensor** %3, align 8
  %6 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %3, align 8
  %12 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %3, align 8
  %14 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %13, i32 0, i32 0
  %15 = call i32 @wf_unregister_sensor(%struct.TYPE_2__* %14)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, i32* null)
  ret i32 0
}

declare dso_local %struct.wf_lm75_sensor* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @wf_unregister_sensor(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
