; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_celleb_fake_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_celleb_fake_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_controller = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"    fake read: bus=0x%x, \00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"devno=0x%x, where=0x%x, size=0x%x, \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"val=0x%x\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @celleb_fake_pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celleb_fake_pci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pci_controller*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %16)
  store %struct.pci_controller* %17, %struct.pci_controller** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = lshr i32 %18, 3
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 7
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = srem i32 %22, %23
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i8* @get_fake_config_start(%struct.pci_controller* %30, i32 %31, i32 %32)
  store i8* %33, i8** %12, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %5
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %5
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @celleb_config_read_fake(i8* %44, i32 %45, i32 %46, i32* %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %43, %40
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @get_fake_config_start(%struct.pci_controller*, i32, i32) #1

declare dso_local i32 @celleb_config_read_fake(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
