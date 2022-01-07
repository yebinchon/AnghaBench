; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_process_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_process_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qla_work_evt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@FCH_EVT_VENDOR_UNIQUE = common dso_local global i32 0, align 4
@LOOP_UP = common dso_local global i32 0, align 4
@LOOP_RESYNC_NEEDED = common dso_local global i32 0, align 4
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@FCH_EVT_LINKUP = common dso_local global i32 0, align 4
@FCH_EVT_LINKDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlafx00_process_aen(%struct.scsi_qla_host* %0, %struct.qla_work_evt* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla_work_evt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla_work_evt* %1, %struct.qla_work_evt** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @FCH_EVT_VENDOR_UNIQUE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %10 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %15 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %140 [
    i32 128, label %19
    i32 129, label %136
    i32 130, label %138
  ]

19:                                               ; preds = %2
  %20 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %21 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %19
  %29 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %30 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %28
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 5
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %51, i32 0, i32 4
  %53 = load i32, i32* @LOOP_UP, align 4
  %54 = call i32 @atomic_set(i32* %52, i32 %53)
  %55 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %56, i32 0, i32 2
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %60 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %59)
  br label %81

61:                                               ; preds = %28
  %62 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %63 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %72 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %73 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qlafx00_tgt_detach(%struct.scsi_qla_host* %71, i32 %78)
  br label %80

80:                                               ; preds = %70, %61
  br label %81

81:                                               ; preds = %80, %47
  br label %135

82:                                               ; preds = %19
  %83 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %84 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 65535
  br i1 %90, label %91, label %134

91:                                               ; preds = %82
  %92 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %93 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %115

100:                                              ; preds = %91
  %101 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %102 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %108 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %113 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %112, i32 0, i32 2
  %114 = call i32 @set_bit(i32 %111, i32* %113)
  br label %133

115:                                              ; preds = %91
  %116 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %117 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load i32, i32* @DFLG_NO_CABLE, align 4
  %126 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %127 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %131 = call i32 @qla2x00_mark_all_devices_lost(%struct.scsi_qla_host* %130, i32 1)
  br label %132

132:                                              ; preds = %124, %115
  br label %133

133:                                              ; preds = %132, %110
  br label %134

134:                                              ; preds = %133, %82
  br label %135

135:                                              ; preds = %134, %81
  br label %140

136:                                              ; preds = %2
  %137 = load i32, i32* @FCH_EVT_LINKUP, align 4
  store i32 %137, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %140

138:                                              ; preds = %2
  %139 = load i32, i32* @FCH_EVT_LINKDOWN, align 4
  store i32 %139, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %2, %138, %136, %135
  %141 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %142 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (...) @fc_get_event_number()
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @fc_host_post_event(i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host*) #1

declare dso_local i32 @qlafx00_tgt_detach(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla2x00_mark_all_devices_lost(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @fc_host_post_event(i32, i32, i32, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
