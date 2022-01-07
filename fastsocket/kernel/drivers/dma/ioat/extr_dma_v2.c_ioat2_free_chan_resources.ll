; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.ioat2_dma_chan = type { i32, i64, i32, i32*, i64, i64, %struct.ioat_chan_common }
%struct.ioat_chan_common = type { i64, i64, i32, i32, i32, i32, %struct.ioatdma_device* }
%struct.ioatdma_device = type { i32, i32 (%struct.ioat_chan_common.0*)*, i32 (i64)* }
%struct.ioat_chan_common.0 = type opaque
%struct.ioat_ring_ent = type { i32 }

@IOAT_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"freeing %d idle descriptors\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Freeing %d in use descriptors!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioat2_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.ioat2_dma_chan*, align 8
  %4 = alloca %struct.ioat_chan_common*, align 8
  %5 = alloca %struct.ioatdma_device*, align 8
  %6 = alloca %struct.ioat_ring_ent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = call %struct.ioat2_dma_chan* @to_ioat2_chan(%struct.dma_chan* %10)
  store %struct.ioat2_dma_chan* %11, %struct.ioat2_dma_chan** %3, align 8
  %12 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %12, i32 0, i32 6
  store %struct.ioat_chan_common* %13, %struct.ioat_chan_common** %4, align 8
  %14 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %15 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %14, i32 0, i32 6
  %16 = load %struct.ioatdma_device*, %struct.ioatdma_device** %15, align 8
  store %struct.ioatdma_device* %16, %struct.ioatdma_device** %5, align 8
  %17 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %141

26:                                               ; preds = %1
  %27 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %28 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %27, i32 0, i32 5
  %29 = call i32 @tasklet_disable(i32* %28)
  %30 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %31 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %30, i32 0, i32 4
  %32 = call i32 @del_timer_sync(i32* %31)
  %33 = load %struct.ioatdma_device*, %struct.ioatdma_device** %5, align 8
  %34 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %33, i32 0, i32 2
  %35 = load i32 (i64)*, i32 (i64)** %34, align 8
  %36 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %37 = ptrtoint %struct.ioat2_dma_chan* %36 to i64
  %38 = call i32 %35(i64 %37)
  %39 = load %struct.ioatdma_device*, %struct.ioatdma_device** %5, align 8
  %40 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %39, i32 0, i32 1
  %41 = load i32 (%struct.ioat_chan_common.0*)*, i32 (%struct.ioat_chan_common.0*)** %40, align 8
  %42 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %43 = bitcast %struct.ioat_chan_common* %42 to %struct.ioat_chan_common.0*
  %44 = call i32 %41(%struct.ioat_chan_common.0* %43)
  %45 = load i32, i32* @IOAT_RUN, align 4
  %46 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %47 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %46, i32 0, i32 3
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %50 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %49, i32 0, i32 2
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %53 = call i32 @ioat2_ring_space(%struct.ioat2_dma_chan* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %55 = call i32 @to_dev(%struct.ioat_chan_common* %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %74, %26
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %64 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %65 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = call %struct.ioat_ring_ent* @ioat2_get_ring_ent(%struct.ioat2_dma_chan* %63, i64 %69)
  store %struct.ioat_ring_ent* %70, %struct.ioat_ring_ent** %6, align 8
  %71 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %6, align 8
  %72 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %73 = call i32 @ioat2_free_ring_ent(%struct.ioat_ring_ent* %71, %struct.dma_chan* %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %83 = call i32 @to_dev(%struct.ioat_chan_common* %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81, %77
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %110, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %97 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %98 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = call %struct.ioat_ring_ent* @ioat2_get_ring_ent(%struct.ioat2_dma_chan* %96, i64 %102)
  store %struct.ioat_ring_ent* %103, %struct.ioat_ring_ent** %6, align 8
  %104 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %105 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %6, align 8
  %106 = call i32 @dump_desc_dbg(%struct.ioat2_dma_chan* %104, %struct.ioat_ring_ent* %105)
  %107 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %6, align 8
  %108 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %109 = call i32 @ioat2_free_ring_ent(%struct.ioat_ring_ent* %107, %struct.dma_chan* %108)
  br label %110

110:                                              ; preds = %95
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %89

113:                                              ; preds = %89
  %114 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %115 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %119 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %118, i32 0, i32 3
  store i32* null, i32** %119, align 8
  %120 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %121 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.ioatdma_device*, %struct.ioatdma_device** %5, align 8
  %123 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %126 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %129 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @pci_pool_free(i32 %124, i32 %127, i64 %130)
  %132 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %133 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %132, i32 0, i32 2
  %134 = call i32 @spin_unlock_bh(i32* %133)
  %135 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %136 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %138 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %140 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %113, %25
  ret void
}

declare dso_local %struct.ioat2_dma_chan* @to_ioat2_chan(%struct.dma_chan*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ioat2_ring_space(%struct.ioat2_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @to_dev(%struct.ioat_chan_common*) #1

declare dso_local %struct.ioat_ring_ent* @ioat2_get_ring_ent(%struct.ioat2_dma_chan*, i64) #1

declare dso_local i32 @ioat2_free_ring_ent(%struct.ioat_ring_ent*, %struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dump_desc_dbg(%struct.ioat2_dma_chan*, %struct.ioat_ring_ent*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_pool_free(i32, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
