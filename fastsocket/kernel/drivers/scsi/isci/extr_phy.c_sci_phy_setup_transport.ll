; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_sci_phy_setup_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_sci_phy_setup_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CLEAR_TCI_NCQ_MAPPING_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_phy_setup_transport(%struct.isci_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isci_phy* %0, %struct.isci_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %8 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @writel(i32 %6, i32* %10)
  %12 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %13 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @readl(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @CLEAR_TCI_NCQ_MAPPING_TABLE, align 4
  %18 = call i32 @SCU_TLCR_GEN_BIT(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %23 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @writel(i32 %21, i32* %25)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @SCU_TLCR_GEN_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
