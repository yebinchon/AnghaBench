; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_packetperbuf_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_packetperbuf_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ohci_iso_recv = type { i32, i32, i32, %struct.TYPE_3__, %struct.ti_ohci* }
%struct.TYPE_3__ = type { i64 }
%struct.ti_ohci = type { i32 }
%struct.dma_cmd = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"IR DMA error - packet too long for buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"IR DMA error - OHCI error code 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*, %struct.ohci_iso_recv*)* @ohci_iso_recv_packetperbuf_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_packetperbuf_task(%struct.hpsb_iso* %0, %struct.ohci_iso_recv* %1) #0 {
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca %struct.ohci_iso_recv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_ohci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  store %struct.ohci_iso_recv* %1, %struct.ohci_iso_recv** %4, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %20 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %19, i32 0, i32 4
  %21 = load %struct.ti_ohci*, %struct.ti_ohci** %20, align 8
  store %struct.ti_ohci* %21, %struct.ti_ohci** %7, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %165, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %25 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %168

28:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %29 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %30 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.dma_cmd*
  %34 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %35 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %33, i64 %37
  store %struct.dma_cmd* %38, %struct.dma_cmd** %9, align 8
  %39 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %40 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = ashr i32 %42, 16
  store i32 %43, i32* %10, align 4
  %44 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %45 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = and i32 %47, 65535
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 31
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %12, align 1
  %52 = load i8, i8* %12, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %28
  br label %169

55:                                               ; preds = %28
  %56 = load i8, i8* %12, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 17
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %61 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %8, align 4
  br label %82

65:                                               ; preds = %55
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = call i32 (i32, i8*, ...) @PRINT(i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %81

72:                                               ; preds = %65
  %73 = load i8, i8* %12, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (i32, i8*, ...) @PRINT(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %84 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %83, i32 0, i32 1
  %85 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %86 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %89 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %93 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dma_region_sync_for_cpu(%struct.TYPE_4__* %84, i32 %91, i32 %94)
  %96 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %97 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %100 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  store i32 %102, i32* %14, align 4
  %103 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %104 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8* %109, i8** %13, align 8
  %110 = load i32, i32* %14, align 4
  %111 = add i32 %110, 8
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, 8
  store i32 %113, i32* %8, align 4
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %121, 8
  %123 = or i32 %117, %122
  %124 = and i32 %123, 8191
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %15, align 2
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 5
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 63
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %16, align 1
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 5
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = ashr i32 %135, 6
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %17, align 1
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 4
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 15
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %18, align 1
  %144 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %148 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i16, i16* %15, align 2
  %151 = load i8, i8* %16, align 1
  %152 = load i8, i8* %17, align 1
  %153 = load i8, i8* %18, align 1
  %154 = call i32 @hpsb_iso_packet_received(%struct.hpsb_iso* %144, i32 %145, i32 %146, i32 %149, i16 zeroext %150, i8 zeroext %151, i8 zeroext %152, i8 zeroext %153)
  %155 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %156 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %159 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  store i32 1, i32* %6, align 4
  %160 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %161 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %164 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %82
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %22

168:                                              ; preds = %22
  br label %169

169:                                              ; preds = %168, %54
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %174 = call i32 @hpsb_iso_wake(%struct.hpsb_iso* %173)
  br label %175

175:                                              ; preds = %172, %169
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i32 @dma_region_sync_for_cpu(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hpsb_iso_packet_received(%struct.hpsb_iso*, i32, i32, i32, i16 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @hpsb_iso_wake(%struct.hpsb_iso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
