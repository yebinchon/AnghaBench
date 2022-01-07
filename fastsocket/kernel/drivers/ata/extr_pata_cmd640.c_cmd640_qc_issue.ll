; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cmd640.c_cmd640_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cmd640.c_cmd640_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i64 }
%struct.ata_port = type { i64, %struct.cmd640_reg*, %struct.TYPE_2__* }
%struct.cmd640_reg = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@DRWTIM23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @cmd640_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd640_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.cmd640_reg*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 1
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %3, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 0
  %12 = load %struct.ata_device*, %struct.ata_device** %11, align 8
  store %struct.ata_device* %12, %struct.ata_device** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.cmd640_reg*, %struct.cmd640_reg** %20, align 8
  store %struct.cmd640_reg* %21, %struct.cmd640_reg** %6, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %1
  %27 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cmd640_reg*, %struct.cmd640_reg** %6, align 8
  %31 = getelementptr inbounds %struct.cmd640_reg, %struct.cmd640_reg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i32, i32* @DRWTIM23, align 4
  %37 = load %struct.cmd640_reg*, %struct.cmd640_reg** %6, align 8
  %38 = getelementptr inbounds %struct.cmd640_reg, %struct.cmd640_reg* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %41 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_write_config_byte(%struct.pci_dev* %35, i32 %36, i32 %44)
  %46 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cmd640_reg*, %struct.cmd640_reg** %6, align 8
  %50 = getelementptr inbounds %struct.cmd640_reg, %struct.cmd640_reg* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %34, %26, %1
  %52 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %53 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %52)
  ret i32 %53
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
