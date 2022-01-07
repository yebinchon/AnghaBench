; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_set_vga_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_set_vga_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"devfn %x decode %d cmd %x flags %d\0A\00", align 1
@PCI_VGA_STATE_CHANGE_BRIDGE = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"vga decode %d %x:%x, rc: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_set_vga_state(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @PR_DEVEL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PCI_VGA_STATE_CHANGE_BRIDGE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PCI_COMMAND_IO, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %51

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @pci_domain_nr(%struct.TYPE_2__* %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @uv_bios_set_legacy_vga_target(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @PR_DEVEL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %31, %30, %24
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @PR_DEVEL(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i32 @uv_bios_set_legacy_vga_target(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
