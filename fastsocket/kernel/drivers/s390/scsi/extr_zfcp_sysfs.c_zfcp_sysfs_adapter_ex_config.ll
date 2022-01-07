; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_adapter_ex_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_adapter_ex_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsf_statistics_info = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.fsf_qtcb_bottom_config = type { %struct.fsf_statistics_info }
%struct.zfcp_adapter = type { i32, i32 }

@FSF_FEATURE_MEASUREMENT_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.fsf_statistics_info*)* @zfcp_sysfs_adapter_ex_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_sysfs_adapter_ex_config(%struct.device* %0, %struct.fsf_statistics_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fsf_statistics_info*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.fsf_qtcb_bottom_config*, align 8
  %8 = alloca %struct.zfcp_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fsf_statistics_info* %1, %struct.fsf_statistics_info** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %8, align 8
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FSF_FEATURE_MEASUREMENT_DATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.fsf_qtcb_bottom_config* @kzalloc(i32 4, i32 %28)
  store %struct.fsf_qtcb_bottom_config* %29, %struct.fsf_qtcb_bottom_config** %7, align 8
  %30 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %7, align 8
  %31 = icmp ne %struct.fsf_qtcb_bottom_config* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %27
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %37 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %7, align 8
  %40 = call i32 @zfcp_fsf_exchange_config_data_sync(i32 %38, %struct.fsf_qtcb_bottom_config* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.fsf_statistics_info*, %struct.fsf_statistics_info** %5, align 8
  %45 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %7, align 8
  %46 = getelementptr inbounds %struct.fsf_qtcb_bottom_config, %struct.fsf_qtcb_bottom_config* %45, i32 0, i32 0
  %47 = bitcast %struct.fsf_statistics_info* %44 to i8*
  %48 = bitcast %struct.fsf_statistics_info* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %7, align 8
  %51 = call i32 @kfree(%struct.fsf_qtcb_bottom_config* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %32, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.fsf_qtcb_bottom_config* @kzalloc(i32, i32) #1

declare dso_local i32 @zfcp_fsf_exchange_config_data_sync(i32, %struct.fsf_qtcb_bottom_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.fsf_qtcb_bottom_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
