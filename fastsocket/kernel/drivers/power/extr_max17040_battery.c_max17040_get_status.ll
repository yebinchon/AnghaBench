; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_max17040_battery.c_max17040_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_max17040_battery.c_max17040_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max17040_chip = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (...)*, i64 (...)* }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@MAX17040_BATTERY_FULL = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @max17040_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17040_get_status(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.max17040_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.max17040_chip* %5, %struct.max17040_chip** %3, align 8
  %6 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %7 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64 (...)*, i64 (...)** %9, align 8
  %11 = icmp ne i64 (...)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %14 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (...)*, i64 (...)** %16, align 8
  %18 = icmp ne i64 (...)* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %21 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %22 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %62

23:                                               ; preds = %12
  %24 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %25 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64 (...)*, i64 (...)** %27, align 8
  %29 = call i64 (...) %28()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %33 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64 (...)*, i64 (...)** %35, align 8
  %37 = call i64 (...) %36()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %41 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %42 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %45 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %46 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %52

48:                                               ; preds = %23
  %49 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %50 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %51 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %54 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MAX17040_BATTERY_FULL, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %60 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %61 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %19, %58, %52
  ret void
}

declare dso_local %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
