; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_request_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_blob = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@qla_fw_blobs = common dso_local global %struct.fw_blob* null, align 8
@FW_ISP21XX = common dso_local global i64 0, align 8
@FW_ISP22XX = common dso_local global i64 0, align 8
@FW_ISP2300 = common dso_local global i64 0, align 8
@FW_ISP2322 = common dso_local global i64 0, align 8
@FW_ISP24XX = common dso_local global i64 0, align 8
@FW_ISP25XX = common dso_local global i64 0, align 8
@FW_ISP81XX = common dso_local global i64 0, align 8
@FW_ISP82XX = common dso_local global i64 0, align 8
@FW_ISP2031 = common dso_local global i64 0, align 8
@FW_ISP8031 = common dso_local global i64 0, align 8
@qla_fw_lock = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to load firmware image (%s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fw_blob* @qla2x00_request_firmware(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.fw_blob*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.fw_blob*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %4, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %10 = call i64 @IS_QLA2100(%struct.qla_hw_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %14 = load i64, i64* @FW_ISP21XX, align 8
  %15 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %13, i64 %14
  store %struct.fw_blob* %15, %struct.fw_blob** %5, align 8
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = call i64 @IS_QLA2200(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %22 = load i64, i64* @FW_ISP22XX, align 8
  %23 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %21, i64 %22
  store %struct.fw_blob* %23, %struct.fw_blob** %5, align 8
  br label %109

24:                                               ; preds = %16
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %26 = call i64 @IS_QLA2300(%struct.qla_hw_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = call i64 @IS_QLA2312(%struct.qla_hw_data* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %34 = call i64 @IS_QLA6312(%struct.qla_hw_data* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %28, %24
  %37 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %38 = load i64, i64* @FW_ISP2300, align 8
  %39 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %37, i64 %38
  store %struct.fw_blob* %39, %struct.fw_blob** %5, align 8
  br label %108

40:                                               ; preds = %32
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %42 = call i64 @IS_QLA2322(%struct.qla_hw_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %46 = call i64 @IS_QLA6322(%struct.qla_hw_data* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %40
  %49 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %50 = load i64, i64* @FW_ISP2322, align 8
  %51 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %49, i64 %50
  store %struct.fw_blob* %51, %struct.fw_blob** %5, align 8
  br label %107

52:                                               ; preds = %44
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %54 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %58 = load i64, i64* @FW_ISP24XX, align 8
  %59 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %57, i64 %58
  store %struct.fw_blob* %59, %struct.fw_blob** %5, align 8
  br label %106

60:                                               ; preds = %52
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %62 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %66 = load i64, i64* @FW_ISP25XX, align 8
  %67 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %65, i64 %66
  store %struct.fw_blob* %67, %struct.fw_blob** %5, align 8
  br label %105

68:                                               ; preds = %60
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %70 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %74 = load i64, i64* @FW_ISP81XX, align 8
  %75 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %73, i64 %74
  store %struct.fw_blob* %75, %struct.fw_blob** %5, align 8
  br label %104

76:                                               ; preds = %68
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %78 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %82 = load i64, i64* @FW_ISP82XX, align 8
  %83 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %81, i64 %82
  store %struct.fw_blob* %83, %struct.fw_blob** %5, align 8
  br label %103

84:                                               ; preds = %76
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %86 = call i64 @IS_QLA2031(%struct.qla_hw_data* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %90 = load i64, i64* @FW_ISP2031, align 8
  %91 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %89, i64 %90
  store %struct.fw_blob* %91, %struct.fw_blob** %5, align 8
  br label %102

92:                                               ; preds = %84
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %94 = call i64 @IS_QLA8031(%struct.qla_hw_data* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  %98 = load i64, i64* @FW_ISP8031, align 8
  %99 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %97, i64 %98
  store %struct.fw_blob* %99, %struct.fw_blob** %5, align 8
  br label %101

100:                                              ; preds = %92
  store %struct.fw_blob* null, %struct.fw_blob** %2, align 8
  br label %142

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103, %72
  br label %105

105:                                              ; preds = %104, %64
  br label %106

106:                                              ; preds = %105, %56
  br label %107

107:                                              ; preds = %106, %48
  br label %108

108:                                              ; preds = %107, %36
  br label %109

109:                                              ; preds = %108, %20
  br label %110

110:                                              ; preds = %109, %12
  %111 = call i32 @mutex_lock(i32* @qla_fw_lock)
  %112 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  %113 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %139

117:                                              ; preds = %110
  %118 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  %119 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %118, i32 0, i32 0
  %120 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  %121 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = call i64 @request_firmware(i32** %119, i32 %122, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %117
  %130 = load i32, i32* @ql_log_warn, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  %133 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ql_log(i32 %130, %struct.TYPE_6__* %131, i32 99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  %137 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  store %struct.fw_blob* null, %struct.fw_blob** %5, align 8
  br label %139

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138, %129, %116
  %140 = call i32 @mutex_unlock(i32* @qla_fw_lock)
  %141 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  store %struct.fw_blob* %141, %struct.fw_blob** %2, align 8
  br label %142

142:                                              ; preds = %139, %100
  %143 = load %struct.fw_blob*, %struct.fw_blob** %2, align 8
  ret %struct.fw_blob* %143
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2300(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2312(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA6312(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2322(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA6322(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @request_firmware(i32**, i32, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
