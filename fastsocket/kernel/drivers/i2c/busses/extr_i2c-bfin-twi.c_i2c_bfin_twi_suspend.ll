; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_i2c_bfin_twi_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_i2c_bfin_twi_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bfin_twi_iface = type { i32, i32, i32 }

@TWI_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @i2c_bfin_twi_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_bfin_twi_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfin_twi_iface*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.bfin_twi_iface* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.bfin_twi_iface* %7, %struct.bfin_twi_iface** %5, align 8
  %8 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %9 = call i32 @read_CLKDIV(%struct.bfin_twi_iface* %8)
  %10 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %11 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %13 = call i32 @read_CONTROL(%struct.bfin_twi_iface* %12)
  %14 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %15 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %17 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.bfin_twi_iface* %19)
  %21 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %22 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %5, align 8
  %23 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TWI_ENA, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @write_CONTROL(%struct.bfin_twi_iface* %21, i32 %27)
  ret i32 0
}

declare dso_local %struct.bfin_twi_iface* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @read_CLKDIV(%struct.bfin_twi_iface*) #1

declare dso_local i32 @read_CONTROL(%struct.bfin_twi_iface*) #1

declare dso_local i32 @free_irq(i32, %struct.bfin_twi_iface*) #1

declare dso_local i32 @write_CONTROL(%struct.bfin_twi_iface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
