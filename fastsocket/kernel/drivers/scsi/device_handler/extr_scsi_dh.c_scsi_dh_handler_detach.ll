; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_handler_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_handler_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.scsi_device_handler* }
%struct.scsi_device_handler = type { i64 }

@__detach_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.scsi_device_handler*)* @scsi_dh_handler_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_dh_handler_detach(%struct.scsi_device* %0, %struct.scsi_device_handler* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_device_handler*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.scsi_device_handler* %1, %struct.scsi_device_handler** %4, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %46

10:                                               ; preds = %2
  %11 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %4, align 8
  %12 = icmp ne %struct.scsi_device_handler* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %4, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %18, align 8
  %20 = icmp ne %struct.scsi_device_handler* %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %46

22:                                               ; preds = %13, %10
  %23 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %4, align 8
  %24 = icmp ne %struct.scsi_device_handler* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %29, align 8
  store %struct.scsi_device_handler* %30, %struct.scsi_device_handler** %4, align 8
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %4, align 8
  %33 = icmp ne %struct.scsi_device_handler* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_device_handler, %struct.scsi_device_handler* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* @__detach_handler, align 4
  %45 = call i32 @kref_put(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %9, %21, %39, %34, %31
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
