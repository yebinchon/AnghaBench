; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_bufferfill_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_bufferfill_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, i32 }
%struct.ohci_iso_recv = type { i32, i64, i32, i32, %struct.dma_cmd*, %struct.ti_ohci* }
%struct.dma_cmd = type { i32 }
%struct.ti_ohci = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IR DMA error - OHCI error code 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ISO reception overflow - ran out of DMA blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*, %struct.ohci_iso_recv*)* @ohci_iso_recv_bufferfill_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_bufferfill_task(%struct.hpsb_iso* %0, %struct.ohci_iso_recv* %1) #0 {
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca %struct.ohci_iso_recv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_ohci*, align 8
  %7 = alloca %struct.dma_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  store %struct.ohci_iso_recv* %1, %struct.ohci_iso_recv** %4, align 8
  %11 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %12 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %11, i32 0, i32 5
  %13 = load %struct.ti_ohci*, %struct.ti_ohci** %12, align 8
  store %struct.ti_ohci* %13, %struct.ti_ohci** %6, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %111, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %17 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %114

20:                                               ; preds = %14
  %21 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %22 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %21, i32 0, i32 4
  %23 = load %struct.dma_cmd*, %struct.dma_cmd** %22, align 8
  %24 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %25 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %23, i64 %26
  store %struct.dma_cmd* %27, %struct.dma_cmd** %7, align 8
  %28 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = ashr i32 %31, 16
  store i32 %32, i32* %8, align 4
  %33 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = and i32 %36, 65535
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %10, align 1
  %41 = load i8, i8* %10, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %20
  br label %114

44:                                               ; preds = %20
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 17
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %50 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load i32, i32* @KERN_ERR, align 4
  %53 = load i8, i8* %10, align 1
  %54 = call i32 @PRINT(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 zeroext %53)
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %114

59:                                               ; preds = %55
  %60 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %61 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %60, i32 0, i32 1
  %62 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %63 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %66 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %64, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %72 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dma_region_sync_for_cpu(i32* %61, i32 %70, i32 %73)
  %75 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %76 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %81 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  %84 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %85 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = urem i64 %83, %87
  %89 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %90 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %92 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  %95 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %96 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = urem i64 %94, %98
  %100 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %101 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp eq i64 %99, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %59
  %106 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %107 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %106, i32 0, i32 0
  %108 = call i32 @atomic_inc(i32* %107)
  %109 = call i32 @DBGMSG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %105, %59
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %14

114:                                              ; preds = %58, %43, %14
  %115 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %116 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %117 = call i32 @ohci_iso_recv_bufferfill_parse(%struct.hpsb_iso* %115, %struct.ohci_iso_recv* %116)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @PRINT(i32, i8*, i8 zeroext) #1

declare dso_local i32 @dma_region_sync_for_cpu(i32*, i32, i32) #1

declare dso_local i32 @DBGMSG(i8*) #1

declare dso_local i32 @ohci_iso_recv_bufferfill_parse(%struct.hpsb_iso*, %struct.ohci_iso_recv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
