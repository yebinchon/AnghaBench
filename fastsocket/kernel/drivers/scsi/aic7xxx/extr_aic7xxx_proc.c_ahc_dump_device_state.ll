; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_dump_device_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_dump_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_str = type { i32 }
%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ahc_linux_device = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"\09Channel %c Target %d Lun %d Settings\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\09\09Commands Queued %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\09\09Commands Active %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\09\09Command Openings %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\09\09Max Tagged Openings %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\09\09Device Queue Frozen Count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.info_str*, %struct.scsi_device*)* @ahc_dump_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_dump_device_state(%struct.info_str* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.info_str*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.ahc_linux_device*, align 8
  store %struct.info_str* %0, %struct.info_str** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %7 = call %struct.ahc_linux_device* @scsi_transport_device_data(%struct.scsi_device* %6)
  store %struct.ahc_linux_device* %7, %struct.ahc_linux_device** %5, align 8
  %8 = load %struct.info_str*, %struct.info_str** %3, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 65
  %15 = trunc i64 %14 to i32
  %16 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.info_str*, i8*, i32, ...) @copy_info(%struct.info_str* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20, i32 %23)
  %25 = load %struct.info_str*, %struct.info_str** %3, align 8
  %26 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %5, align 8
  %27 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.info_str*, i8*, i32, ...) @copy_info(%struct.info_str* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.info_str*, %struct.info_str** %3, align 8
  %31 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %5, align 8
  %32 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.info_str*, i8*, i32, ...) @copy_info(%struct.info_str* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.info_str*, %struct.info_str** %3, align 8
  %36 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %5, align 8
  %37 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.info_str*, i8*, i32, ...) @copy_info(%struct.info_str* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.info_str*, %struct.info_str** %3, align 8
  %41 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %5, align 8
  %42 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.info_str*, i8*, i32, ...) @copy_info(%struct.info_str* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load %struct.info_str*, %struct.info_str** %3, align 8
  %46 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %5, align 8
  %47 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.info_str*, i8*, i32, ...) @copy_info(%struct.info_str* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  ret void
}

declare dso_local %struct.ahc_linux_device* @scsi_transport_device_data(%struct.scsi_device*) #1

declare dso_local i32 @copy_info(%struct.info_str*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
