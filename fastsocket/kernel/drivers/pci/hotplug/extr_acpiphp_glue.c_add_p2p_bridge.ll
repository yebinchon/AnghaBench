; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_add_p2p_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_add_p2p_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_bridge = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@BRIDGE_TYPE_P2P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"This is not a PCI-to-PCI bridge!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @add_p2p_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_p2p_bridge(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.acpiphp_bridge*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.acpiphp_bridge* @kzalloc(i32 40, i32 %4)
  store %struct.acpiphp_bridge* %5, %struct.acpiphp_bridge** %3, align 8
  %6 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %7 = icmp eq %struct.acpiphp_bridge* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %54

10:                                               ; preds = %1
  %11 = load i32, i32* @BRIDGE_TYPE_P2P, align 4
  %12 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %16 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %18 = call i32 @config_p2p_bridge_flags(%struct.acpiphp_bridge* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call %struct.TYPE_5__* @acpi_get_pci_dev(i32* %19)
  %21 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %22 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %21, i32 0, i32 0
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %24 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %29 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %28, i32 0, i32 2
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %31 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %10
  %35 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %47

36:                                               ; preds = %10
  %37 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %38 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @get_device(i32* %40)
  %42 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %43 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %46 = call i32 @init_bridge_misc(%struct.acpiphp_bridge* %45)
  br label %54

47:                                               ; preds = %34
  %48 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %49 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = call i32 @pci_dev_put(%struct.TYPE_5__* %50)
  %52 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %53 = call i32 @kfree(%struct.acpiphp_bridge* %52)
  br label %54

54:                                               ; preds = %47, %36, %8
  ret void
}

declare dso_local %struct.acpiphp_bridge* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @config_p2p_bridge_flags(%struct.acpiphp_bridge*) #1

declare dso_local %struct.TYPE_5__* @acpi_get_pci_dev(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_bridge_misc(%struct.acpiphp_bridge*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.acpiphp_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
