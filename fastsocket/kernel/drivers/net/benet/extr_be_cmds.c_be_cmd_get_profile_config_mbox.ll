; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_profile_config_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_profile_config_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_req_get_profile_config* }
%struct.be_cmd_req_get_profile_config = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_PROFILE_CONFIG = common dso_local global i32 0, align 4
@ACTIVE_PROFILE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_profile_config_mbox(%struct.be_adapter* %0, i32 %1, %struct.be_dma_mem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_dma_mem*, align 8
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_req_get_profile_config*, align 8
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %7, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = call i64 @mutex_lock_interruptible(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

16:                                               ; preds = %3
  %17 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %18 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %17)
  store %struct.be_mcc_wrb* %18, %struct.be_mcc_wrb** %8, align 8
  %19 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %19, i32 0, i32 1
  %21 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %20, align 8
  store %struct.be_cmd_req_get_profile_config* %21, %struct.be_cmd_req_get_profile_config** %9, align 8
  %22 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %9, align 8
  %23 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %22, i32 0, i32 0
  %24 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %25 = load i32, i32* @OPCODE_COMMON_GET_PROFILE_CONFIG, align 4
  %26 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %30 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %31 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %23, i32 %24, i32 %25, i32 %28, %struct.be_mcc_wrb* %29, %struct.be_dma_mem* %30)
  %32 = load i32, i32* @ACTIVE_PROFILE_TYPE, align 4
  %33 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %9, align 8
  %34 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %9, align 8
  %37 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %40 = call i32 @lancer_chip(%struct.be_adapter* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %16
  %43 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %9, align 8
  %44 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %16
  %47 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %48 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
