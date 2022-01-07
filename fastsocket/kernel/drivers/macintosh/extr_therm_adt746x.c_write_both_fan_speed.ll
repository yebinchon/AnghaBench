; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_adt746x.c_write_both_fan_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_adt746x.c_write_both_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermostat = type { i32 }

@therm_type = common dso_local global i64 0, align 8
@ADT7460 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermostat*, i32)* @write_both_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_both_fan_speed(%struct.thermostat* %0, i32 %1) #0 {
  %3 = alloca %struct.thermostat*, align 8
  %4 = alloca i32, align 4
  store %struct.thermostat* %0, %struct.thermostat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.thermostat*, %struct.thermostat** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @write_fan_speed(%struct.thermostat* %5, i32 %6, i32 0)
  %8 = load i64, i64* @therm_type, align 8
  %9 = load i64, i64* @ADT7460, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.thermostat*, %struct.thermostat** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @write_fan_speed(%struct.thermostat* %12, i32 %13, i32 1)
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @write_fan_speed(%struct.thermostat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
