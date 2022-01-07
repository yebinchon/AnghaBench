; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_dh_data = type { i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.alua_dh_data*)* @alua_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_initialize(%struct.scsi_device* %0, %struct.alua_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.alua_dh_data*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.alua_dh_data* %1, %struct.alua_dh_data** %4, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %8 = call i32 @alua_check_tpgs(%struct.scsi_device* %6, %struct.alua_dh_data* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SCSI_DH_OK, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %16 = call i32 @alua_vpd_inquiry(%struct.scsi_device* %14, %struct.alua_dh_data* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SCSI_DH_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %30

21:                                               ; preds = %13
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %24 = call i32 @alua_rtpg(%struct.scsi_device* %22, %struct.alua_dh_data* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SCSI_DH_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %28, %20, %12
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @alua_check_tpgs(%struct.scsi_device*, %struct.alua_dh_data*) #1

declare dso_local i32 @alua_vpd_inquiry(%struct.scsi_device*, %struct.alua_dh_data*) #1

declare dso_local i32 @alua_rtpg(%struct.scsi_device*, %struct.alua_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
