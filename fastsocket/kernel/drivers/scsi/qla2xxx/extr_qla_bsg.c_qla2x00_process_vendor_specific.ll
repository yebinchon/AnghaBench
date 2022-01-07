; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_vendor_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_vendor_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_process_vendor_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_process_vendor_specific(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %4 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %5 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %58 [
    i32 135, label %13
    i32 141, label %16
    i32 140, label %19
    i32 142, label %22
    i32 136, label %25
    i32 138, label %28
    i32 134, label %31
    i32 130, label %34
    i32 131, label %37
    i32 133, label %40
    i32 129, label %43
    i32 128, label %46
    i32 132, label %49
    i32 139, label %52
    i32 137, label %55
  ]

13:                                               ; preds = %1
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %15 = call i32 @qla2x00_process_loopback(%struct.fc_bsg_job* %14)
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %18 = call i32 @qla84xx_reset(%struct.fc_bsg_job* %17)
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %21 = call i32 @qla84xx_updatefw(%struct.fc_bsg_job* %20)
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %24 = call i32 @qla84xx_mgmt_cmd(%struct.fc_bsg_job* %23)
  store i32 %24, i32* %2, align 4
  br label %61

25:                                               ; preds = %1
  %26 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %27 = call i32 @qla24xx_iidma(%struct.fc_bsg_job* %26)
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %1
  %29 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %30 = call i32 @qla24xx_proc_fcp_prio_cfg_cmd(%struct.fc_bsg_job* %29)
  store i32 %30, i32* %2, align 4
  br label %61

31:                                               ; preds = %1
  %32 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %33 = call i32 @qla2x00_read_optrom(%struct.fc_bsg_job* %32)
  store i32 %33, i32* %2, align 4
  br label %61

34:                                               ; preds = %1
  %35 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %36 = call i32 @qla2x00_update_optrom(%struct.fc_bsg_job* %35)
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %1
  %38 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %39 = call i32 @qla2x00_update_fru_versions(%struct.fc_bsg_job* %38)
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %1
  %41 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %42 = call i32 @qla2x00_read_fru_status(%struct.fc_bsg_job* %41)
  store i32 %42, i32* %2, align 4
  br label %61

43:                                               ; preds = %1
  %44 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %45 = call i32 @qla2x00_write_fru_status(%struct.fc_bsg_job* %44)
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %1
  %47 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %48 = call i32 @qla2x00_write_i2c(%struct.fc_bsg_job* %47)
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %1
  %50 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %51 = call i32 @qla2x00_read_i2c(%struct.fc_bsg_job* %50)
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %1
  %53 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %54 = call i32 @qla24xx_process_bidir_cmd(%struct.fc_bsg_job* %53)
  store i32 %54, i32* %2, align 4
  br label %61

55:                                               ; preds = %1
  %56 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %57 = call i32 @qlafx00_mgmt_cmd(%struct.fc_bsg_job* %56)
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %1
  %59 = load i32, i32* @ENOSYS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @qla2x00_process_loopback(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla84xx_reset(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla84xx_updatefw(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla84xx_mgmt_cmd(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla24xx_iidma(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla24xx_proc_fcp_prio_cfg_cmd(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla2x00_read_optrom(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla2x00_update_optrom(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla2x00_update_fru_versions(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla2x00_read_fru_status(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla2x00_write_fru_status(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla2x00_write_i2c(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla2x00_read_i2c(%struct.fc_bsg_job*) #1

declare dso_local i32 @qla24xx_process_bidir_cmd(%struct.fc_bsg_job*) #1

declare dso_local i32 @qlafx00_mgmt_cmd(%struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
