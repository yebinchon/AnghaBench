; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_get_sas_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_get_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64* }
%struct.sci_sas_address = type { i64, i64 }

@SCI_MAX_PHYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_port_get_sas_address(%struct.isci_port* %0, %struct.sci_sas_address* %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.sci_sas_address*, align 8
  %5 = alloca i64, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store %struct.sci_sas_address* %1, %struct.sci_sas_address** %4, align 8
  %6 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %7 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %9 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SCI_MAX_PHYS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %16 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %24 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %30 = call i32 @sci_phy_get_sas_address(i64 %28, %struct.sci_sas_address* %29)
  br label %31

31:                                               ; preds = %22, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local i32 @sci_phy_get_sas_address(i64, %struct.sci_sas_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
