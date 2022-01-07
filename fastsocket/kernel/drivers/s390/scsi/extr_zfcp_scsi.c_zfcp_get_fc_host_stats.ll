; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_get_fc_host_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_get_fc_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.zfcp_adapter = type { i64, i32, i32 }
%struct.fsf_qtcb_bottom_port = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @zfcp_get_fc_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @zfcp_get_fc_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.fc_host_statistics*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.fc_host_statistics*, align 8
  %6 = alloca %struct.fsf_qtcb_bottom_port*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %13, %struct.zfcp_adapter** %4, align 8
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %15 = call %struct.fc_host_statistics* @zfcp_init_fc_host_stats(%struct.zfcp_adapter* %14)
  store %struct.fc_host_statistics* %15, %struct.fc_host_statistics** %5, align 8
  %16 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %17 = icmp ne %struct.fc_host_statistics* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %68

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.fsf_qtcb_bottom_port* @kzalloc(i32 8, i32 %20)
  store %struct.fsf_qtcb_bottom_port* %21, %struct.fsf_qtcb_bottom_port** %6, align 8
  %22 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %23 = icmp ne %struct.fsf_qtcb_bottom_port* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %68

25:                                               ; preds = %19
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %30 = call i32 @zfcp_fsf_exchange_port_data_sync(i32 %28, %struct.fsf_qtcb_bottom_port* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %35 = call i32 @kfree(%struct.fsf_qtcb_bottom_port* %34)
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %68

36:                                               ; preds = %25
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* @HZ, align 8
  %44 = sdiv i64 %42, %43
  %45 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %50 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %55 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @zfcp_adjust_fc_host_stats(%struct.fc_host_statistics* %54, %struct.fsf_qtcb_bottom_port* %55, i32 %58)
  br label %64

60:                                               ; preds = %41, %36
  %61 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %62 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %63 = call i32 @zfcp_set_fc_host_stats(%struct.fc_host_statistics* %61, %struct.fsf_qtcb_bottom_port* %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %66 = call i32 @kfree(%struct.fsf_qtcb_bottom_port* %65)
  %67 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  store %struct.fc_host_statistics* %67, %struct.fc_host_statistics** %2, align 8
  br label %68

68:                                               ; preds = %64, %33, %24, %18
  %69 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %2, align 8
  ret %struct.fc_host_statistics* %69
}

declare dso_local %struct.fc_host_statistics* @zfcp_init_fc_host_stats(%struct.zfcp_adapter*) #1

declare dso_local %struct.fsf_qtcb_bottom_port* @kzalloc(i32, i32) #1

declare dso_local i32 @zfcp_fsf_exchange_port_data_sync(i32, %struct.fsf_qtcb_bottom_port*) #1

declare dso_local i32 @kfree(%struct.fsf_qtcb_bottom_port*) #1

declare dso_local i32 @zfcp_adjust_fc_host_stats(%struct.fc_host_statistics*, %struct.fsf_qtcb_bottom_port*, i32) #1

declare dso_local i32 @zfcp_set_fc_host_stats(%struct.fc_host_statistics*, %struct.fsf_qtcb_bottom_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
