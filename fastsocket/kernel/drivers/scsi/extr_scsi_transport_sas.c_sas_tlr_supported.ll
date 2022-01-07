; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_tlr_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_tlr_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.sas_end_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_tlr_supported(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_end_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  store i32 32, i32* %3, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = call %struct.sas_end_device* @sas_sdev_to_rdev(%struct.scsi_device* %7)
  store %struct.sas_end_device* %8, %struct.sas_end_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 32, i32 %9)
  store i8* %10, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @scsi_get_vpd_page(%struct.scsi_device* %11, i32 144, i8* %12, i32 32)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %22

16:                                               ; preds = %1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 12
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = and i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @kfree(i8* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.sas_end_device*, %struct.sas_end_device** %4, align 8
  %27 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.sas_end_device* @sas_sdev_to_rdev(%struct.scsi_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @scsi_get_vpd_page(%struct.scsi_device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
