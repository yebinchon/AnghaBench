; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_initialize_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_initialize_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.rdac_dh_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.c4_inquiry }
%struct.c4_inquiry = type { i32* }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.rdac_dh_data*, i8*, i32*)* @initialize_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_controller(%struct.scsi_device* %0, %struct.rdac_dh_data* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.rdac_dh_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.c4_inquiry*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.rdac_dh_data* %1, %struct.rdac_dh_data** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %13 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %14 = call i32 @submit_inquiry(%struct.scsi_device* %12, i32 196, i32 8, %struct.rdac_dh_data* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @SCSI_DH_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %4
  %19 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %20 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.c4_inquiry* %21, %struct.c4_inquiry** %11, align 8
  %22 = load %struct.c4_inquiry*, %struct.c4_inquiry** %11, align 8
  %23 = getelementptr inbounds %struct.c4_inquiry, %struct.c4_inquiry* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 49
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %30

29:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = call i32 @spin_lock(i32* @list_lock)
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %36 = call i32 @get_controller(i32 %32, i8* %33, i32* %34, %struct.scsi_device* %35)
  %37 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %38 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %40 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %30
  %46 = call i32 @spin_unlock(i32* @list_lock)
  br label %47

47:                                               ; preds = %45, %4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @submit_inquiry(%struct.scsi_device*, i32, i32, %struct.rdac_dh_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_controller(i32, i8*, i32*, %struct.scsi_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
