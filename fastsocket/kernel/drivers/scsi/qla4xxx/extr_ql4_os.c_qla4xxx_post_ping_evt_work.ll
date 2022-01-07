; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_post_ping_evt_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_post_ping_evt_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla4_work_evt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8* }

@QLA4_EVENT_PING_STATUS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_post_ping_evt_work(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.qla4_work_evt*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i32, i32* @QLA4_EVENT_PING_STATUS, align 4
  %16 = call %struct.qla4_work_evt* @qla4xxx_alloc_work(%struct.scsi_qla_host* %13, i8* %14, i32 %15)
  store %struct.qla4_work_evt* %16, %struct.qla4_work_evt** %12, align 8
  %17 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %12, align 8
  %18 = icmp ne %struct.qla4_work_evt* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @QLA_ERROR, align 4
  store i32 %20, i32* %6, align 4
  br label %49

21:                                               ; preds = %5
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %12, align 8
  %24 = getelementptr inbounds %struct.qla4_work_evt, %struct.qla4_work_evt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i8* %22, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %12, align 8
  %29 = getelementptr inbounds %struct.qla4_work_evt, %struct.qla4_work_evt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i8* %27, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %12, align 8
  %34 = getelementptr inbounds %struct.qla4_work_evt, %struct.qla4_work_evt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %32, i8** %36, align 8
  %37 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %12, align 8
  %38 = getelementptr inbounds %struct.qla4_work_evt, %struct.qla4_work_evt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @memcpy(i32 %41, i32* %42, i8* %43)
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %46 = load %struct.qla4_work_evt*, %struct.qla4_work_evt** %12, align 8
  %47 = call i32 @qla4xxx_post_work(%struct.scsi_qla_host* %45, %struct.qla4_work_evt* %46)
  %48 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %21, %19
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.qla4_work_evt* @qla4xxx_alloc_work(%struct.scsi_qla_host*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i8*) #1

declare dso_local i32 @qla4xxx_post_work(%struct.scsi_qla_host*, %struct.qla4_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
