; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_get_bootld_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_get_bootld_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.qla82xx_uri_data_desc = type { i32 }

@BOOTLD_START = common dso_local global i64 0, align 8
@QLA82XX_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@QLA82XX_URI_DIR_SECT_BOOTLD = common dso_local global i32 0, align 4
@QLA82XX_URI_BOOTLD_IDX_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.qla_hw_data*)* @qla82xx_get_bootld_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qla82xx_get_bootld_offset(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qla82xx_uri_data_desc*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %5 = load i64, i64* @BOOTLD_START, align 8
  store i64 %5, i64* %3, align 8
  store %struct.qla82xx_uri_data_desc* null, %struct.qla82xx_uri_data_desc** %4, align 8
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QLA82XX_UNIFIED_ROMIMAGE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %13 = load i32, i32* @QLA82XX_URI_DIR_SECT_BOOTLD, align 4
  %14 = load i32, i32* @QLA82XX_URI_BOOTLD_IDX_OFF, align 4
  %15 = call %struct.qla82xx_uri_data_desc* @qla82xx_get_data_desc(%struct.qla_hw_data* %12, i32 %13, i32 %14)
  store %struct.qla82xx_uri_data_desc* %15, %struct.qla82xx_uri_data_desc** %4, align 8
  %16 = load %struct.qla82xx_uri_data_desc*, %struct.qla82xx_uri_data_desc** %4, align 8
  %17 = icmp ne %struct.qla82xx_uri_data_desc* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.qla82xx_uri_data_desc*, %struct.qla82xx_uri_data_desc** %4, align 8
  %20 = getelementptr inbounds %struct.qla82xx_uri_data_desc, %struct.qla82xx_uri_data_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @cpu_to_le32(i32 %21)
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %18, %11
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  ret i32* %33
}

declare dso_local %struct.qla82xx_uri_data_desc* @qla82xx_get_data_desc(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
