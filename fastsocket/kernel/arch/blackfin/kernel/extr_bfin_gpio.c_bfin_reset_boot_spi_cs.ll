; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_gpio.c_bfin_reset_boot_spi_cs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_gpio.c_bfin_reset_boot_spi_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GPIO_USAGE = common dso_local global i32 0, align 4
@gpio_array = common dso_local global %struct.TYPE_2__** null, align 8
@data_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfin_reset_boot_spi_cs(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  %5 = call zeroext i16 @P_IDENT(i16 zeroext %4)
  store i16 %5, i16* %3, align 2
  %6 = load i16, i16* %3, align 2
  %7 = load i32, i32* @GPIO_USAGE, align 4
  %8 = call i32 @port_setup(i16 zeroext %6, i32 %7)
  %9 = load i16, i16* %3, align 2
  %10 = call i32 @gpio_bit(i16 zeroext %9)
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gpio_array, align 8
  %12 = load i16, i16* %3, align 2
  %13 = call i64 @gpio_bank(i16 zeroext %12)
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %10, i32* %16, align 4
  %17 = load i32, i32* @data_set, align 4
  %18 = call i32 @AWA_DUMMY_READ(i32 %17)
  %19 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local zeroext i16 @P_IDENT(i16 zeroext) #1

declare dso_local i32 @port_setup(i16 zeroext, i32) #1

declare dso_local i32 @gpio_bit(i16 zeroext) #1

declare dso_local i64 @gpio_bank(i16 zeroext) #1

declare dso_local i32 @AWA_DUMMY_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
