; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_risc_stopper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_risc_stopper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i32, i32* }

@RISC_WRITECR = common dso_local global i32 0, align 4
@RISC_IRQ2 = common dso_local global i32 0, align 4
@RISC_IMM = common dso_local global i32 0, align 4
@RISC_JUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_risc_stopper(%struct.pci_dev* %0, %struct.btcx_riscmem* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %6, align 4
  br label %60

20:                                               ; preds = %5
  %21 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %22 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* @RISC_WRITECR, align 4
  %25 = load i32, i32* @RISC_IRQ2, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RISC_IMM, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32, i32* @RISC_JUMP, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  %53 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %54 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %20, %18
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @btcx_riscmem_alloc(%struct.pci_dev*, %struct.btcx_riscmem*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
