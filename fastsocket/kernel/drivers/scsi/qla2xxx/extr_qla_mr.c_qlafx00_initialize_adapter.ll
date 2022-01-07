; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_initialize_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_initialize_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_13__, i64, i32, i32, i32, %struct.qla_hw_data* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.qla_hw_data = type { %struct.TYPE_15__, %struct.TYPE_14__*, i32, i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { {}* }

@LOOP_DOWN_TIME = common dso_local global i32 0, align 4
@LOOP_DOWN = common dso_local global i32 0, align 4
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Configuring PCI space...\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to configure PCI space.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlafx00_initialize_adapter(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 7
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  %28 = load i32, i32* @LOOP_DOWN_TIME, align 4
  %29 = call i32 @atomic_set(i32* %27, i32 %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 5
  %32 = load i32, i32* @LOOP_DOWN, align 4
  %33 = call i32 @atomic_set(i32* %31, i32 %32)
  %34 = load i32, i32* @DFLG_NO_CABLE, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @set_bit(i32 0, i32 %50)
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @set_bit(i32 0, i32 %54)
  %56 = load i32, i32* @ql_dbg_init, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = call i32 @ql_dbg(i32 %56, %struct.TYPE_16__* %57, i32 327, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to i32 (%struct.TYPE_16__*)**
  %64 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = call i32 %64(%struct.TYPE_16__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %1
  %70 = load i32, i32* @ql_log_warn, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = call i32 @ql_log(i32 %70, %struct.TYPE_16__* %71, i32 328, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %110

74:                                               ; preds = %1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = call i32 @qlafx00_init_fw_ready(%struct.TYPE_16__* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @QLA_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %110

82:                                               ; preds = %74
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = call i32 @qlafx00_save_queue_ptrs(%struct.TYPE_16__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = call i32 @qlafx00_config_queues(%struct.TYPE_16__* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @QLA_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %110

92:                                               ; preds = %82
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @qla2x00_alloc_outstanding_cmds(%struct.qla_hw_data* %93, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @QLA_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %110

103:                                              ; preds = %92
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = call i32 @qla2x00_init_rings(%struct.TYPE_16__* %104)
  store i32 %105, i32* %4, align 4
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %103, %101, %90, %80, %69
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @qlafx00_init_fw_ready(%struct.TYPE_16__*) #1

declare dso_local i32 @qlafx00_save_queue_ptrs(%struct.TYPE_16__*) #1

declare dso_local i32 @qlafx00_config_queues(%struct.TYPE_16__*) #1

declare dso_local i32 @qla2x00_alloc_outstanding_cmds(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @qla2x00_init_rings(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
