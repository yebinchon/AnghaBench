; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2529.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2529.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32 }

@BBP_R4_RX_ANTENNA_CONTROL = common dso_local global i32 0, align 4
@BBP_R77_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt61pci_config_antenna_2529 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_antenna_2529(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %8, i32 3, i32* %5)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %10, i32 4, i32* %6)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = call i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %12, i32 77, i32* %7)
  %14 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %15 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 130, label %17
    i32 128, label %24
    i32 129, label %24
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %19 = call i32 @rt2x00_set_field8(i32* %6, i32 %18, i32 1)
  %20 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %21 = call i32 @rt2x00_set_field8(i32* %7, i32 %20, i32 0)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = call i32 @rt61pci_config_antenna_2529_rx(%struct.rt2x00_dev* %22, i32 0, i32 0)
  br label %32

24:                                               ; preds = %2, %2
  br label %25

25:                                               ; preds = %2, %24
  %26 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %27 = call i32 @rt2x00_set_field8(i32* %6, i32 %26, i32 1)
  %28 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %29 = call i32 @rt2x00_set_field8(i32* %7, i32 %28, i32 3)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = call i32 @rt61pci_config_antenna_2529_rx(%struct.rt2x00_dev* %30, i32 1, i32 1)
  br label %32

32:                                               ; preds = %25, %17
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %33, i32 77, i32 %34)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %36, i32 3, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %39, i32 4, i32 %40)
  ret void
}

declare dso_local i32 @rt61pci_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt61pci_config_antenna_2529_rx(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt61pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
