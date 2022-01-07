; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_hfcpci_clear_fifo_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_hfcpci_clear_fifo_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_pci = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64*, i64 }
%struct.bzfifo = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }
%union.fifo_area = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bzfifo, %struct.bzfifo }

@HFCPCI_FIFOEN_B2RX = common dso_local global i32 0, align 4
@HFCPCI_FIFOEN_B1RX = common dso_local global i32 0, align 4
@HFCPCI_FIFO_EN = common dso_local global i32 0, align 4
@MAX_B_FRAMES = common dso_local global i64 0, align 8
@B_FIFO_SIZE = common dso_local global i64 0, align 8
@B_SUB_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_pci*, i32)* @hfcpci_clear_fifo_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcpci_clear_fifo_rx(%struct.hfc_pci* %0, i32 %1) #0 {
  %3 = alloca %struct.hfc_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bzfifo*, align 8
  store %struct.hfc_pci* %0, %struct.hfc_pci** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %11 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %union.fifo_area*
  %15 = bitcast %union.fifo_area* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.bzfifo* %16, %struct.bzfifo** %6, align 8
  %17 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %18 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HFCPCI_FIFOEN_B2RX, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %25 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %union.fifo_area*
  %29 = bitcast %union.fifo_area* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.bzfifo* %30, %struct.bzfifo** %6, align 8
  %31 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %32 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HFCPCI_FIFOEN_B1RX, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %23, %9
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %43 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = xor i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %37
  %48 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %49 = load i32, i32* @HFCPCI_FIFO_EN, align 4
  %50 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %51 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @Write_hfc(%struct.hfc_pci* %48, i32 %49, i32 %53)
  %55 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %56 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* @MAX_B_FRAMES, align 8
  %63 = load %struct.bzfifo*, %struct.bzfifo** %6, align 8
  %64 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.bzfifo*, %struct.bzfifo** %6, align 8
  %66 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bzfifo*, %struct.bzfifo** %6, align 8
  %69 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* @B_FIFO_SIZE, align 8
  %71 = load i64, i64* @B_SUB_VAL, align 8
  %72 = add nsw i64 %70, %71
  %73 = sub nsw i64 %72, 1
  %74 = call i8* @cpu_to_le16(i64 %73)
  %75 = load %struct.bzfifo*, %struct.bzfifo** %6, align 8
  %76 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i64, i64* @MAX_B_FRAMES, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i8* %74, i8** %80, align 8
  %81 = load %struct.bzfifo*, %struct.bzfifo** %6, align 8
  %82 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i64, i64* @MAX_B_FRAMES, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @le16_to_cpu(i8* %87)
  %89 = call i8* @cpu_to_le16(i64 %88)
  %90 = load %struct.bzfifo*, %struct.bzfifo** %6, align 8
  %91 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i64, i64* @MAX_B_FRAMES, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i8* %89, i8** %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %47
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %101 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %47
  %106 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %107 = load i32, i32* @HFCPCI_FIFO_EN, align 4
  %108 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %109 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @Write_hfc(%struct.hfc_pci* %106, i32 %107, i32 %111)
  ret void
}

declare dso_local i32 @Write_hfc(%struct.hfc_pci*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
