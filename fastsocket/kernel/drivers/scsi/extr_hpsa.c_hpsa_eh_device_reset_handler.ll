; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_eh_device_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_eh_device_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32 }
%struct.ctlr_info = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"hpsa_eh_device_reset_handler: device lookup failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"resetting device %d:%d:%d:%d\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"resetting device failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @hpsa_eh_device_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_eh_device_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_6__* %9)
  store %struct.ctlr_info* %10, %struct.ctlr_info** %5, align 8
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %12 = icmp eq %struct.ctlr_info* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FAILED, align 4
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %19, align 8
  store %struct.hpsa_scsi_dev_t* %20, %struct.hpsa_scsi_dev_t** %6, align 8
  %21 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %22 = icmp ne %struct.hpsa_scsi_dev_t* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @FAILED, align 4
  store i32 %29, i32* %2, align 4
  br label %73

30:                                               ; preds = %15
  %31 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %32 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %36 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %44 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %47 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_warn(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %51 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %52 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hpsa_send_reset(%struct.ctlr_info* %50, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %30
  %58 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %59 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %60 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @wait_for_device_to_become_ready(%struct.ctlr_info* %58, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @SUCCESS, align 4
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %57, %30
  %67 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %68 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_warn(i32* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @FAILED, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %64, %23, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @hpsa_send_reset(%struct.ctlr_info*, i32) #1

declare dso_local i64 @wait_for_device_to_become_ready(%struct.ctlr_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
