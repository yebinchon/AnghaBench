; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_clear_fifo_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_clear_fifo_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }

@HFCPCI_FIFOEN_B2TX = common dso_local global i32 0, align 4
@HFCPCI_FIFOEN_B1TX = common dso_local global i32 0, align 4
@HFCPCI_FIFO_EN = common dso_local global i32 0, align 4
@B_FIFO_SIZE = common dso_local global i64 0, align 8
@B_SUB_VAL = common dso_local global i64 0, align 8
@MAX_B_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @hfcpci_clear_fifo_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcpci_clear_fifo_tx(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_11__*
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HFCPCI_FIFOEN_B2TX, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %5, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_11__*
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %6, align 8
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HFCPCI_FIFOEN_B1TX, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %25, %9
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = xor i32 %50, %45
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %54 = load i32, i32* @HFCPCI_FIFO_EN, align 4
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @Write_hfc(%struct.IsdnCardState* %53, i32 %54, i32 %59)
  %61 = load i64, i64* @B_FIFO_SIZE, align 8
  %62 = load i64, i64* @B_SUB_VAL, align 8
  %63 = add nsw i64 %61, %62
  %64 = sub nsw i64 %63, 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i64, i64* @MAX_B_FRAMES, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i64 %64, i64* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i64, i64* @MAX_B_FRAMES, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i64, i64* @MAX_B_FRAMES, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i64 %77, i64* %83, align 8
  %84 = load i64, i64* @MAX_B_FRAMES, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %52
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %97 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %94, %52
  %103 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %104 = load i32, i32* @HFCPCI_FIFO_EN, align 4
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %106 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @Write_hfc(%struct.IsdnCardState* %103, i32 %104, i32 %109)
  ret void
}

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
