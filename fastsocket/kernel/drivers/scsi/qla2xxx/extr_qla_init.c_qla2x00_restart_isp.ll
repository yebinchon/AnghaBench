; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_restart_isp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_restart_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__, %struct.qla_hw_data* }
%struct.TYPE_16__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.rsp_que**, %struct.req_que** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { {}* }
%struct.rsp_que = type { i32 }
%struct.req_que = type { i32 }

@RESET_MARKER_NEEDED = common dso_local global i32 0, align 4
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Start configure loop status = %d.\0A\00", align 1
@MK_SYNC_ALL = common dso_local global i32 0, align 4
@LOOP_RESYNC_NEEDED = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Configure loop done, status = 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @qla2x00_restart_isp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_restart_isp(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.rsp_que*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %5, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 3
  %13 = load %struct.req_que**, %struct.req_que*** %12, align 8
  %14 = getelementptr inbounds %struct.req_que*, %struct.req_que** %13, i64 0
  %15 = load %struct.req_que*, %struct.req_que** %14, align 8
  store %struct.req_que* %15, %struct.req_que** %6, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 2
  %18 = load %struct.rsp_que**, %struct.rsp_que*** %17, align 8
  %19 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %18, i64 0
  %20 = load %struct.rsp_que*, %struct.rsp_que** %19, align 8
  store %struct.rsp_que* %20, %struct.rsp_que** %7, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = call i64 @qla2x00_isp_firmware(%struct.TYPE_17__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.TYPE_17__*)**
  %33 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = call i32 %33(%struct.TYPE_17__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = call i32 @qla2x00_setup_chip(%struct.TYPE_17__* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %24
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %121, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = call i32 @qla2x00_init_rings(%struct.TYPE_17__* %46)
  store i32 %47, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %121, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @RESET_MARKER_NEEDED, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %58 = call i32 @qla25xx_init_queues(%struct.qla_hw_data* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %60 = call i32 @qla2x00_fw_ready(%struct.TYPE_17__* %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %108, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* @ql_dbg_taskm, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @ql_dbg(i32 %64, %struct.TYPE_17__* %65, i32 32817, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %69 = load %struct.req_que*, %struct.req_que** %6, align 8
  %70 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %71 = load i32, i32* @MK_SYNC_ALL, align 4
  %72 = call i32 @qla2x00_marker(%struct.TYPE_17__* %68, %struct.req_que* %69, %struct.rsp_que* %70, i32 0, i32 0, i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  store i32 256, i32* %4, align 4
  br label %76

76:                                               ; preds = %105, %63
  %77 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = call i32 @qla2x00_configure_loop(%struct.TYPE_17__* %81)
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %76
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  %88 = call i32 @atomic_read(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = call i64 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = call i64 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %99, %96, %90, %85
  %106 = phi i1 [ false, %96 ], [ false, %90 ], [ false, %85 ], [ %104, %99 ]
  br i1 %106, label %76, label %107

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %49
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DFLG_NO_CABLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %108
  %117 = load i32, i32* @ql_dbg_taskm, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @ql_dbg(i32 %117, %struct.TYPE_17__* %118, i32 32818, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %45, %42
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @qla2x00_isp_firmware(%struct.TYPE_17__*) #1

declare dso_local i32 @qla2x00_setup_chip(%struct.TYPE_17__*) #1

declare dso_local i32 @qla2x00_init_rings(%struct.TYPE_17__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qla25xx_init_queues(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_fw_ready(%struct.TYPE_17__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_marker(%struct.TYPE_17__*, %struct.req_que*, %struct.rsp_que*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_configure_loop(%struct.TYPE_17__*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
