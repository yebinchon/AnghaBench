; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_nvm.c_iwl_nvm_read_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_nvm.c_iwl_nvm_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_nvm_access_cmd = type { i32 }
%struct.iwl_nvm_access_resp = type { i32*, i32, i32, i32 }
%struct.iwl_rx_packet = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_host_cmd = type { i32, i32*, %struct.iwl_rx_packet*, i32, i32 }

@CMD_SYNC = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@NVM_ACCESS_CMD = common dso_local global i32 0, align 4
@IWL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Bad return from NVM_ACCES_COMMAND (0x%08X)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"NVM access command failed with status %d (device: %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"NVM ACCESS response with invalid offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32, i32, i32*)* @iwl_nvm_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_nvm_read_chunk(%struct.iwl_mvm* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iwl_nvm_access_cmd, align 4
  %13 = alloca %struct.iwl_nvm_access_resp*, align 8
  %14 = alloca %struct.iwl_rx_packet*, align 8
  %15 = alloca %struct.iwl_host_cmd, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = bitcast %struct.iwl_nvm_access_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 0
  %22 = load i32, i32* @CMD_SYNC, align 4
  %23 = load i32, i32* @CMD_WANT_SKB, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 2
  store %struct.iwl_rx_packet* null, %struct.iwl_rx_packet** %26, align 8
  %27 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 3
  %28 = ptrtoint %struct.iwl_nvm_access_cmd* %12 to i32
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 4
  %30 = load i32, i32* @NVM_ACCESS_CMD, align 4
  store i32 %30, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @iwl_nvm_fill_read(%struct.iwl_nvm_access_cmd* %12, i32 %31, i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 4, i32* %37, align 4
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %39 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %38, %struct.iwl_host_cmd* %15)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  br label %119

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 2
  %46 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %45, align 8
  store %struct.iwl_rx_packet* %46, %struct.iwl_rx_packet** %14, align 8
  %47 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %14, align 8
  %48 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IWL_CMD_FAILED_MSK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %56 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %14, align 8
  %57 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  br label %116

63:                                               ; preds = %44
  %64 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %14, align 8
  %65 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = bitcast i8* %67 to %struct.iwl_nvm_access_resp*
  store %struct.iwl_nvm_access_resp* %68, %struct.iwl_nvm_access_resp** %13, align 8
  %69 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %70 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @le16_to_cpu(i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %74 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %78 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16_to_cpu(i32 %79)
  store i32 %80, i32* %18, align 4
  %81 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %82 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %19, align 8
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %63
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %87, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  br label %116

97:                                               ; preds = %63
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %116

107:                                              ; preds = %97
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32*, i32** %19, align 8
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @memcpy(i32* %111, i32* %112, i32 %113)
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %107, %101, %86, %54
  %117 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %15)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %42
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_nvm_fill_read(%struct.iwl_nvm_access_cmd*, i32, i32, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, ...) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
