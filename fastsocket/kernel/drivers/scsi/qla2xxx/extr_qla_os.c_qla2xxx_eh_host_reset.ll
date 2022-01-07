; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_14__*, i64, i32 }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_15__*)* }

@FAILED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ADAPTER RESET ISSUED nexus=%ld:%d:%d.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wait for hba online failed.\0A\00", align 1
@WAIT_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"ADAPTER RESET %s nexus=%ld:%d:%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qla2xxx_eh_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_15__* @shost_priv(i32 %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %4, align 8
  %18 = load i32, i32* @FAILED, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_15__* @pci_get_drvdata(i32 %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %8, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ql_log_info, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %33, %struct.TYPE_15__* %34, i32 32792, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = call i64 @qla2x00_wait_for_reset_ready(%struct.TYPE_15__* %41)
  %43 = load i64, i64* @QLA_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  br label %124

46:                                               ; preds = %1
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = icmp ne %struct.TYPE_15__* %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = call i64 @qla2x00_vp_abort_isp(%struct.TYPE_15__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %124

55:                                               ; preds = %50
  br label %115

56:                                               ; preds = %46
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %58, align 8
  %60 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = call i32 @qla82xx_fcoe_ctx_reset(%struct.TYPE_15__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @SUCCESS, align 4
  store i32 %67, i32* %5, align 4
  br label %124

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @flush_workqueue(i64 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64 (%struct.TYPE_15__*)*, i64 (%struct.TYPE_15__*)** %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = call i64 %88(%struct.TYPE_15__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %79
  %93 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  %97 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = call i32 @set_bit(i32 %97, i32* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = call i64 @qla2x00_wait_for_hba_online(%struct.TYPE_15__* %101)
  %103 = load i64, i64* @QLA_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load i32, i32* @ql_log_warn, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %106, %struct.TYPE_15__* %107, i32 32810, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %124

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %79
  %111 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  br label %115

115:                                              ; preds = %110, %55
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = load i32, i32* @WAIT_HOST, align 4
  %118 = call i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_15__* %116, i32 0, i32 0, i32 %117)
  %119 = load i64, i64* @QLA_SUCCESS, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @SUCCESS, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %115
  br label %124

124:                                              ; preds = %123, %105, %66, %54, %45
  %125 = load i32, i32* @ql_log_info, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @FAILED, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %125, %struct.TYPE_15__* %126, i32 32791, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %131, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_15__* @shost_priv(i32) #1

declare dso_local %struct.TYPE_15__* @pci_get_drvdata(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i64 @qla2x00_wait_for_reset_ready(%struct.TYPE_15__*) #1

declare dso_local i64 @qla2x00_vp_abort_isp(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_fcoe_ctx_reset(%struct.TYPE_15__*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @qla2x00_wait_for_hba_online(%struct.TYPE_15__*) #1

declare dso_local i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
