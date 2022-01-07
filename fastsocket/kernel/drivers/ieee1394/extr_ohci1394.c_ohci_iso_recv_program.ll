; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, %struct.ohci_iso_recv* }
%struct.ohci_iso_recv = type { i32, i32, i64, i32, i32, %struct.dma_cmd* }
%struct.dma_cmd = type { i32, i8*, i8*, i8* }

@BUFFER_FILL_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*)* @ohci_iso_recv_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_program(%struct.hpsb_iso* %0) #0 {
  %2 = alloca %struct.hpsb_iso*, align 8
  %3 = alloca %struct.ohci_iso_recv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %2, align 8
  %10 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %11 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %10, i32 0, i32 1
  %12 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %11, align 8
  store %struct.ohci_iso_recv* %12, %struct.ohci_iso_recv** %3, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %102, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %16 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %13
  %20 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %20, i32 0, i32 5
  %22 = load %struct.dma_cmd*, %struct.dma_cmd** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %22, i64 %24
  store %struct.dma_cmd* %25, %struct.dma_cmd** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 32
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %31 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %36 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BUFFER_FILL_MODE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  store i32 536870912, i32* %6, align 4
  br label %42

41:                                               ; preds = %19
  store i32 805306368, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, 134217728
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %47 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %54 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = srem i32 %52, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51, %42
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 3145728
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, 786432
  store i32 %63, i32* %6, align 4
  %64 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %65 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %74 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @dma_region_offset_to_bus(i32* %74, i64 %75)
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %83 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %61
  %91 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %92 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %91, i32 0, i32 4
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @dma_prog_region_offset_to_bus(i32* %92, i64 %93)
  %95 = or i32 %94, 1
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %61
  %100 = load %struct.dma_cmd*, %struct.dma_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %100, i32 0, i32 0
  store i32* %101, i32** %5, align 8
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %13

105:                                              ; preds = %13
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_region_offset_to_bus(i32*, i64) #1

declare dso_local i32 @dma_prog_region_offset_to_bus(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
