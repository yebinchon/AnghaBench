; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_profile_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_profile_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_set_profile_config = type { %struct.TYPE_5__, i8*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8* }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_PROFILE_CONFIG = common dso_local global i32 0, align 4
@NIC_RESOURCE_DESC_TYPE_V0 = common dso_local global i32 0, align 4
@RESOURCE_DESC_SIZE_V0 = common dso_local global i32 0, align 4
@QUN = common dso_local global i32 0, align 4
@IMM = common dso_local global i32 0, align 4
@NOSV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_profile_config(%struct.be_adapter* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_set_profile_config*, align 8
  %9 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
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
  br label %125

20:                                               ; preds = %3
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %22 = call %struct.be_cmd_req_set_profile_config* @embedded_payload(%struct.be_mcc_wrb* %21)
  store %struct.be_cmd_req_set_profile_config* %22, %struct.be_cmd_req_set_profile_config** %8, align 8
  %23 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %24 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %23, i32 0, i32 2
  %25 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %26 = load i32, i32* @OPCODE_COMMON_SET_PROFILE_CONFIG, align 4
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %28 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_6__* %24, i32 %25, i32 %26, i32 112, %struct.be_mcc_wrb* %27, i32* null)
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %31 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = call i8* @cpu_to_le32(i32 1)
  %34 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %35 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @NIC_RESOURCE_DESC_TYPE_V0, align 4
  %37 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %38 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 19
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @RESOURCE_DESC_SIZE_V0, align 4
  %42 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %43 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 19
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @QUN, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* @IMM, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @NOSV, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %55 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %61 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 18
  store i32 %59, i32* %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %65 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 17
  store i8* %63, i8** %66, align 8
  %67 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %68 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 65535, i32* %69, align 4
  %70 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %71 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 65535, i32* %72, align 8
  %73 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %74 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  store i32 65535, i32* %75, align 4
  %76 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %77 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i32 65535, i32* %78, align 8
  %79 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %80 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  store i32 65535, i32* %81, align 4
  %82 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %83 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  store i32 65535, i32* %84, align 8
  %85 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %86 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 7
  store i32 65535, i32* %87, align 4
  %88 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %89 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 8
  store i32 65535, i32* %90, align 8
  %91 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %92 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 9
  store i32 65535, i32* %93, align 4
  %94 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %95 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 10
  store i32 65535, i32* %96, align 8
  %97 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %98 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 11
  store i32 65535, i32* %99, align 4
  %100 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %101 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 12
  store i32 255, i32* %102, align 8
  %103 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %104 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 13
  store i32 -1, i32* %105, align 4
  %106 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %107 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 14
  store i32 255, i32* %108, align 8
  %109 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %110 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 15
  store i32 15, i32* %111, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i8* @cpu_to_le32(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %116 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 13
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %8, align 8
  %121 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 16
  store i8* %119, i8** %122, align 8
  %123 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %124 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %123)
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %20, %17
  %126 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %127 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock_bh(i32* %127)
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_set_profile_config* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_6__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
