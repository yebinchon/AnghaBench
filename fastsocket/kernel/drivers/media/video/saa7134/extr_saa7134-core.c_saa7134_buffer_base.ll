; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_buffer_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_buffer_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_buf = type { i32 }
%struct.videobuf_dmabuf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @saa7134_buffer_base(%struct.saa7134_buf* %0) #0 {
  %2 = alloca %struct.saa7134_buf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.saa7134_buf* %0, %struct.saa7134_buf** %2, align 8
  %5 = load %struct.saa7134_buf*, %struct.saa7134_buf** %2, align 8
  %6 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %5, i32 0, i32 0
  %7 = call %struct.videobuf_dmabuf* @videobuf_to_dma(i32* %6)
  store %struct.videobuf_dmabuf* %7, %struct.videobuf_dmabuf** %4, align 8
  %8 = load %struct.saa7134_buf*, %struct.saa7134_buf** %2, align 8
  %9 = call i32 @saa7134_buffer_startpage(%struct.saa7134_buf* %8)
  %10 = mul nsw i32 %9, 4096
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %4, align 8
  %13 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(i32*) #1

declare dso_local i32 @saa7134_buffer_startpage(%struct.saa7134_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
