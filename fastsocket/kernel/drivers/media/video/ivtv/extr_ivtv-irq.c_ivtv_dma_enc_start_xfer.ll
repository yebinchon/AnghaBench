; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_dma_enc_start_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_dma_enc_start_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.ivtv* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.ivtv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@IVTV_REG_ENCDMAADDR = common dso_local global i32 0, align 4
@IVTV_REG_DMAXFER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv_stream*)* @ivtv_dma_enc_start_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_dma_enc_start_xfer(%struct.ivtv_stream* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  %3 = alloca %struct.ivtv*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %2, align 8
  %4 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %4, i32 0, i32 4
  %6 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  store %struct.ivtv* %6, %struct.ivtv** %3, align 8
  %7 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %16, i8** %20, align 8
  %21 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %22 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %32 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %30, i8** %34, align 8
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %36 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %39 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, -2147483648
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %47 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  %50 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %51 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %55 = call i32 @ivtv_stream_sync_for_device(%struct.ivtv_stream* %54)
  %56 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %57 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IVTV_REG_ENCDMAADDR, align 4
  %60 = call i32 @write_reg(i32 %58, i32 %59)
  %61 = load i32, i32* @IVTV_REG_DMAXFER, align 4
  %62 = call i32 @read_reg(i32 %61)
  %63 = or i32 %62, 2
  %64 = load i32, i32* @IVTV_REG_DMAXFER, align 4
  %65 = call i32 @write_reg_sync(i32 %63, i32 %64)
  %66 = load i64, i64* @jiffies, align 8
  %67 = call i64 @msecs_to_jiffies(i32 300)
  %68 = add nsw i64 %66, %67
  %69 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %73 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %72, i32 0, i32 0
  %74 = call i32 @add_timer(%struct.TYPE_6__* %73)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ivtv_stream_sync_for_device(%struct.ivtv_stream*) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @write_reg_sync(i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
