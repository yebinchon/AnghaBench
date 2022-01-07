; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c___cb710_mmc_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c___cb710_mmc_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@CB710_MMC_IE_IRQ_ENABLE = common dso_local global i16 0, align 2
@CB710_MMC_IRQ_ENABLE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cb710_slot*, i16, i16)* @__cb710_mmc_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cb710_mmc_enable_irq(%struct.cb710_slot* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.cb710_slot*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.cb710_slot* %0, %struct.cb710_slot** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load i16, i16* @CB710_MMC_IE_IRQ_ENABLE, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16, i16* %6, align 2
  %10 = zext i16 %9 to i32
  %11 = or i32 %10, %8
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %6, align 2
  %13 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %14 = load i32, i32* @CB710_MMC_IRQ_ENABLE_PORT, align 4
  %15 = call zeroext i16 @cb710_read_port_16(%struct.cb710_slot* %13, i32 %14)
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %5, align 2
  %25 = load i16, i16* %5, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i16, i16* @CB710_MMC_IE_IRQ_ENABLE, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %5, align 2
  br label %34

34:                                               ; preds = %27, %3
  %35 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %36 = load i32, i32* @CB710_MMC_IRQ_ENABLE_PORT, align 4
  %37 = load i16, i16* %5, align 2
  %38 = call i32 @cb710_write_port_16(%struct.cb710_slot* %35, i32 %36, i16 zeroext %37)
  ret void
}

declare dso_local zeroext i16 @cb710_read_port_16(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_write_port_16(%struct.cb710_slot*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
