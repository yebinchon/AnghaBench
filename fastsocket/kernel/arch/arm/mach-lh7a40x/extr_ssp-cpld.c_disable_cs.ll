; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-lh7a40x/extr_ssp-cpld.c_disable_cs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-lh7a40x/extr_ssp-cpld.c_disable_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ssp_configuration = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPLD_SPI_CS_EEPROM = common dso_local global i32 0, align 4
@CPLD_SPI = common dso_local global i32 0, align 4
@T_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disable_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_cs() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ssp_configuration, i32 0, i32 0), align 4
  switch i32 %1, label %7 [
    i32 128, label %2
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @CPLD_SPI_CS_EEPROM, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* @CPLD_SPI, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* @CPLD_SPI, align 4
  br label %7

7:                                                ; preds = %0, %2
  %8 = load i32, i32* @T_CS, align 4
  %9 = call i32 @udelay(i32 %8)
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
