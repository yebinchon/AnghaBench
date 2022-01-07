; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sht15.c_sht15_send_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sht15.c_sht15_send_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SHT15_TSU = common dso_local global i32 0, align 4
@SHT15_TSCKH = common dso_local global i32 0, align 4
@SHT15_TSCKL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sht15_data*, i32)* @sht15_send_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sht15_send_bit(%struct.sht15_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sht15_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %6 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @gpio_set_value(i32 %9, i32 %10)
  %12 = load i32, i32* @SHT15_TSU, align 4
  %13 = call i32 @ndelay(i32 %12)
  %14 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %15 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 1)
  %20 = load i32, i32* @SHT15_TSCKH, align 4
  %21 = call i32 @ndelay(i32 %20)
  %22 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %23 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpio_set_value(i32 %26, i32 0)
  %28 = load i32, i32* @SHT15_TSCKL, align 4
  %29 = call i32 @ndelay(i32 %28)
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
