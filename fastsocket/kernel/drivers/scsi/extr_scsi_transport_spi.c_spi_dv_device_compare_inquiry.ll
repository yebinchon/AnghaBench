; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_compare_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_compare_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@INQUIRY = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SDEV_QUIESCE = common dso_local global i32 0, align 4
@SPI_COMPARE_FAILURE = common dso_local global i32 0, align 4
@SPI_COMPARE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32*, i32*, i32)* @spi_dv_device_compare_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_dv_device_compare_inquiry(%struct.scsi_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i8], align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %18 = load i32, i32* @INQUIRY, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i32, i32* %12, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %23, align 1
  %26 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %26, align 1
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %72, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @memset(i32* %32, i32 0, i32 %33)
  %35 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @spi_execute(%struct.scsi_device* %35, i8* %36, i32 %37, i32* %38, i32 %39, i32* null)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %31
  %44 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %45 = call i32 @scsi_device_online(%struct.scsi_device* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %49 = load i32, i32* @SDEV_QUIESCE, align 4
  %50 = call i32 @scsi_device_set_state(%struct.scsi_device* %48, i32 %49)
  %51 = load i32, i32* @SPI_COMPARE_FAILURE, align 4
  store i32 %51, i32* %5, align 4
  br label %77

52:                                               ; preds = %43
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  br label %72

63:                                               ; preds = %52
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @memcmp(i32* %64, i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @SPI_COMPARE_FAILURE, align 4
  store i32 %70, i32* %5, align 4
  br label %77

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %27

75:                                               ; preds = %27
  %76 = load i32, i32* @SPI_COMPARE_SUCCESS, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %69, %47
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
