; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_get_protocols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_get_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { %struct.isci_phy** }
%struct.isci_phy = type { i32 }
%struct.sci_phy_proto = type { i64 }

@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, %struct.sci_phy_proto*)* @sci_port_get_protocols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_get_protocols(%struct.isci_port* %0, %struct.sci_phy_proto* %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.sci_phy_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.isci_phy*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store %struct.sci_phy_proto* %1, %struct.sci_phy_proto** %4, align 8
  %7 = load %struct.sci_phy_proto*, %struct.sci_phy_proto** %4, align 8
  %8 = getelementptr inbounds %struct.sci_phy_proto, %struct.sci_phy_proto* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @SCI_MAX_PHYS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %15 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %14, i32 0, i32 0
  %16 = load %struct.isci_phy**, %struct.isci_phy*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %16, i64 %17
  %19 = load %struct.isci_phy*, %struct.isci_phy** %18, align 8
  store %struct.isci_phy* %19, %struct.isci_phy** %6, align 8
  %20 = load %struct.isci_phy*, %struct.isci_phy** %6, align 8
  %21 = icmp ne %struct.isci_phy* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.isci_phy*, %struct.isci_phy** %6, align 8
  %25 = load %struct.sci_phy_proto*, %struct.sci_phy_proto** %4, align 8
  %26 = call i32 @sci_phy_get_protocols(%struct.isci_phy* %24, %struct.sci_phy_proto* %25)
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @sci_phy_get_protocols(%struct.isci_phy*, %struct.sci_phy_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
