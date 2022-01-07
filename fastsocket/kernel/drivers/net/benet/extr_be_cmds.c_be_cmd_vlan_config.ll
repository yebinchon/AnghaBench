; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_vlan_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_vlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_vlan_config = type { i32, i32, i32, i32, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_VLAN_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_vlan_config(%struct.be_adapter* %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.be_mcc_wrb*, align 8
  %14 = alloca %struct.be_cmd_req_vlan_config*, align 8
  %15 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %20 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %19)
  store %struct.be_mcc_wrb* %20, %struct.be_mcc_wrb** %13, align 8
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %22 = icmp ne %struct.be_mcc_wrb* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %15, align 4
  br label %65

26:                                               ; preds = %6
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %28 = call %struct.be_cmd_req_vlan_config* @embedded_payload(%struct.be_mcc_wrb* %27)
  store %struct.be_cmd_req_vlan_config* %28, %struct.be_cmd_req_vlan_config** %14, align 8
  %29 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %14, align 8
  %30 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %29, i32 0, i32 5
  %31 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %32 = load i32, i32* @OPCODE_COMMON_NTWK_VLAN_CONFIG, align 4
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %34 = call i32 @be_wrb_cmd_hdr_prepare(i32* %30, i32 %31, i32 %32, i32 32, %struct.be_mcc_wrb* %33, i32* null)
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %14, align 8
  %37 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %14, align 8
  %40 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %14, align 8
  %43 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %14, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %26
  %51 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %14, align 8
  %52 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %14, align 8
  %56 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i32 %53, i32* %54, i32 %60)
  br label %62

62:                                               ; preds = %50, %26
  %63 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %64 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %63)
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %62, %23
  %66 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load i32, i32* %15, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_vlan_config* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
