; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_send_tsk_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_send_tsk_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.srp_iu = type { i32, %struct.srp_tsk_mgmt* }
%struct.srp_tsk_mgmt = type { i32, i32, i32, i32, i32 }

@SRP_IU_TSK_MGMT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SRP_TSK_MGMT = common dso_local global i32 0, align 4
@SRP_TAG_TSK_MGMT = common dso_local global i32 0, align 4
@SRP_ABORT_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*, i32, i32, i32)* @srp_send_tsk_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_send_tsk_mgmt(%struct.srp_target_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.srp_target_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.srp_iu*, align 8
  %12 = alloca %struct.srp_tsk_mgmt*, align 8
  store %struct.srp_target_port* %0, %struct.srp_target_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %14 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ib_device*, %struct.ib_device** %18, align 8
  store %struct.ib_device* %19, %struct.ib_device** %10, align 8
  %20 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %21 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %26 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %4
  store i32 -1, i32* %5, align 4
  br label %101

30:                                               ; preds = %24
  %31 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %32 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %31, i32 0, i32 0
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %35 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %38 = load i32, i32* @SRP_IU_TSK_MGMT, align 4
  %39 = call %struct.srp_iu* @__srp_get_tx_iu(%struct.srp_target_port* %37, i32 %38)
  store %struct.srp_iu* %39, %struct.srp_iu** %11, align 8
  %40 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %41 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load %struct.srp_iu*, %struct.srp_iu** %11, align 8
  %44 = icmp ne %struct.srp_iu* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %101

46:                                               ; preds = %30
  %47 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %48 = load %struct.srp_iu*, %struct.srp_iu** %11, align 8
  %49 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %47, i32 %50, i32 20, i32 %51)
  %53 = load %struct.srp_iu*, %struct.srp_iu** %11, align 8
  %54 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %53, i32 0, i32 1
  %55 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %54, align 8
  store %struct.srp_tsk_mgmt* %55, %struct.srp_tsk_mgmt** %12, align 8
  %56 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %12, align 8
  %57 = call i32 @memset(%struct.srp_tsk_mgmt* %56, i32 0, i32 20)
  %58 = load i32, i32* @SRP_TSK_MGMT, align 4
  %59 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %12, align 8
  %60 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 48
  %63 = call i32 @cpu_to_be64(i32 %62)
  %64 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %12, align 8
  %65 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SRP_TAG_TSK_MGMT, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %12, align 8
  %70 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %12, align 8
  %73 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %12, align 8
  %76 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %78 = load %struct.srp_iu*, %struct.srp_iu** %11, align 8
  %79 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DMA_TO_DEVICE, align 4
  %82 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %77, i32 %80, i32 20, i32 %81)
  %83 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %84 = load %struct.srp_iu*, %struct.srp_iu** %11, align 8
  %85 = call i64 @srp_post_send(%struct.srp_target_port* %83, %struct.srp_iu* %84, i32 20)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %46
  %88 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %89 = load %struct.srp_iu*, %struct.srp_iu** %11, align 8
  %90 = load i32, i32* @SRP_IU_TSK_MGMT, align 4
  %91 = call i32 @srp_put_tx_iu(%struct.srp_target_port* %88, %struct.srp_iu* %89, i32 %90)
  store i32 -1, i32* %5, align 4
  br label %101

92:                                               ; preds = %46
  %93 = load %struct.srp_target_port*, %struct.srp_target_port** %6, align 8
  %94 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %93, i32 0, i32 0
  %95 = load i32, i32* @SRP_ABORT_TIMEOUT_MS, align 4
  %96 = call i32 @msecs_to_jiffies(i32 %95)
  %97 = call i32 @wait_for_completion_timeout(i32* %94, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  store i32 -1, i32* %5, align 4
  br label %101

100:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %99, %87, %45, %29
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.srp_iu* @__srp_get_tx_iu(%struct.srp_target_port*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.srp_tsk_mgmt*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i64 @srp_post_send(%struct.srp_target_port*, %struct.srp_iu*, i32) #1

declare dso_local i32 @srp_put_tx_iu(%struct.srp_target_port*, %struct.srp_iu*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
