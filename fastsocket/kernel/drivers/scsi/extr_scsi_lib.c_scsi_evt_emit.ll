; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_evt_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_evt_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_event = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"SDEV_MEDIA_CHANGE=1\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.scsi_event*)* @scsi_evt_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_evt_emit(%struct.scsi_device* %0, %struct.scsi_event* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8*], align 16
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.scsi_event* %1, %struct.scsi_event** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.scsi_event*, %struct.scsi_event** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_event, %struct.scsi_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %15 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %13
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %19
  store i8* null, i8** %20, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @KOBJ_CHANGE, align 4
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %26 = call i32 @kobject_uevent_env(i32* %23, i32 %24, i8** %25)
  ret void
}

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
