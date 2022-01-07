; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_xmit_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_xmit_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, %struct.ohci_iso_xmit* }
%struct.ohci_iso_xmit = type { i32, %struct.ti_ohci*, %struct.TYPE_2__, i32, i32, i32 }
%struct.ti_ohci = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitIntMaskSet = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error starting IT DMA (ContextControl 0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_iso*, i32)* @ohci_iso_xmit_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_iso_xmit_start(%struct.hpsb_iso* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_iso*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ohci_iso_xmit*, align 8
  %7 = alloca %struct.ti_ohci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %11 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %10, i32 0, i32 1
  %12 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %11, align 8
  store %struct.ohci_iso_xmit* %12, %struct.ohci_iso_xmit** %6, align 8
  %13 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %14 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %13, i32 0, i32 1
  %15 = load %struct.ti_ohci*, %struct.ti_ohci** %14, align 8
  store %struct.ti_ohci* %15, %struct.ti_ohci** %7, align 8
  %16 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %17 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %16, i32 0, i32 1
  %18 = load %struct.ti_ohci*, %struct.ti_ohci** %17, align 8
  %19 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %20 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reg_write(%struct.ti_ohci* %18, i32 %21, i32 -1)
  %23 = call i32 (...) @wmb()
  %24 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %25 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %24, i32 0, i32 1
  %26 = load %struct.ti_ohci*, %struct.ti_ohci** %25, align 8
  %27 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %28 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %31 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %30, i32 0, i32 3
  %32 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %33 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @dma_prog_region_offset_to_bus(i32* %31, i32 %37)
  %39 = or i32 %38, 3
  %40 = call i32 @reg_write(%struct.ti_ohci* %26, i32 %29, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %69

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 8191
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %47 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %46, i32 0, i32 1
  %48 = load %struct.ti_ohci*, %struct.ti_ohci** %47, align 8
  %49 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %50 = call i32 @reg_read(%struct.ti_ohci* %48, i32 %49)
  %51 = ashr i32 %50, 25
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 3
  %56 = shl i32 %55, 13
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %60 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %59, i32 0, i32 1
  %61 = load %struct.ti_ohci*, %struct.ti_ohci** %60, align 8
  %62 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %63 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 16
  %67 = or i32 -2147483648, %66
  %68 = call i32 @reg_write(%struct.ti_ohci* %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %43, %2
  %70 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %71 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %70, i32 0, i32 1
  %72 = load %struct.ti_ohci*, %struct.ti_ohci** %71, align 8
  %73 = load i32, i32* @OHCI1394_IsoXmitIntMaskSet, align 4
  %74 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %75 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = call i32 @reg_write(%struct.ti_ohci* %72, i32 %73, i32 %78)
  %80 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %81 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %80, i32 0, i32 1
  %82 = load %struct.ti_ohci*, %struct.ti_ohci** %81, align 8
  %83 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %84 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @reg_write(%struct.ti_ohci* %82, i32 %85, i32 32768)
  %87 = call i32 (...) @mb()
  %88 = call i32 @udelay(i32 100)
  %89 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %90 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %89, i32 0, i32 1
  %91 = load %struct.ti_ohci*, %struct.ti_ohci** %90, align 8
  %92 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %93 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @reg_read(%struct.ti_ohci* %91, i32 %94)
  %96 = and i32 %95, 32768
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %69
  %99 = load i32, i32* @KERN_ERR, align 4
  %100 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %101 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %100, i32 0, i32 1
  %102 = load %struct.ti_ohci*, %struct.ti_ohci** %101, align 8
  %103 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  %104 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @reg_read(%struct.ti_ohci* %102, i32 %105)
  %107 = call i32 @PRINT(i32 %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %106)
  store i32 -1, i32* %3, align 4
  br label %109

108:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %98
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_prog_region_offset_to_bus(i32*, i32) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PRINT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
