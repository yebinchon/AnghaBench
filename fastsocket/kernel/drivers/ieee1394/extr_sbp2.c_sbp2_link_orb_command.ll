; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_link_orb_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_link_orb_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i32, i32, i32, i32, i64, %struct.sbp2_command_orb*, i32, %struct.sbp2_fwhost_info* }
%struct.sbp2_command_orb = type { i64, i32 }
%struct.sbp2_fwhost_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sbp2_command_info = type { i64, %struct.sbp2_command_orb }

@SBP2_ORB_POINTER_OFFSET = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SBP2_DOORBELL_OFFSET = common dso_local global i64 0, align 8
@sbp2util_write_doorbell = common dso_local global i32 0, align 4
@sbp2util_write_orb_pointer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_lu*, %struct.sbp2_command_info*)* @sbp2_link_orb_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_link_orb_command(%struct.sbp2_lu* %0, %struct.sbp2_command_info* %1) #0 {
  %3 = alloca %struct.sbp2_lu*, align 8
  %4 = alloca %struct.sbp2_command_info*, align 8
  %5 = alloca %struct.sbp2_fwhost_info*, align 8
  %6 = alloca %struct.sbp2_command_orb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %3, align 8
  store %struct.sbp2_command_info* %1, %struct.sbp2_command_info** %4, align 8
  %12 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %13 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %12, i32 0, i32 7
  %14 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %13, align 8
  store %struct.sbp2_fwhost_info* %14, %struct.sbp2_fwhost_info** %5, align 8
  %15 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %16 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %19 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %18, i32 0, i32 3
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %23 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %22, i32 0, i32 5
  %24 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %23, align 8
  store %struct.sbp2_command_orb* %24, %struct.sbp2_command_orb** %6, align 8
  %25 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %26 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %6, align 8
  %29 = icmp ne %struct.sbp2_command_orb* %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* @SBP2_ORB_POINTER_OFFSET, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %5, align 8
  %37 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ORB_SET_NODE_ID(i32 %40)
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %41, i64* %42, align 16
  %43 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %44 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %48 = call i32 @sbp2util_cpu_to_be32_buffer(i64* %47, i32 8)
  store i64 8, i64* %10, align 8
  br label %83

49:                                               ; preds = %2
  %50 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %5, align 8
  %51 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_sync_single_for_cpu(i32 %55, i64 %56, i32 16, i32 %57)
  %59 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %60 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cpu_to_be32(i64 %61)
  %63 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %6, align 8
  %64 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = call i32 (...) @wmb()
  %66 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %6, align 8
  %67 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %5, align 8
  %69 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* @DMA_TO_DEVICE, align 4
  %76 = call i32 @dma_sync_single_for_device(i32 %73, i64 %74, i32 16, i32 %75)
  %77 = load i64, i64* @SBP2_DOORBELL_OFFSET, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %82, align 16
  store i64 4, i64* %10, align 8
  br label %83

83:                                               ; preds = %49, %30
  %84 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %85 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %84, i32 0, i32 1
  %86 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %87 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %86, i32 0, i32 5
  store %struct.sbp2_command_orb* %85, %struct.sbp2_command_orb** %87, align 8
  %88 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %89 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %92 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %94 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %93, i32 0, i32 3
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %98 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @sbp2util_node_write_no_wait(i32 %99, i32 %100, i64* %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %83
  %106 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %107 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @scsi_block_requests(i32 %108)
  %110 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %111 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %110, i32 0, i32 0
  %112 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %6, align 8
  %113 = icmp ne %struct.sbp2_command_orb* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @sbp2util_write_doorbell, align 4
  br label %118

116:                                              ; preds = %105
  %117 = load i32, i32* @sbp2util_write_orb_pointer, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = call i32 @PREPARE_WORK(i32* %111, i32 %119)
  %121 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %122 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %121, i32 0, i32 0
  %123 = call i32 @schedule_work(i32* %122)
  br label %124

124:                                              ; preds = %118, %83
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ORB_SET_NODE_ID(i32) #1

declare dso_local i32 @sbp2util_cpu_to_be32_buffer(i64*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i64, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @sbp2util_node_write_no_wait(i32, i32, i64*, i64) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @PREPARE_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
