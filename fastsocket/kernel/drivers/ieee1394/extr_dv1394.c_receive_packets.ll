; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_receive_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_receive_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_card = type { i32, i32, %struct.TYPE_8__, %struct.frame** }
%struct.TYPE_8__ = type { i64 }
%struct.frame = type { i32, i32, i8**, %struct.DMA_descriptor_block* }
%struct.DMA_descriptor_block = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8** }
%struct.packet = type { i32 }

@MAX_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_card*)* @receive_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_packets(%struct.video_card* %0) #0 {
  %2 = alloca %struct.video_card*, align 8
  %3 = alloca %struct.DMA_descriptor_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.video_card* %0, %struct.video_card** %2, align 8
  store %struct.DMA_descriptor_block* null, %struct.DMA_descriptor_block** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.packet* null, %struct.packet** %5, align 8
  store i32 0, i32* %6, align 4
  store i8** null, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.frame* null, %struct.frame** %10, align 8
  %13 = load %struct.video_card*, %struct.video_card** %2, align 8
  %14 = getelementptr inbounds %struct.video_card, %struct.video_card* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %150, %1
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.video_card*, %struct.video_card** %2, align 8
  %20 = getelementptr inbounds %struct.video_card, %struct.video_card* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %153

23:                                               ; preds = %17
  %24 = load i32, i32* %12, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load %struct.frame*, %struct.frame** %10, align 8
  %28 = icmp ne %struct.frame* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.frame*, %struct.frame** %10, align 8
  %31 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 2
  %32 = load i8**, i8*** %31, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.video_card*, %struct.video_card** %2, align 8
  %36 = getelementptr inbounds %struct.video_card, %struct.video_card* %35, i32 0, i32 3
  %37 = load %struct.frame**, %struct.frame*** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.frame*, %struct.frame** %37, i64 %39
  %41 = load %struct.frame*, %struct.frame** %40, align 8
  %42 = getelementptr inbounds %struct.frame, %struct.frame* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, 1
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.frame*, %struct.frame** %10, align 8
  %47 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  store i8* %45, i8** %48, align 8
  br label %49

49:                                               ; preds = %34, %29, %26, %23
  %50 = load %struct.video_card*, %struct.video_card** %2, align 8
  %51 = getelementptr inbounds %struct.video_card, %struct.video_card* %50, i32 0, i32 3
  %52 = load %struct.frame**, %struct.frame*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.frame*, %struct.frame** %52, i64 %54
  %56 = load %struct.frame*, %struct.frame** %55, align 8
  store %struct.frame* %56, %struct.frame** %10, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %146, %49
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @MAX_PACKETS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %149

61:                                               ; preds = %57
  %62 = load %struct.frame*, %struct.frame** %10, align 8
  %63 = getelementptr inbounds %struct.frame, %struct.frame* %62, i32 0, i32 3
  %64 = load %struct.DMA_descriptor_block*, %struct.DMA_descriptor_block** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.DMA_descriptor_block, %struct.DMA_descriptor_block* %64, i64 %66
  store %struct.DMA_descriptor_block* %67, %struct.DMA_descriptor_block** %3, align 8
  %68 = load %struct.DMA_descriptor_block*, %struct.DMA_descriptor_block** %3, align 8
  %69 = ptrtoint %struct.DMA_descriptor_block* %68 to i64
  %70 = load %struct.frame*, %struct.frame** %10, align 8
  %71 = getelementptr inbounds %struct.frame, %struct.frame* %70, i32 0, i32 3
  %72 = load %struct.DMA_descriptor_block*, %struct.DMA_descriptor_block** %71, align 8
  %73 = ptrtoint %struct.DMA_descriptor_block* %72 to i64
  %74 = sub i64 %69, %73
  %75 = load %struct.frame*, %struct.frame** %10, align 8
  %76 = getelementptr inbounds %struct.frame, %struct.frame* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 %74, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  %81 = load %struct.video_card*, %struct.video_card** %2, align 8
  %82 = getelementptr inbounds %struct.video_card, %struct.video_card* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.packet*
  %86 = load %struct.frame*, %struct.frame** %10, align 8
  %87 = getelementptr inbounds %struct.frame, %struct.frame* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MAX_PACKETS, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.packet, %struct.packet* %85, i64 %91
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.packet, %struct.packet* %92, i64 %94
  store %struct.packet* %95, %struct.packet** %5, align 8
  %96 = load %struct.video_card*, %struct.video_card** %2, align 8
  %97 = getelementptr inbounds %struct.video_card, %struct.video_card* %96, i32 0, i32 2
  %98 = load %struct.packet*, %struct.packet** %5, align 8
  %99 = ptrtoint %struct.packet* %98 to i64
  %100 = load %struct.video_card*, %struct.video_card** %2, align 8
  %101 = getelementptr inbounds %struct.video_card, %struct.video_card* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %99, %103
  %105 = call i32 @dma_region_offset_to_bus(%struct.TYPE_8__* %97, i64 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @MAX_PACKETS, align 4
  %108 = sdiv i32 %107, 2
  %109 = srem i32 %106, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %61
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @MAX_PACKETS, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp eq i32 %112, %114
  br label %116

116:                                              ; preds = %111, %61
  %117 = phi i1 [ true, %61 ], [ %115, %111 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %9, align 4
  %119 = load %struct.DMA_descriptor_block*, %struct.DMA_descriptor_block** %3, align 8
  %120 = getelementptr inbounds %struct.DMA_descriptor_block, %struct.DMA_descriptor_block* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @fill_input_last(%struct.TYPE_7__* %122, i32 %123, i32 512, i32 %124)
  %126 = load %struct.frame*, %struct.frame** %10, align 8
  %127 = getelementptr inbounds %struct.frame, %struct.frame* %126, i32 0, i32 2
  %128 = load i8**, i8*** %127, align 8
  store i8** %128, i8*** %7, align 8
  %129 = load i8**, i8*** %7, align 8
  %130 = icmp ne i8** %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %116
  %132 = load i32, i32* %4, align 4
  %133 = or i32 %132, 1
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load i8**, i8*** %7, align 8
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %116
  %137 = load %struct.DMA_descriptor_block*, %struct.DMA_descriptor_block** %3, align 8
  %138 = getelementptr inbounds %struct.DMA_descriptor_block, %struct.DMA_descriptor_block* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 2
  %144 = load %struct.frame*, %struct.frame** %10, align 8
  %145 = getelementptr inbounds %struct.frame, %struct.frame* %144, i32 0, i32 2
  store i8** %143, i8*** %145, align 8
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %57

149:                                              ; preds = %57
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %17

153:                                              ; preds = %17
  %154 = load %struct.video_card*, %struct.video_card** %2, align 8
  %155 = getelementptr inbounds %struct.video_card, %struct.video_card* %154, i32 0, i32 1
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_region_offset_to_bus(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @fill_input_last(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
