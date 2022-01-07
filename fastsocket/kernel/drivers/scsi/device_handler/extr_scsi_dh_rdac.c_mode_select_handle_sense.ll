; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_mode_select_handle_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_mode_select_handle_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }
%struct.rdac_dh_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@RDAC_LOG_FAILOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"array %s, ctlr %d, MODE_SELECT returned with sense %02x/%02x/%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @mode_select_handle_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_select_handle_sense(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_sense_hdr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdac_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = call %struct.rdac_dh_data* @get_rdac_data(%struct.scsi_device* %10)
  store %struct.rdac_dh_data* %11, %struct.rdac_dh_data** %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %14 = call i32 @scsi_normalize_sense(i8* %12, i32 %13, %struct.scsi_sense_hdr* %5)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %67

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %45 [
    i32 129, label %21
    i32 132, label %21
    i32 128, label %21
    i32 130, label %23
    i32 131, label %34
  ]

21:                                               ; preds = %18, %18, %18
  %22 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %22, i32* %6, align 4
  br label %46

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %27, %23
  br label %46

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 145
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 54
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %38, %34
  br label %46

45:                                               ; preds = %18
  br label %46

46:                                               ; preds = %45, %44, %33, %21
  %47 = load i32, i32* @RDAC_LOG_FAILOVER, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %49 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %50 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %56 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RDAC_LOG(i32 %47, %struct.scsi_device* %48, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %59, i32 %61, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %46, %17
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.rdac_dh_data* @get_rdac_data(%struct.scsi_device*) #1

declare dso_local i32 @scsi_normalize_sense(i8*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @RDAC_LOG(i32, %struct.scsi_device*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
