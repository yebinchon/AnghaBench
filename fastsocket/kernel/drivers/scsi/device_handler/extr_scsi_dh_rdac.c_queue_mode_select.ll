; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_queue_mode_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_queue_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.rdac_queue_data = type { i32, %struct.TYPE_2__*, i8*, i32 }
%struct.TYPE_2__ = type { %struct.rdac_controller* }
%struct.rdac_controller = type { i32, i32, i32, %struct.scsi_device*, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@kmpath_rdacd = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i8*)* @queue_mode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_mode_select(%struct.scsi_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rdac_queue_data*, align 8
  %9 = alloca %struct.rdac_controller*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = call %struct.rdac_queue_data* @kzalloc(i32 32, i32 %10)
  store %struct.rdac_queue_data* %11, %struct.rdac_queue_data** %8, align 8
  %12 = load %struct.rdac_queue_data*, %struct.rdac_queue_data** %8, align 8
  %13 = icmp ne %struct.rdac_queue_data* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %18 = call %struct.TYPE_2__* @get_rdac_data(%struct.scsi_device* %17)
  %19 = load %struct.rdac_queue_data*, %struct.rdac_queue_data** %8, align 8
  %20 = getelementptr inbounds %struct.rdac_queue_data, %struct.rdac_queue_data* %19, i32 0, i32 1
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rdac_queue_data*, %struct.rdac_queue_data** %8, align 8
  %23 = getelementptr inbounds %struct.rdac_queue_data, %struct.rdac_queue_data* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.rdac_queue_data*, %struct.rdac_queue_data** %8, align 8
  %26 = getelementptr inbounds %struct.rdac_queue_data, %struct.rdac_queue_data* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.rdac_queue_data*, %struct.rdac_queue_data** %8, align 8
  %28 = getelementptr inbounds %struct.rdac_queue_data, %struct.rdac_queue_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.rdac_controller*, %struct.rdac_controller** %30, align 8
  store %struct.rdac_controller* %31, %struct.rdac_controller** %9, align 8
  %32 = load %struct.rdac_controller*, %struct.rdac_controller** %9, align 8
  %33 = getelementptr inbounds %struct.rdac_controller, %struct.rdac_controller* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.rdac_queue_data*, %struct.rdac_queue_data** %8, align 8
  %36 = getelementptr inbounds %struct.rdac_queue_data, %struct.rdac_queue_data* %35, i32 0, i32 0
  %37 = load %struct.rdac_controller*, %struct.rdac_controller** %9, align 8
  %38 = getelementptr inbounds %struct.rdac_controller, %struct.rdac_controller* %37, i32 0, i32 4
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.rdac_controller*, %struct.rdac_controller** %9, align 8
  %41 = getelementptr inbounds %struct.rdac_controller, %struct.rdac_controller* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %16
  %45 = load %struct.rdac_controller*, %struct.rdac_controller** %9, align 8
  %46 = getelementptr inbounds %struct.rdac_controller, %struct.rdac_controller* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %48 = load %struct.rdac_controller*, %struct.rdac_controller** %9, align 8
  %49 = getelementptr inbounds %struct.rdac_controller, %struct.rdac_controller* %48, i32 0, i32 3
  store %struct.scsi_device* %47, %struct.scsi_device** %49, align 8
  %50 = load i32, i32* @kmpath_rdacd, align 4
  %51 = load %struct.rdac_controller*, %struct.rdac_controller** %9, align 8
  %52 = getelementptr inbounds %struct.rdac_controller, %struct.rdac_controller* %51, i32 0, i32 2
  %53 = call i32 @queue_work(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %44, %16
  %55 = load %struct.rdac_controller*, %struct.rdac_controller** %9, align 8
  %56 = getelementptr inbounds %struct.rdac_controller, %struct.rdac_controller* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.rdac_queue_data* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @get_rdac_data(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
