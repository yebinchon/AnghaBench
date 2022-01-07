; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_hfcpci_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_hfcpci_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_pci = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@ISDN_P_NT_S0 = common dso_local global i64 0, align 8
@CLKDEL_NT = common dso_local global i32 0, align 4
@SCTRL_MODE_NT = common dso_local global i32 0, align 4
@CLKDEL_TE = common dso_local global i32 0, align 4
@HFCPCI_CLKDEL = common dso_local global i32 0, align 4
@HFCPCI_STATES = common dso_local global i32 0, align 4
@HFCPCI_LOAD_STATE = common dso_local global i32 0, align 4
@HFCPCI_SCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_pci*)* @hfcpci_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcpci_setmode(%struct.hfc_pci* %0) #0 {
  %2 = alloca %struct.hfc_pci*, align 8
  store %struct.hfc_pci* %0, %struct.hfc_pci** %2, align 8
  %3 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %4 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ISDN_P_NT_S0, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @CLKDEL_NT, align 4
  %11 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %12 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* @SCTRL_MODE_NT, align 4
  %15 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %16 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %21 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 1, i32* %22, align 8
  br label %38

23:                                               ; preds = %1
  %24 = load i32, i32* @CLKDEL_TE, align 4
  %25 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %26 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @SCTRL_MODE_NT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %31 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %36 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 2, i32* %37, align 8
  br label %38

38:                                               ; preds = %23, %9
  %39 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %40 = load i32, i32* @HFCPCI_CLKDEL, align 4
  %41 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %42 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @Write_hfc(%struct.hfc_pci* %39, i32 %40, i32 %44)
  %46 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %47 = load i32, i32* @HFCPCI_STATES, align 4
  %48 = load i32, i32* @HFCPCI_LOAD_STATE, align 4
  %49 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %50 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %48, %52
  %54 = call i32 @Write_hfc(%struct.hfc_pci* %46, i32 %47, i32 %53)
  %55 = call i32 @udelay(i32 10)
  %56 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %57 = load i32, i32* @HFCPCI_STATES, align 4
  %58 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %59 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, 64
  %63 = call i32 @Write_hfc(%struct.hfc_pci* %56, i32 %57, i32 %62)
  %64 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %65 = load i32, i32* @HFCPCI_SCTRL, align 4
  %66 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %67 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @Write_hfc(%struct.hfc_pci* %64, i32 %65, i32 %69)
  ret void
}

declare dso_local i32 @Write_hfc(%struct.hfc_pci*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
