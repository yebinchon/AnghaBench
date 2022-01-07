; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_pciex.c___scc_pciex_outl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_pciex.c___scc_pciex_outl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_controller*, i32, i64)* @__scc_pciex_outl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scc_pciex_outl(%struct.pci_controller* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = and i64 %10, 3
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @scc_pciex_write_port(%struct.pci_controller* %16, i64 %17, i32 4, i32 %18)
  br label %46

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %7, align 4
  %24 = mul i32 %23, 8
  %25 = zext i32 %24 to i64
  %26 = lshr i64 4294967295, %25
  %27 = and i64 %22, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub i32 4, %30
  %32 = mul i32 %31, 8
  %33 = ashr i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 4, %36
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @scc_pciex_write_port(%struct.pci_controller* %34, i64 %35, i32 %37, i32 %38)
  %40 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @scc_pciex_write_port(%struct.pci_controller* %40, i64 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @scc_pciex_write_port(%struct.pci_controller*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
