; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, %struct.ohci_iso_recv* }
%struct.ohci_iso_recv = type { i64, i64, i32, %struct.ti_ohci*, %struct.TYPE_2__, i32, i32, i32, %struct.dma_cmd*, i32 }
%struct.ti_ohci = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_cmd = type { i32 }

@BUFFER_FILL_MODE = common dso_local global i64 0, align 8
@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@DMA_CTL_WAIT = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntMaskSet = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error starting IR DMA (ContextControl 0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_iso*, i32, i32, i32)* @ohci_iso_recv_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_iso_recv_start(%struct.hpsb_iso* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpsb_iso*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ohci_iso_recv*, align 8
  %11 = alloca %struct.ti_ohci*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_cmd*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %17 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %16, i32 0, i32 1
  %18 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %17, align 8
  store %struct.ohci_iso_recv* %18, %struct.ohci_iso_recv** %10, align 8
  %19 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %20 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %19, i32 0, i32 3
  %21 = load %struct.ti_ohci*, %struct.ti_ohci** %20, align 8
  store %struct.ti_ohci* %21, %struct.ti_ohci** %11, align 8
  %22 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %23 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %22, i32 0, i32 3
  %24 = load %struct.ti_ohci*, %struct.ti_ohci** %23, align 8
  %25 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %26 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reg_write(%struct.ti_ohci* %24, i32 %27, i32 -1)
  %29 = call i32 (...) @wmb()
  store i32 1073741824, i32* %12, align 4
  %30 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %31 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BUFFER_FILL_MODE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, -2147483648
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %4
  %39 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %40 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %39, i32 0, i32 3
  %41 = load %struct.ti_ohci*, %struct.ti_ohci** %40, align 8
  %42 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %43 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @reg_write(%struct.ti_ohci* %41, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 28
  store i32 %48, i32* %13, align 4
  %49 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %50 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %55 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %54, i32 0, i32 3
  %56 = load %struct.ti_ohci*, %struct.ti_ohci** %55, align 8
  %57 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %58 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @reg_write(%struct.ti_ohci* %56, i32 %59, i32 268435456)
  br label %67

61:                                               ; preds = %38
  %62 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %63 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %61, %53
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %97

70:                                               ; preds = %67
  %71 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %72 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %71, i32 0, i32 3
  %73 = load %struct.ti_ohci*, %struct.ti_ohci** %72, align 8
  %74 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %75 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @reg_write(%struct.ti_ohci* %73, i32 %76, i32 536870912)
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 8191
  store i32 %79, i32* %7, align 4
  %80 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %81 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %80, i32 0, i32 3
  %82 = load %struct.ti_ohci*, %struct.ti_ohci** %81, align 8
  %83 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %84 = call i32 @reg_read(%struct.ti_ohci* %82, i32 %83)
  %85 = ashr i32 %84, 25
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, 3
  %90 = shl i32 %89, 13
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = shl i32 %93, 12
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %70, %67
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %102 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %101, i32 0, i32 8
  %103 = load %struct.dma_cmd*, %struct.dma_cmd** %102, align 8
  %104 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %105 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %103, i64 %106
  store %struct.dma_cmd* %107, %struct.dma_cmd** %15, align 8
  %108 = load i32, i32* @DMA_CTL_WAIT, align 4
  %109 = call i32 @cpu_to_le32(i32 %108)
  %110 = load %struct.dma_cmd*, %struct.dma_cmd** %15, align 8
  %111 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 15
  %116 = shl i32 %115, 8
  %117 = load i32, i32* %13, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %100, %97
  %120 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %121 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %120, i32 0, i32 3
  %122 = load %struct.ti_ohci*, %struct.ti_ohci** %121, align 8
  %123 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %124 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @reg_write(%struct.ti_ohci* %122, i32 %125, i32 %126)
  %128 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %129 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %128, i32 0, i32 6
  %130 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %131 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = call i32 @dma_prog_region_offset_to_bus(i32* %129, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = or i32 %136, 1
  store i32 %137, i32* %12, align 4
  %138 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %139 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %138, i32 0, i32 3
  %140 = load %struct.ti_ohci*, %struct.ti_ohci** %139, align 8
  %141 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %142 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @reg_write(%struct.ti_ohci* %140, i32 %143, i32 %144)
  %146 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %147 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %146, i32 0, i32 3
  %148 = load %struct.ti_ohci*, %struct.ti_ohci** %147, align 8
  %149 = load i32, i32* @OHCI1394_IsoRecvIntMaskSet, align 4
  %150 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %151 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = shl i32 1, %153
  %155 = call i32 @reg_write(%struct.ti_ohci* %148, i32 %149, i32 %154)
  %156 = call i32 (...) @wmb()
  %157 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %158 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %157, i32 0, i32 3
  %159 = load %struct.ti_ohci*, %struct.ti_ohci** %158, align 8
  %160 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %161 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @reg_write(%struct.ti_ohci* %159, i32 %162, i32 32768)
  %164 = call i32 (...) @mb()
  %165 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %166 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %165, i32 0, i32 3
  %167 = load %struct.ti_ohci*, %struct.ti_ohci** %166, align 8
  %168 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %169 = call i32 @reg_read(%struct.ti_ohci* %167, i32 %168)
  %170 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %171 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %170, i32 0, i32 3
  %172 = load %struct.ti_ohci*, %struct.ti_ohci** %171, align 8
  %173 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %174 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @reg_read(%struct.ti_ohci* %172, i32 %175)
  %177 = and i32 %176, 32768
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %119
  %180 = load i32, i32* @KERN_ERR, align 4
  %181 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %182 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %181, i32 0, i32 3
  %183 = load %struct.ti_ohci*, %struct.ti_ohci** %182, align 8
  %184 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %10, align 8
  %185 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @reg_read(%struct.ti_ohci* %183, i32 %186)
  %188 = call i32 @PRINT(i32 %180, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %187)
  store i32 -1, i32* %5, align 4
  br label %190

189:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %189, %179
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_prog_region_offset_to_bus(i32*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @PRINT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
