; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_bq27x00_battery.c_bq27x00_battery_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_bq27x00_battery.c_bq27x00_battery_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27x00_device_info = type { i32 }

@BQ27x00_REG_VOLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error reading voltage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27x00_device_info*)* @bq27x00_battery_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27x00_battery_voltage(%struct.bq27x00_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq27x00_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bq27x00_device_info* %0, %struct.bq27x00_device_info** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @BQ27x00_REG_VOLT, align 4
  %7 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %3, align 8
  %8 = call i32 @bq27x00_read(i32 %6, i32* %5, i32 0, %struct.bq27x00_device_info* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.bq27x00_device_info, %struct.bq27x00_device_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @bq27x00_read(i32, i32*, i32, %struct.bq27x00_device_info*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
