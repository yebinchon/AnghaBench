; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pciserial_remove_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pciserial_remove_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32, i32, i32**, i32* }
%struct.pci_serial_quirk = type { i32 (i32)* }

@PCI_NUM_BAR_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pciserial_remove_ports(%struct.serial_private* %0) #0 {
  %2 = alloca %struct.serial_private*, align 8
  %3 = alloca %struct.pci_serial_quirk*, align 8
  %4 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %8 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %13 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @serial8250_unregister_port(i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PCI_NUM_BAR_RESOURCES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %30 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %39 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @iounmap(i32* %44)
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %48 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %58 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.pci_serial_quirk* @find_quirk(i32 %59)
  store %struct.pci_serial_quirk* %60, %struct.pci_serial_quirk** %3, align 8
  %61 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  %62 = getelementptr inbounds %struct.pci_serial_quirk, %struct.pci_serial_quirk* %61, i32 0, i32 0
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = icmp ne i32 (i32)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  %67 = getelementptr inbounds %struct.pci_serial_quirk, %struct.pci_serial_quirk* %66, i32 0, i32 0
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %70 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %68(i32 %71)
  br label %73

73:                                               ; preds = %65, %56
  %74 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %75 = call i32 @kfree(%struct.serial_private* %74)
  ret void
}

declare dso_local i32 @serial8250_unregister_port(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local %struct.pci_serial_quirk* @find_quirk(i32) #1

declare dso_local i32 @kfree(%struct.serial_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
