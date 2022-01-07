; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_reset_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_reset_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i32 }

@INTERNAL_LOOPBACK_MASK = common dso_local global i32 0, align 4
@ENABLE_INTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@ENABLE_EXTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"new_config[0]=%02x\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Set port config failed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DCBX_COMP_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DCBX completion not received.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DCBX completion received.\0A\00", align 1
@LB_PORTUP_COMP_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Port up completion not received.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Port up completion received.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32)* @qla81xx_reset_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla81xx_reset_loopback_mode(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %12, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %17 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %21 = call i32 @IS_QLA8031(%struct.qla_hw_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %139

24:                                               ; preds = %19, %4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 16)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 1
  %33 = load i32, i32* @ENABLE_INTERNAL_LOOPBACK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %24
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %40 = and i32 %38, %39
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* @ENABLE_EXTERNAL_LOOPBACK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %138

44:                                               ; preds = %35, %24
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load i32, i32* @ql_dbg_user, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %57 = and i32 %55, %56
  %58 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %52, %struct.TYPE_6__* %53, i32 28863, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = call i32 @memcpy(i32* %59, i32* %61, i32 12)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %71 = call i32 @qla81xx_set_port_config(%struct.TYPE_6__* %69, i32* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @QLA_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %44
  %76 = load i32, i32* @ql_log_warn, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = call i32 @ql_log(i32 %76, %struct.TYPE_6__* %77, i32 28709, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %139

85:                                               ; preds = %44
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 3
  %91 = load i32, i32* @DCBX_COMP_TIMEOUT, align 4
  %92 = load i32, i32* @HZ, align 4
  %93 = mul nsw i32 %91, %92
  %94 = call i32 @wait_for_completion_timeout(i32* %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @ql_dbg_user, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %97, %struct.TYPE_6__* %98, i32 28710, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %139

106:                                              ; preds = %88, %85
  %107 = load i32, i32* @ql_dbg_user, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %107, %struct.TYPE_6__* %108, i32 28711, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 2
  %116 = load i32, i32* @LB_PORTUP_COMP_TIMEOUT, align 4
  %117 = load i32, i32* @HZ, align 4
  %118 = mul nsw i32 %116, %117
  %119 = call i32 @wait_for_completion_timeout(i32* %115, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @ql_dbg_user, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %122, %struct.TYPE_6__* %123, i32 28869, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %126 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %139

129:                                              ; preds = %113, %110
  %130 = load i32, i32* @ql_dbg_user, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %130, %struct.TYPE_6__* %131, i32 28870, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129
  %134 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %135 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %137 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %35
  br label %139

139:                                              ; preds = %138, %121, %96, %75, %23
  %140 = load i32, i32* %10, align 4
  ret i32 %140
}

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qla81xx_set_port_config(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
