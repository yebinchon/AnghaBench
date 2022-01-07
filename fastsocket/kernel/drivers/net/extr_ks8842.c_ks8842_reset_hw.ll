; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8842.c_ks8842_reset_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8842.c_ks8842_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8842_adapter = type { i32 }

@REG_TXCR = common dso_local global i32 0, align 4
@REG_RXCR = common dso_local global i32 0, align 4
@REG_TXFDPR = common dso_local global i32 0, align 4
@REG_RXFDPR = common dso_local global i32 0, align 4
@REG_QRFCR = common dso_local global i32 0, align 4
@REG_SGCR1 = common dso_local global i32 0, align 4
@REG_SGCR2 = common dso_local global i32 0, align 4
@REG_P1CR2 = common dso_local global i32 0, align 4
@REG_P1CR4 = common dso_local global i32 0, align 4
@REG_ISR = common dso_local global i32 0, align 4
@ENABLED_IRQS = common dso_local global i32 0, align 4
@REG_IER = common dso_local global i32 0, align 4
@REG_SW_ID_AND_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8842_adapter*)* @ks8842_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8842_reset_hw(%struct.ks8842_adapter* %0) #0 {
  %2 = alloca %struct.ks8842_adapter*, align 8
  store %struct.ks8842_adapter* %0, %struct.ks8842_adapter** %2, align 8
  %3 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %4 = call i32 @ks8842_reset(%struct.ks8842_adapter* %3)
  %5 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %6 = load i32, i32* @REG_TXCR, align 4
  %7 = call i32 @ks8842_write16(%struct.ks8842_adapter* %5, i32 16, i32 14, i32 %6)
  %8 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %9 = load i32, i32* @REG_RXCR, align 4
  %10 = call i32 @ks8842_write16(%struct.ks8842_adapter* %8, i32 16, i32 1256, i32 %9)
  %11 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %12 = load i32, i32* @REG_TXFDPR, align 4
  %13 = call i32 @ks8842_write16(%struct.ks8842_adapter* %11, i32 17, i32 16384, i32 %12)
  %14 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %15 = load i32, i32* @REG_RXFDPR, align 4
  %16 = call i32 @ks8842_write16(%struct.ks8842_adapter* %14, i32 17, i32 16384, i32 %15)
  %17 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %18 = load i32, i32* @REG_QRFCR, align 4
  %19 = call i32 @ks8842_write16(%struct.ks8842_adapter* %17, i32 0, i32 4096, i32 %18)
  %20 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %21 = load i32, i32* @REG_SGCR1, align 4
  %22 = call i32 @ks8842_enable_bits(%struct.ks8842_adapter* %20, i32 32, i32 256, i32 %21)
  %23 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %24 = load i32, i32* @REG_SGCR2, align 4
  %25 = call i32 @ks8842_enable_bits(%struct.ks8842_adapter* %23, i32 32, i32 8, i32 %24)
  %26 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %27 = load i32, i32* @REG_P1CR2, align 4
  %28 = call i32 @ks8842_write16(%struct.ks8842_adapter* %26, i32 48, i32 7687, i32 %27)
  %29 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %30 = load i32, i32* @REG_P1CR4, align 4
  %31 = call i32 @ks8842_enable_bits(%struct.ks8842_adapter* %29, i32 49, i32 8192, i32 %30)
  %32 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %33 = load i32, i32* @REG_P1CR4, align 4
  %34 = call i32 @ks8842_clear_bits(%struct.ks8842_adapter* %32, i32 49, i32 12, i32 %33)
  %35 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %36 = call i32 @ks8842_enable_tx(%struct.ks8842_adapter* %35)
  %37 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %38 = call i32 @ks8842_enable_rx(%struct.ks8842_adapter* %37)
  %39 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %40 = load i32, i32* @REG_ISR, align 4
  %41 = call i32 @ks8842_write16(%struct.ks8842_adapter* %39, i32 18, i32 65535, i32 %40)
  %42 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %43 = load i32, i32* @ENABLED_IRQS, align 4
  %44 = load i32, i32* @REG_IER, align 4
  %45 = call i32 @ks8842_write16(%struct.ks8842_adapter* %42, i32 18, i32 %43, i32 %44)
  %46 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %47 = load i32, i32* @REG_SW_ID_AND_ENABLE, align 4
  %48 = call i32 @ks8842_write16(%struct.ks8842_adapter* %46, i32 32, i32 1, i32 %47)
  ret void
}

declare dso_local i32 @ks8842_reset(%struct.ks8842_adapter*) #1

declare dso_local i32 @ks8842_write16(%struct.ks8842_adapter*, i32, i32, i32) #1

declare dso_local i32 @ks8842_enable_bits(%struct.ks8842_adapter*, i32, i32, i32) #1

declare dso_local i32 @ks8842_clear_bits(%struct.ks8842_adapter*, i32, i32, i32) #1

declare dso_local i32 @ks8842_enable_tx(%struct.ks8842_adapter*) #1

declare dso_local i32 @ks8842_enable_rx(%struct.ks8842_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
