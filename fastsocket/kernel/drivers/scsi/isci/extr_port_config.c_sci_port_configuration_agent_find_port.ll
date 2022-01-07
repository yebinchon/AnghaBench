; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port_config.c_sci_port_configuration_agent_find_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port_config.c_sci_port_configuration_agent_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }
%struct.isci_host = type { i64, %struct.isci_port* }
%struct.isci_phy = type { i32 }
%struct.sci_sas_address = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isci_port* (%struct.isci_host*, %struct.isci_phy*)* @sci_port_configuration_agent_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isci_port* @sci_port_configuration_agent_find_port(%struct.isci_host* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sci_sas_address, align 4
  %8 = alloca %struct.sci_sas_address, align 4
  %9 = alloca %struct.sci_sas_address, align 4
  %10 = alloca %struct.sci_sas_address, align 4
  %11 = alloca %struct.isci_port*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %5, align 8
  %12 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %13 = call i32 @sci_phy_get_sas_address(%struct.isci_phy* %12, %struct.sci_sas_address* %9)
  %14 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %15 = call i32 @sci_phy_get_attached_sas_address(%struct.isci_phy* %14, %struct.sci_sas_address* %10)
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %48, %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %19 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %24 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %23, i32 0, i32 1
  %25 = load %struct.isci_port*, %struct.isci_port** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %25, i64 %26
  store %struct.isci_port* %27, %struct.isci_port** %11, align 8
  %28 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %29 = call i32 @sci_port_get_sas_address(%struct.isci_port* %28, %struct.sci_sas_address* %7)
  %30 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %31 = call i32 @sci_port_get_attached_sas_address(%struct.isci_port* %30, %struct.sci_sas_address* %8)
  %32 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @sci_sas_address_compare(i32 %33, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @sci_sas_address_compare(i32 %40, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  store %struct.isci_port* %46, %struct.isci_port** %3, align 8
  br label %52

47:                                               ; preds = %38, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %16

51:                                               ; preds = %16
  store %struct.isci_port* null, %struct.isci_port** %3, align 8
  br label %52

52:                                               ; preds = %51, %45
  %53 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  ret %struct.isci_port* %53
}

declare dso_local i32 @sci_phy_get_sas_address(%struct.isci_phy*, %struct.sci_sas_address*) #1

declare dso_local i32 @sci_phy_get_attached_sas_address(%struct.isci_phy*, %struct.sci_sas_address*) #1

declare dso_local i32 @sci_port_get_sas_address(%struct.isci_port*, %struct.sci_sas_address*) #1

declare dso_local i32 @sci_port_get_attached_sas_address(%struct.isci_port*, %struct.sci_sas_address*) #1

declare dso_local i64 @sci_sas_address_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
