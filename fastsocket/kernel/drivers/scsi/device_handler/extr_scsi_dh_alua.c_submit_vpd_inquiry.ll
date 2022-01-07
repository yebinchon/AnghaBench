; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_vpd_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_vpd_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_dh_data = type { i32, i64, i32, i32 }
%struct.request = type { i32*, i64, i32, i32, i32, i32 }

@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: evpd inquiry failed with %x\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.alua_dh_data*)* @submit_vpd_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_vpd_inquiry(%struct.scsi_device* %0, %struct.alua_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.alua_dh_data*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.alua_dh_data* %1, %struct.alua_dh_data** %4, align 8
  %7 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %10 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %13 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @READ, align 4
  %16 = call %struct.request* @get_alua_req(%struct.scsi_device* %8, i32 %11, i32 %14, i32 %15)
  store %struct.request* %16, %struct.request** %5, align 8
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = icmp ne %struct.request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %85

20:                                               ; preds = %2
  %21 = load i32, i32* @INQUIRY, align 4
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.request*, %struct.request** %5, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 131, i32* %33, align 4
  %34 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %35 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @INQUIRY, align 4
  %42 = call i32 @COMMAND_SIZE(i32 %41)
  %43 = load %struct.request*, %struct.request** %5, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %46 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.request*, %struct.request** %5, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.request*, %struct.request** %5, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %54 = call i32 @memset(i32 %52, i32 0, i32 %53)
  %55 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %56 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.request*, %struct.request** %5, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.request*, %struct.request** %5, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.request*, %struct.request** %5, align 8
  %63 = call i32 @blk_execute_rq(i32 %61, i32* null, %struct.request* %62, i32 1)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %20
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %71 = load i32, i32* @ALUA_DH_NAME, align 4
  %72 = load %struct.request*, %struct.request** %5, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sdev_printk(i32 %69, %struct.scsi_device* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load %struct.request*, %struct.request** %5, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %80 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %68, %20
  %83 = load %struct.request*, %struct.request** %5, align 8
  %84 = call i32 @blk_put_request(%struct.request* %83)
  br label %85

85:                                               ; preds = %82, %19
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.request* @get_alua_req(%struct.scsi_device*, i32, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
