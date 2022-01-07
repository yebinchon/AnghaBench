; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_post_aen_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_post_aen_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla4_work_evt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@QLA4_EVENT_AEN = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_post_aen_work(%struct.scsi_qla_host* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qla4_work_evt*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @QLA4_EVENT_AEN, align 4
  %14 = call %struct.qla4_work_evt* @qla4xxx_alloc_work(%struct.scsi_qla_host* %11, i32 %12, i32 %13)
  store %struct.qla4_work_evt* %14, %struct.qla4_work_evt** %10, align 8
  %15 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %10, align 8
  %16 = icmp ne %struct.qla4_work_evt* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @QLA_ERROR, align 4
  store i32 %18, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %10, align 8
  %22 = getelementptr inbounds %struct.qla4_work_evt, %struct.qla4_work_evt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %10, align 8
  %27 = getelementptr inbounds %struct.qla4_work_evt, %struct.qla4_work_evt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 4
  %30 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %10, align 8
  %31 = getelementptr inbounds %struct.qla4_work_evt, %struct.qla4_work_evt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %39 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %10, align 8
  %40 = call i32 @qla4xxx_post_work(%struct.scsi_qla_host* %38, %struct.qla4_work_evt* %39)
  %41 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %19, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.qla4_work_evt* @qla4xxx_alloc_work(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qla4xxx_post_work(%struct.scsi_qla_host*, %struct.qla4_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
