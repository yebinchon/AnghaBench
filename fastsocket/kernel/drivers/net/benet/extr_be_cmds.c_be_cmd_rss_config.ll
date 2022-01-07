; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_rss_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_rss_config = type { i32, i32, %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@__const.be_cmd_rss_config.myhash = private unnamed_addr constant [10 x i32] [i32 366231461, i32 624191578, i32 1602709818, i32 1449675086, i32 869231187, i32 942879942, i32 1991000663, i32 1504854706, i32 1051212802, i32 1242628868], align 16
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@OPCODE_ETH_RSS_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_rss_config(%struct.be_adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca %struct.be_cmd_req_rss_config*, align 8
  %12 = alloca [10 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = bitcast [10 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([10 x i32]* @__const.be_cmd_rss_config.myhash to i8*), i64 40, i1 false)
  %15 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %80

20:                                               ; preds = %4
  %21 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %22 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %21)
  store %struct.be_mcc_wrb* %22, %struct.be_mcc_wrb** %10, align 8
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %24 = call %struct.be_cmd_req_rss_config* @embedded_payload(%struct.be_mcc_wrb* %23)
  store %struct.be_cmd_req_rss_config* %24, %struct.be_cmd_req_rss_config** %11, align 8
  %25 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %25, i32 0, i32 2
  %27 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %28 = load i32, i32* @OPCODE_ETH_RSS_CONFIG, align 4
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %30 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %26, i32 %27, i32 %28, i32 40, %struct.be_mcc_wrb* %29, i32* null)
  %31 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %40 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @fls(i32 %41)
  %43 = sub nsw i32 %42, 1
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %46 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %48 = call i64 @lancer_chip(%struct.be_adapter* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %20
  %51 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %52 = call i64 @skyhawk_chip(%struct.be_adapter* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %20
  %55 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %56 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %60 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memcpy(i32 %61, i32* %62, i32 %63)
  %65 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %66 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %69 = call i32 @memcpy(i32 %67, i32* %68, i32 40)
  %70 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %11, align 8
  %71 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @be_dws_cpu_to_le(i32 %72, i32 4)
  %74 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %75 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %58, %19
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #2

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #2

declare dso_local %struct.be_cmd_req_rss_config* @embedded_payload(%struct.be_mcc_wrb*) #2

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @fls(i32) #2

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #2

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @be_dws_cpu_to_le(i32, i32) #2

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
