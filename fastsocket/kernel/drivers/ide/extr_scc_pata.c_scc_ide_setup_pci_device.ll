; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_scc_pata.c_scc_ide_setup_pci_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_scc_pata.c_scc_ide_setup_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.ide_port_info = type { i32 }
%struct.scc_ports = type { %struct.ide_host*, i64 }
%struct.ide_host = type { i32 }
%struct.ide_hw = type { i32*, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ide_port_info*)* @scc_ide_setup_pci_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_ide_setup_pci_device(%struct.pci_dev* %0, %struct.ide_port_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ide_port_info*, align 8
  %6 = alloca %struct.scc_ports*, align 8
  %7 = alloca %struct.ide_host*, align 8
  %8 = alloca %struct.ide_hw, align 8
  %9 = alloca [1 x %struct.ide_hw*], align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ide_port_info* %1, %struct.ide_port_info** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call %struct.scc_ports* @pci_get_drvdata(%struct.pci_dev* %12)
  store %struct.scc_ports* %13, %struct.scc_ports** %6, align 8
  %14 = getelementptr inbounds [1 x %struct.ide_hw*], [1 x %struct.ide_hw*]* %9, i64 0, i64 0
  store %struct.ide_hw* %8, %struct.ide_hw** %14, align 8
  %15 = call i32 @memset(%struct.ide_hw* %8, i32 0, i32 24)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %17, 8
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.scc_ports*, %struct.scc_ports** %6, align 8
  %21 = getelementptr inbounds %struct.scc_ports, %struct.scc_ports* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 32
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %8, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 %27, i64* %32, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %8, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = load %struct.ide_port_info*, %struct.ide_port_info** %5, align 8
  %45 = getelementptr inbounds [1 x %struct.ide_hw*], [1 x %struct.ide_hw*]* %9, i64 0, i64 0
  %46 = call i32 @ide_host_add(%struct.ide_port_info* %44, %struct.ide_hw** %45, i32 1, %struct.ide_host** %7)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %36
  %52 = load %struct.ide_host*, %struct.ide_host** %7, align 8
  %53 = load %struct.scc_ports*, %struct.scc_ports** %6, align 8
  %54 = getelementptr inbounds %struct.scc_ports, %struct.scc_ports* %53, i32 0, i32 0
  store %struct.ide_host* %52, %struct.ide_host** %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %49
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.scc_ports* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @memset(%struct.ide_hw*, i32, i32) #1

declare dso_local i32 @ide_host_add(%struct.ide_port_info*, %struct.ide_hw**, i32, %struct.ide_host**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
