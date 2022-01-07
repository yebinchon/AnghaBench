; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_sci_phy_get_sas_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_sci_phy_get_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sci_sas_address = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_phy_get_sas_address(%struct.isci_phy* %0, %struct.sci_sas_address* %1) #0 {
  %3 = alloca %struct.isci_phy*, align 8
  %4 = alloca %struct.sci_sas_address*, align 8
  store %struct.isci_phy* %0, %struct.isci_phy** %3, align 8
  store %struct.sci_sas_address* %1, %struct.sci_sas_address** %4, align 8
  %5 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %6 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i8* @readl(i32* %8)
  %10 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %11 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %13 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i8* @readl(i32* %15)
  %17 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %18 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

declare dso_local i8* @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
