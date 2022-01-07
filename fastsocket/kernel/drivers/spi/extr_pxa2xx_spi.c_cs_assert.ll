; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_cs_assert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_cs_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.chip_data* }
%struct.chip_data = type { i32, i32, i32 (i32)* }

@PXA2XX_CS_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @cs_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_assert(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.chip_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 0
  %6 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  store %struct.chip_data* %6, %struct.chip_data** %3, align 8
  %7 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %8 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %7, i32 0, i32 2
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %13 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %12, i32 0, i32 2
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load i32, i32* @PXA2XX_CS_ASSERT, align 4
  %16 = call i32 %14(i32 %15)
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %19 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @gpio_is_valid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %25 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %28 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gpio_set_value(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %11, %23, %17
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
