; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_clear_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_clear_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { %struct.isci_phy**, %struct.isci_host* }
%struct.isci_host = type { i32* }
%struct.isci_phy = type { i64 }

@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_port*, %struct.isci_phy*)* @sci_port_clear_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_port_clear_phy(%struct.isci_port* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  %6 = alloca %struct.isci_host*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %5, align 8
  %7 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %8 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %7, i32 0, i32 0
  %9 = load %struct.isci_phy**, %struct.isci_phy*** %8, align 8
  %10 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %11 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %9, i64 %12
  %14 = load %struct.isci_phy*, %struct.isci_phy** %13, align 8
  %15 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %16 = icmp eq %struct.isci_phy* %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %19 = call %struct.isci_port* @phy_get_non_dummy_port(%struct.isci_phy* %18)
  %20 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %21 = icmp eq %struct.isci_port* %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %24 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %23, i32 0, i32 1
  %25 = load %struct.isci_host*, %struct.isci_host** %24, align 8
  store %struct.isci_host* %25, %struct.isci_host** %6, align 8
  %26 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %27 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %28 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @SCI_MAX_PORTS, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @sci_phy_set_port(%struct.isci_phy* %26, i32* %31)
  %33 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %34 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %33, i32 0, i32 0
  %35 = load %struct.isci_phy**, %struct.isci_phy*** %34, align 8
  %36 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %37 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %35, i64 %38
  store %struct.isci_phy* null, %struct.isci_phy** %39, align 8
  %40 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %17, %2
  %42 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.isci_port* @phy_get_non_dummy_port(%struct.isci_phy*) #1

declare dso_local i32 @sci_phy_set_port(%struct.isci_phy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
