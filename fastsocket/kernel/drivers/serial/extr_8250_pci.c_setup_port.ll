; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_setup_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.uart_port = type { i64, i64, i32, i32*, i32 }

@PCI_NUM_BAR_RESOURCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPIO_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.uart_port*, i32, i32, i32)* @setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_port(%struct.serial_private* %0, %struct.uart_port* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.serial_private*, align 8
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.serial_private* %0, %struct.serial_private** %7, align 8
  store %struct.uart_port* %1, %struct.uart_port** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.serial_private*, %struct.serial_private** %7, align 8
  %16 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %15, i32 0, i32 1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @PCI_NUM_BAR_RESOURCES, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %113

24:                                               ; preds = %5
  %25 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @pci_resource_start(%struct.pci_dev* %25, i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pci_resource_flags(%struct.pci_dev* %28, i32 %29)
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @pci_resource_len(%struct.pci_dev* %35, i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load %struct.serial_private*, %struct.serial_private** %7, align 8
  %39 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @ioremap_nocache(i64 %47, i64 %48)
  %50 = load %struct.serial_private*, %struct.serial_private** %7, align 8
  %51 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %46, %34
  %57 = load %struct.serial_private*, %struct.serial_private** %7, align 8
  %58 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %113

68:                                               ; preds = %56
  %69 = load i32, i32* @UPIO_MEM, align 4
  %70 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %74, %76
  %78 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.serial_private*, %struct.serial_private** %7, align 8
  %81 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %112

96:                                               ; preds = %24
  %97 = load i32, i32* @UPIO_PORT, align 4
  %98 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 3
  store i32* null, i32** %109, align 8
  %110 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 2
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %96, %68
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %65, %21
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap_nocache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
