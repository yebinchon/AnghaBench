; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_update_viit_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_update_viit_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sci_sas_address = type { i32, i32 }

@SCU_VIIT_ENTRY_ID_VIIT = common dso_local global i32 0, align 4
@SCU_VIIT_IPPT_INITIATOR = common dso_local global i32 0, align 4
@SCU_VIIT_ENTRY_LPVIE_SHIFT = common dso_local global i32 0, align 4
@SCU_VIIT_STATUS_ALL_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*)* @sci_port_update_viit_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_update_viit_entry(%struct.isci_port* %0) #0 {
  %2 = alloca %struct.isci_port*, align 8
  %3 = alloca %struct.sci_sas_address, align 4
  store %struct.isci_port* %0, %struct.isci_port** %2, align 8
  %4 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %5 = call i32 @sci_port_get_sas_address(%struct.isci_port* %4, %struct.sci_sas_address* %3)
  %6 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %9 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = call i32 @writel(i32 %7, i32* %11)
  %13 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %16 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @writel(i32 %14, i32* %18)
  %20 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %21 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @writel(i32 0, i32* %23)
  %25 = load i32, i32* @SCU_VIIT_ENTRY_ID_VIIT, align 4
  %26 = load i32, i32* @SCU_VIIT_IPPT_INITIATOR, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %29 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = load i32, i32* @SCU_VIIT_ENTRY_LPVIE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %27, %33
  %35 = load i32, i32* @SCU_VIIT_STATUS_ALL_VALID, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %38 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @writel(i32 %36, i32* %40)
  ret void
}

declare dso_local i32 @sci_port_get_sas_address(%struct.isci_port*, %struct.sci_sas_address*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
