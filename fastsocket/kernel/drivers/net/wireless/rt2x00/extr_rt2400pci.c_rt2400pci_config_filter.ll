; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RXCSR0 = common dso_local global i32 0, align 4
@RXCSR0_DROP_CRC = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RXCSR0_DROP_PHYSICAL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@RXCSR0_DROP_CONTROL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@RXCSR0_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@RXCSR0_DROP_TODS = common dso_local global i32 0, align 4
@RXCSR0_DROP_VERSION_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt2400pci_config_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_config_filter(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = load i32, i32* @RXCSR0, align 4
  %8 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %6, i32 %7, i32* %5)
  %9 = load i32, i32* @RXCSR0_DROP_CRC, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FIF_FCSFAIL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @rt2x00_set_field32(i32* %5, i32 %9, i32 %15)
  %17 = load i32, i32* @RXCSR0_DROP_PHYSICAL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIF_PLCPFAIL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rt2x00_set_field32(i32* %5, i32 %17, i32 %23)
  %25 = load i32, i32* @RXCSR0_DROP_CONTROL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @FIF_CONTROL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @rt2x00_set_field32(i32* %5, i32 %25, i32 %31)
  %33 = load i32, i32* @RXCSR0_DROP_NOT_TO_ME, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @rt2x00_set_field32(i32* %5, i32 %33, i32 %39)
  %41 = load i32, i32* @RXCSR0_DROP_TODS, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %2
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %2
  %53 = phi i1 [ false, %2 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @rt2x00_set_field32(i32* %5, i32 %41, i32 %54)
  %56 = load i32, i32* @RXCSR0_DROP_VERSION_ERROR, align 4
  %57 = call i32 @rt2x00_set_field32(i32* %5, i32 %56, i32 1)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = load i32, i32* @RXCSR0, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
