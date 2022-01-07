; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config_ant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32, i32 }

@ANTENNA_SW_DIVERSITY = common dso_local global i32 0, align 4
@BBP_R1_TX_ANTENNA = common dso_local global i32 0, align 4
@BBP_R4_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt2400pci_config_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_config_ant(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %7 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %8 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %14 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = call i32 @rt2400pci_bbp_read(%struct.rt2x00_dev* %22, i32 4, i32* %6)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = call i32 @rt2400pci_bbp_read(%struct.rt2x00_dev* %24, i32 1, i32* %5)
  %26 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %27 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %36 [
    i32 128, label %29
    i32 130, label %32
    i32 129, label %35
  ]

29:                                               ; preds = %18
  %30 = load i32, i32* @BBP_R1_TX_ANTENNA, align 4
  %31 = call i32 @rt2x00_set_field8(i32* %5, i32 %30, i32 1)
  br label %39

32:                                               ; preds = %18
  %33 = load i32, i32* @BBP_R1_TX_ANTENNA, align 4
  %34 = call i32 @rt2x00_set_field8(i32* %5, i32 %33, i32 0)
  br label %39

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %18, %35
  %37 = load i32, i32* @BBP_R1_TX_ANTENNA, align 4
  %38 = call i32 @rt2x00_set_field8(i32* %5, i32 %37, i32 2)
  br label %39

39:                                               ; preds = %36, %32, %29
  %40 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %41 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %50 [
    i32 128, label %43
    i32 130, label %46
    i32 129, label %49
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @BBP_R4_RX_ANTENNA, align 4
  %45 = call i32 @rt2x00_set_field8(i32* %6, i32 %44, i32 1)
  br label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @BBP_R4_RX_ANTENNA, align 4
  %48 = call i32 @rt2x00_set_field8(i32* %6, i32 %47, i32 0)
  br label %53

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %39, %49
  %51 = load i32, i32* @BBP_R4_RX_ANTENNA, align 4
  %52 = call i32 @rt2x00_set_field8(i32* %6, i32 %51, i32 2)
  br label %53

53:                                               ; preds = %50, %46, %43
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %54, i32 4, i32 %55)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %57, i32 1, i32 %58)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rt2400pci_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2400pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
