; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_sci_phy_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_sci_phy_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_phy = type { i32, i32, i32, i32*, i32, i32, %struct.isci_port*, i32 }
%struct.isci_port = type { i32 }

@sci_phy_state_table = common dso_local global i32 0, align 4
@SCI_PHY_INITIAL = common dso_local global i32 0, align 4
@SAS_PROTOCOL_NONE = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@phy_sata_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_phy_construct(%struct.isci_phy* %0, %struct.isci_port* %1, i32 %2) #0 {
  %4 = alloca %struct.isci_phy*, align 8
  %5 = alloca %struct.isci_port*, align 8
  %6 = alloca i32, align 4
  store %struct.isci_phy* %0, %struct.isci_phy** %4, align 8
  store %struct.isci_port* %1, %struct.isci_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %8 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %7, i32 0, i32 7
  %9 = load i32, i32* @sci_phy_state_table, align 4
  %10 = load i32, i32* @SCI_PHY_INITIAL, align 4
  %11 = call i32 @sci_init_sm(i32* %8, i32 %9, i32 %10)
  %12 = load %struct.isci_port*, %struct.isci_port** %5, align 8
  %13 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %14 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %13, i32 0, i32 6
  store %struct.isci_port* %12, %struct.isci_port** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %17 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %19 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* @SAS_PROTOCOL_NONE, align 4
  %21 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %22 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %24 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %26 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %27 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %29 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %28, i32 0, i32 1
  %30 = load i32, i32* @phy_sata_timeout, align 4
  %31 = call i32 @sci_init_timer(i32* %29, i32 %30)
  ret void
}

declare dso_local i32 @sci_init_sm(i32*, i32, i32) #1

declare dso_local i32 @sci_init_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
