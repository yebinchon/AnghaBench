; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_beacon_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_beacon_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { {}* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_LED_ALL_ON = common dso_local global i32 0, align 4
@QLA_LED_GRN_ON = common dso_local global i32 0, align 4
@FO1_SET_EMPHASIS_SWING = common dso_local global i32 0, align 4
@FO1_DISABLE_GPIO6_7 = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to update fw options (beacon off).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_beacon_off(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %5 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %4, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = call i64 @IS_QLA2322(%struct.qla_hw_data* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @QLA_LED_ALL_ON, align 4
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @QLA_LED_GRN_ON, align 4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.scsi_qla_host*)**
  %28 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %27, align 8
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %30 = call i32 %28(%struct.scsi_qla_host* %29)
  %31 = load i32, i32* @FO1_SET_EMPHASIS_SWING, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @FO1_DISABLE_GPIO6_7, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %40
  store i32 %46, i32* %44, align 4
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @qla2x00_set_fw_options(%struct.scsi_qla_host* %47, i32* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @QLA_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %22
  %56 = load i32, i32* @ql_log_warn, align 4
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %58 = call i32 @ql_log(i32 %56, %struct.scsi_qla_host* %57, i32 28828, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @IS_QLA2322(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_set_fw_options(%struct.scsi_qla_host*, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
