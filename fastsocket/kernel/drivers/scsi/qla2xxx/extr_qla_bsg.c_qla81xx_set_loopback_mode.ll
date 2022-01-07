; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_set_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_set_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32)* }

@INTERNAL_LOOPBACK = common dso_local global i64 0, align 8
@ENABLE_INTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@EXTERNAL_LOOPBACK = common dso_local global i64 0, align 8
@ENABLE_EXTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"new_config[0]=%02x\0A\00", align 1
@INTERNAL_LOOPBACK_MASK = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"set port config failed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DCBX_COMP_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DCBX completion not received.\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Bad status in IDC Completion AEN\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"DCBX completion received.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64*, i64*, i64)* @qla81xx_set_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla81xx_set_loopback_mode(%struct.TYPE_12__* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %11, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %16 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %20 = call i32 @IS_QLA8031(%struct.qla_hw_data* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %137

23:                                               ; preds = %18, %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @INTERNAL_LOOPBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ENABLE_INTERNAL_LOOPBACK, align 4
  %32 = shl i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = or i64 %30, %33
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %34, i64* %36, align 8
  br label %52

37:                                               ; preds = %23
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @EXTERNAL_LOOPBACK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @ENABLE_EXTERNAL_LOOPBACK, align 4
  %46 = shl i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = or i64 %44, %47
  %49 = load i64*, i64** %7, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %41, %37
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* @ql_dbg_user, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INTERNAL_LOOPBACK_MASK, align 8
  %59 = and i64 %57, %58
  %60 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %53, %struct.TYPE_12__* %54, i32 28862, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = call i32 @memcpy(i64* %62, i64* %64, i32 24)
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = call i32 @qla81xx_set_port_config(%struct.TYPE_12__* %68, i64* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @QLA_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %52
  %75 = load i32, i32* @ql_log_warn, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call i32 @ql_log(i32 %75, %struct.TYPE_12__* %76, i32 28705, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %79 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %137

82:                                               ; preds = %52
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %84 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %83, i32 0, i32 3
  %85 = load i32, i32* @DCBX_COMP_TIMEOUT, align 4
  %86 = load i32, i32* @HZ, align 4
  %87 = mul nsw i32 %85, %86
  %88 = call i32 @wait_for_completion_timeout(i32* %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* @ql_dbg_user, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %91, %struct.TYPE_12__* %92, i32 28706, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = load i64*, i64** %7, align 8
  %96 = call i32 @qla81xx_reset_loopback_mode(%struct.TYPE_12__* %94, i64* %95, i32 0, i32 0)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = call i32 %104(%struct.TYPE_12__* %105, i32 0)
  %107 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %99, %90
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %134

114:                                              ; preds = %82
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32, i32* @ql_dbg_user, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %121, %struct.TYPE_12__* %122, i32 28867, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %133

129:                                              ; preds = %114
  %130 = load i32, i32* @ql_dbg_user, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %132 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %130, %struct.TYPE_12__* %131, i32 28707, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %120
  br label %134

134:                                              ; preds = %133, %111
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %136 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %74, %22
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @qla81xx_set_port_config(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @qla81xx_reset_loopback_mode(%struct.TYPE_12__*, i64*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
