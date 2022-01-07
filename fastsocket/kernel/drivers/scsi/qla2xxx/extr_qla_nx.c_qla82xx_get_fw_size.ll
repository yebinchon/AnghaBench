; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_get_fw_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_get_fw_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.qla82xx_uri_data_desc = type { i32 }

@QLA82XX_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@QLA82XX_URI_DIR_SECT_FW = common dso_local global i32 0, align 4
@QLA82XX_URI_FIRMWARE_IDX_OFF = common dso_local global i32 0, align 4
@FW_SIZE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla82xx_get_fw_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_get_fw_size(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.qla82xx_uri_data_desc*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store %struct.qla82xx_uri_data_desc* null, %struct.qla82xx_uri_data_desc** %4, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %6 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QLA82XX_UNIFIED_ROMIMAGE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = load i32, i32* @QLA82XX_URI_DIR_SECT_FW, align 4
  %13 = load i32, i32* @QLA82XX_URI_FIRMWARE_IDX_OFF, align 4
  %14 = call %struct.qla82xx_uri_data_desc* @qla82xx_get_data_desc(%struct.qla_hw_data* %11, i32 %12, i32 %13)
  store %struct.qla82xx_uri_data_desc* %14, %struct.qla82xx_uri_data_desc** %4, align 8
  %15 = load %struct.qla82xx_uri_data_desc*, %struct.qla82xx_uri_data_desc** %4, align 8
  %16 = icmp ne %struct.qla82xx_uri_data_desc* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.qla82xx_uri_data_desc*, %struct.qla82xx_uri_data_desc** %4, align 8
  %19 = getelementptr inbounds %struct.qla82xx_uri_data_desc, %struct.qla82xx_uri_data_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le32(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @FW_SIZE_OFFSET, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %23, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.qla82xx_uri_data_desc* @qla82xx_get_data_desc(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
