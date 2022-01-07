; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_set_mode_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_set_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.rdac_dh_data = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.c2_inquiry }
%struct.c2_inquiry = type { i64 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@MODE6_MAX_LUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.rdac_dh_data*)* @set_mode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mode_select(%struct.scsi_device* %0, %struct.rdac_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.rdac_dh_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_inquiry*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.rdac_dh_data* %1, %struct.rdac_dh_data** %4, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %9 = call i32 @submit_inquiry(%struct.scsi_device* %7, i32 194, i32 8, %struct.rdac_dh_data* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SCSI_DH_OK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %15 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.c2_inquiry* %16, %struct.c2_inquiry** %6, align 8
  %17 = load %struct.c2_inquiry*, %struct.c2_inquiry** %6, align 8
  %18 = getelementptr inbounds %struct.c2_inquiry, %struct.c2_inquiry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MODE6_MAX_LUN, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %24 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %32

27:                                               ; preds = %13
  %28 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %29 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @submit_inquiry(%struct.scsi_device*, i32, i32, %struct.rdac_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
