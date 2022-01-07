; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_max17040_battery.c_max17040_get_vcell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_max17040_battery.c_max17040_get_vcell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max17040_chip = type { i32 }

@MAX17040_VCELL_MSB = common dso_local global i32 0, align 4
@MAX17040_VCELL_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @max17040_get_vcell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17040_get_vcell(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.max17040_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.max17040_chip* %7, %struct.max17040_chip** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = load i32, i32* @MAX17040_VCELL_MSB, align 4
  %10 = call i32 @max17040_read_reg(%struct.i2c_client* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = load i32, i32* @MAX17040_VCELL_LSB, align 4
  %13 = call i32 @max17040_read_reg(%struct.i2c_client* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 4
  %18 = add nsw i32 %15, %17
  %19 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %20 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @max17040_read_reg(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
