; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla24xx_vport_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla24xx_vport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32, i32, i64, %struct.TYPE_12__, i32, %struct.qla_hw_data* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@LOOP_RESYNC_ACTIVE = common dso_local global i32 0, align 4
@FCPORT_UPDATE_NEEDED = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timer for the VP[%d] has stopped\0A\00", align 1
@ql2xextended_error_logging = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Queue delete failed.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"VP[%d] deleted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*)* @qla24xx_vport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_vport_delete(%struct.fc_vport* %0) #0 {
  %2 = alloca %struct.fc_vport*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %2, align 8
  %6 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %7 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %6, i32 0, i32 0
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 7
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* @LOOP_RESYNC_ACTIVE, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 6
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @FCPORT_UPDATE_NEEDED, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 6
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ true, %15 ], [ %26, %21 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = call i32 @msleep(i32 1000)
  br label %15

31:                                               ; preds = %27
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = call i32 @qla24xx_disable_vp(%struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @fc_remove_host(i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @scsi_remove_host(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = call i32 @qla24xx_deallocate_vp_id(%struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %31
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = call i32 @qla2x00_vp_stop_timer(%struct.TYPE_14__* %52)
  %54 = load i32, i32* @ql_dbg_user, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ql_dbg(i32 %54, %struct.TYPE_14__* %55, i32 28806, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %51, %31
  %61 = load i32, i32* @ql2xextended_error_logging, align 4
  %62 = load i32, i32* @ql_dbg_user, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = call i32 (...) @random32()
  %67 = srem i32 %66, 10
  %68 = call i32 @msleep(i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = call i32 @atomic_read(i32* %71)
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = call i32 @qla2x00_free_fcports(%struct.TYPE_14__* %74)
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 1
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clear_bit(i32 %85, i32 %88)
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %69
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = call i64 @qla25xx_delete_req_que(%struct.TYPE_14__* %106, %struct.TYPE_15__* %109)
  %111 = load i64, i64* @QLA_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* @ql_log_warn, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ql_log(i32 %114, %struct.TYPE_14__* %115, i32 28807, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %105
  br label %118

118:                                              ; preds = %117, %99, %69
  %119 = load i32, i32* @ql_log_info, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ql_log(i32 %119, %struct.TYPE_14__* %120, i32 28808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @scsi_host_put(i32 %125)
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla24xx_disable_vp(%struct.TYPE_14__*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @qla24xx_deallocate_vp_id(%struct.TYPE_14__*) #1

declare dso_local i32 @qla2x00_vp_stop_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @random32(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qla2x00_free_fcports(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @qla25xx_delete_req_que(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
