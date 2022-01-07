; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_risc_stopper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_risc_stopper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i32, i32* }

@RISC_WRITECR = common dso_local global i32 0, align 4
@RISC_IRQ2 = common dso_local global i32 0, align 4
@RISC_JUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_risc_stopper(%struct.pci_dev* %0, %struct.btcx_riscmem* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.btcx_riscmem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %16 = call i32 @btcx_riscmem_alloc(%struct.pci_dev* %14, %struct.btcx_riscmem* %15, i32 64)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %6, align 4
  br label %63

21:                                               ; preds = %5
  %22 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %23 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load i32, i32* @RISC_WRITECR, align 4
  %26 = load i32, i32* @RISC_IRQ2, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %12, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %12, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  %47 = load i32, i32* @RISC_JUMP, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %53 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  %59 = call i8* @cpu_to_le32(i32 0)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %12, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %21, %19
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @btcx_riscmem_alloc(%struct.pci_dev*, %struct.btcx_riscmem*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
