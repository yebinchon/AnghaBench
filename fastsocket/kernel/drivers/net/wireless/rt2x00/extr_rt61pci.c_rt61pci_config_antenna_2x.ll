; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32 }

@BBP_R3_SMART_MODE = common dso_local global i32 0, align 4
@RF2529 = common dso_local global i32 0, align 4
@BBP_R4_RX_FRAME_END = common dso_local global i32 0, align 4
@CAPABILITY_FRAME_TYPE = common dso_local global i32 0, align 4
@BBP_R4_RX_ANTENNA_CONTROL = common dso_local global i32 0, align 4
@BBP_R77_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt61pci_config_antenna_2x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_antenna_2x(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
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
  %14 = load i32, i32* @BBP_R3_SMART_MODE, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @RF2529, align 4
  %17 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %15, i32 %16)
  %18 = call i32 @rt2x00_set_field8(i32* %5, i32 %14, i32 %17)
  %19 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %20 = load i32, i32* @CAPABILITY_FRAME_TYPE, align 4
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @rt2x00_set_field8(i32* %6, i32 %19, i32 %26)
  %28 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %29 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %40 [
    i32 128, label %31
    i32 130, label %34
    i32 129, label %39
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %33 = call i32 @rt2x00_set_field8(i32* %6, i32 %32, i32 2)
  br label %45

34:                                               ; preds = %2
  %35 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %36 = call i32 @rt2x00_set_field8(i32* %6, i32 %35, i32 1)
  %37 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %38 = call i32 @rt2x00_set_field8(i32* %7, i32 %37, i32 3)
  br label %45

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %2, %39
  %41 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %42 = call i32 @rt2x00_set_field8(i32* %6, i32 %41, i32 1)
  %43 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %44 = call i32 @rt2x00_set_field8(i32* %7, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %34, %31
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %46, i32 77, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %49, i32 3, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %52, i32 4, i32 %53)
  ret void
}

declare dso_local i32 @rt61pci_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt61pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
