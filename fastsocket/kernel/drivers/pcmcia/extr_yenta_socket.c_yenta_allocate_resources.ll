; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_allocate_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_allocate_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_CB_IO_BASE_0 = common dso_local global i32 0, align 4
@PCI_CB_IO_LIMIT_0 = common dso_local global i32 0, align 4
@PCI_CB_IO_BASE_1 = common dso_local global i32 0, align 4
@PCI_CB_IO_LIMIT_1 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_BASE_0 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_LIMIT_0 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_BASE_1 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_LIMIT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*)* @yenta_allocate_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_allocate_resources(%struct.yenta_socket* %0) #0 {
  %2 = alloca %struct.yenta_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %5 = load i32, i32* @IORESOURCE_IO, align 4
  %6 = load i32, i32* @PCI_CB_IO_BASE_0, align 4
  %7 = load i32, i32* @PCI_CB_IO_LIMIT_0, align 4
  %8 = call i64 @yenta_allocate_res(%struct.yenta_socket* %4, i32 0, i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %14 = load i32, i32* @IORESOURCE_IO, align 4
  %15 = load i32, i32* @PCI_CB_IO_BASE_1, align 4
  %16 = load i32, i32* @PCI_CB_IO_LIMIT_1, align 4
  %17 = call i64 @yenta_allocate_res(%struct.yenta_socket* %13, i32 1, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PCI_CB_MEMORY_BASE_0, align 4
  %27 = load i32, i32* @PCI_CB_MEMORY_LIMIT_0, align 4
  %28 = call i64 @yenta_allocate_res(%struct.yenta_socket* %22, i32 2, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = load i32, i32* @PCI_CB_MEMORY_BASE_1, align 4
  %36 = load i32, i32* @PCI_CB_MEMORY_LIMIT_1, align 4
  %37 = call i64 @yenta_allocate_res(%struct.yenta_socket* %33, i32 3, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %1
  %45 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %46 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pci_setup_cardbus(i32 %49)
  br label %51

51:                                               ; preds = %44, %1
  ret void
}

declare dso_local i64 @yenta_allocate_res(%struct.yenta_socket*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_setup_cardbus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
