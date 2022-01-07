; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i64 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DV_RETRIES = common dso_local global i32 0, align 4
@DV_TIMEOUT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*)* @spi_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_execute(%struct.scsi_device* %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.scsi_sense_hdr* %5) #0 {
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_sense_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.scsi_sense_hdr, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.scsi_sense_hdr* %5, %struct.scsi_sense_hdr** %12, align 8
  %18 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %62, %6
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @DV_RETRIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @DV_TIMEOUT, align 4
  %33 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %34 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @scsi_execute(%struct.scsi_device* %27, i8* %28, i32 %29, i8* %30, i32 %31, i8* %21, i32 %32, i32 1, i32 %37, i32* null)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @driver_byte(i32 %39)
  %41 = load i32, i32* @DRIVER_SENSE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %26
  %45 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %12, align 8
  %46 = icmp ne %struct.scsi_sense_hdr* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store %struct.scsi_sense_hdr* %17, %struct.scsi_sense_hdr** %12, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %50 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %12, align 8
  %51 = call i64 @scsi_normalize_sense(i8* %21, i32 %49, %struct.scsi_sense_hdr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %12, align 8
  %55 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UNIT_ATTENTION, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %62

60:                                               ; preds = %53, %48
  br label %61

61:                                               ; preds = %60, %26
  br label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %22

65:                                               ; preds = %61, %22
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32*) #2

declare dso_local i32 @driver_byte(i32) #2

declare dso_local i64 @scsi_normalize_sense(i8*, i32, %struct.scsi_sense_hdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
