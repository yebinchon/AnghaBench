; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat1_dma_start_null_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat1_dma_start_null_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_dma_chan = type { i32, i32, %struct.ioat_chan_common }
%struct.ioat_chan_common = type { i32 }
%struct.ioat_desc_sw = type { %struct.TYPE_4__, i32, %struct.ioat_dma_descriptor* }
%struct.TYPE_4__ = type { i32 }
%struct.ioat_dma_descriptor = type { i64, i64, i64, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Unable to start null desc - get next desc failed\0A\00", align 1
@NULL_DESC_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_dma_chan*)* @ioat1_dma_start_null_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat1_dma_start_null_desc(%struct.ioat_dma_chan* %0) #0 {
  %2 = alloca %struct.ioat_dma_chan*, align 8
  %3 = alloca %struct.ioat_chan_common*, align 8
  %4 = alloca %struct.ioat_desc_sw*, align 8
  %5 = alloca %struct.ioat_dma_descriptor*, align 8
  store %struct.ioat_dma_chan* %0, %struct.ioat_dma_chan** %2, align 8
  %6 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %6, i32 0, i32 2
  store %struct.ioat_chan_common* %7, %struct.ioat_chan_common** %3, align 8
  %8 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %12 = call %struct.ioat_desc_sw* @ioat1_dma_get_next_descriptor(%struct.ioat_dma_chan* %11)
  store %struct.ioat_desc_sw* %12, %struct.ioat_desc_sw** %4, align 8
  %13 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %4, align 8
  %14 = icmp ne %struct.ioat_desc_sw* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %17 = call i32 @to_dev(%struct.ioat_chan_common* %16)
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_bh(i32* %20)
  br label %68

22:                                               ; preds = %1
  %23 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %4, align 8
  %24 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %23, i32 0, i32 2
  %25 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %24, align 8
  store %struct.ioat_dma_descriptor* %25, %struct.ioat_dma_descriptor** %5, align 8
  %26 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %29 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %32 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @NULL_DESC_BUFFER_SIZE, align 4
  %38 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %39 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %41 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %43 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %4, align 8
  %45 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %44, i32 0, i32 0
  %46 = call i32 @async_tx_ack(%struct.TYPE_4__* %45)
  %47 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %5, align 8
  %48 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %4, align 8
  %50 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %49, i32 0, i32 1
  %51 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %52 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %51, i32 0, i32 1
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %55 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %4, align 8
  %56 = call i32 @dump_desc_dbg(%struct.ioat_dma_chan* %54, %struct.ioat_desc_sw* %55)
  %57 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %58 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %4, align 8
  %59 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ioat_set_chainaddr(%struct.ioat_dma_chan* %57, i32 %61)
  %63 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %64 = call i32 @ioat_start(%struct.ioat_chan_common* %63)
  %65 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %66 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_bh(i32* %66)
  br label %68

68:                                               ; preds = %22, %15
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ioat_desc_sw* @ioat1_dma_get_next_descriptor(%struct.ioat_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @to_dev(%struct.ioat_chan_common*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @async_tx_ack(%struct.TYPE_4__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dump_desc_dbg(%struct.ioat_dma_chan*, %struct.ioat_desc_sw*) #1

declare dso_local i32 @ioat_set_chainaddr(%struct.ioat_dma_chan*, i32) #1

declare dso_local i32 @ioat_start(%struct.ioat_chan_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
