; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_sdev_evt_send_simple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_sdev_evt_send_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_event = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"event %d eaten due to OOM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdev_evt_send_simple(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_event*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.scsi_event* @sdev_evt_alloc(i32 %8, i32 %9)
  store %struct.scsi_event* %10, %struct.scsi_event** %7, align 8
  %11 = load %struct.scsi_event*, %struct.scsi_event** %7, align 8
  %12 = icmp ne %struct.scsi_event* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @KERN_ERR, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sdev_printk(i32 %14, %struct.scsi_device* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %20 = load %struct.scsi_event*, %struct.scsi_event** %7, align 8
  %21 = call i32 @sdev_evt_send(%struct.scsi_device* %19, %struct.scsi_event* %20)
  br label %22

22:                                               ; preds = %18, %13
  ret void
}

declare dso_local %struct.scsi_event* @sdev_evt_alloc(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @sdev_evt_send(%struct.scsi_device*, %struct.scsi_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
