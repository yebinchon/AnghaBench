; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_map_doorbell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_map_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { i32, i32, %struct.fcoe_port* }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { i32 }

@BNX2X_DOORBELL_PCI_BAR = common dso_local global i32 0, align 4
@BNX2FC_5771X_DB_PAGE_SIZE = common dso_local global i32 0, align 4
@DPM_TRIGER_TYPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2fc_map_doorbell(%struct.bnx2fc_rport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2fc_rport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fcoe_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2fc_interface*, align 8
  %9 = alloca %struct.bnx2fc_hba*, align 8
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %3, align 8
  %10 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %13, i32 0, i32 2
  %15 = load %struct.fcoe_port*, %struct.fcoe_port** %14, align 8
  store %struct.fcoe_port* %15, %struct.fcoe_port** %5, align 8
  %16 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %17 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %16, i32 0, i32 0
  %18 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %17, align 8
  store %struct.bnx2fc_interface* %18, %struct.bnx2fc_interface** %8, align 8
  %19 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %8, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %19, i32 0, i32 0
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %20, align 8
  store %struct.bnx2fc_hba* %21, %struct.bnx2fc_hba** %9, align 8
  %22 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %9, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BNX2X_DOORBELL_PCI_BAR, align 4
  %26 = call i32 @pci_resource_start(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @BNX2FC_5771X_DB_PAGE_SIZE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 131071
  %30 = mul nsw i32 %27, %29
  %31 = load i32, i32* @DPM_TRIGER_TYPE, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @ioremap_nocache(i32 %35, i32 4)
  %37 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %1
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
