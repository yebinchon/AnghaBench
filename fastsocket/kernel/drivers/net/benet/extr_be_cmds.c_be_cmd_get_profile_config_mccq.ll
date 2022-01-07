; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_profile_config_mccq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_profile_config_mccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_req_get_profile_config* }
%struct.be_cmd_req_get_profile_config = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_PROFILE_CONFIG = common dso_local global i32 0, align 4
@ACTIVE_PROFILE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_profile_config_mccq(%struct.be_adapter* %0, i32 %1, %struct.be_dma_mem* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_dma_mem*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_get_profile_config*, align 8
  %9 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %6, align 8
  %10 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %14 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %13)
  store %struct.be_mcc_wrb* %14, %struct.be_mcc_wrb** %7, align 8
  %15 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %16 = icmp ne %struct.be_mcc_wrb* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %22 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 1
  %23 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %22, align 8
  store %struct.be_cmd_req_get_profile_config* %23, %struct.be_cmd_req_get_profile_config** %8, align 8
  %24 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %8, align 8
  %25 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %24, i32 0, i32 0
  %26 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %27 = load i32, i32* @OPCODE_COMMON_GET_PROFILE_CONFIG, align 4
  %28 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %33 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %25, i32 %26, i32 %27, i32 %30, %struct.be_mcc_wrb* %31, %struct.be_dma_mem* %32)
  %34 = load i32, i32* @ACTIVE_PROFILE_TYPE, align 4
  %35 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %8, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %8, align 8
  %39 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %42 = call i32 @lancer_chip(%struct.be_adapter* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %20
  %45 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %8, align 8
  %46 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %20
  %49 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %50 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %17
  %52 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
