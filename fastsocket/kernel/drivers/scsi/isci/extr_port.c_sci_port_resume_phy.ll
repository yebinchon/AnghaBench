; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_resume_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_resume_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }
%struct.isci_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, %struct.isci_phy*)* @sci_port_resume_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_resume_phy(%struct.isci_port* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.isci_phy*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %4, align 8
  %5 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %6 = call i32 @sci_phy_resume(%struct.isci_phy* %5)
  %7 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %8 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 1, %9
  %11 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %12 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  ret void
}

declare dso_local i32 @sci_phy_resume(%struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
