; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_cs_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_cs_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32 }
%struct.chip_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, %struct.chip_data*)* @bfin_spi_cs_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_spi_cs_active(%struct.driver_data* %0, %struct.chip_data* %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca %struct.chip_data*, align 8
  %5 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store %struct.chip_data* %1, %struct.chip_data** %4, align 8
  %6 = load %struct.chip_data*, %struct.chip_data** %4, align 8
  %7 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %13 = call i32 @read_FLAG(%struct.driver_data* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.chip_data*, %struct.chip_data** %4, align 8
  %15 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.chip_data*, %struct.chip_data** %4, align 8
  %20 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @write_FLAG(%struct.driver_data* %26, i32 %27)
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.chip_data*, %struct.chip_data** %4, align 8
  %31 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gpio_set_value(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %29, %11
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @read_FLAG(%struct.driver_data*) #1

declare dso_local i32 @write_FLAG(%struct.driver_data*, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
