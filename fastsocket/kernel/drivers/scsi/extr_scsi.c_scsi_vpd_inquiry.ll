; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_vpd_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_vpd_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@INQUIRY = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*, i8, i32)* @scsi_vpd_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_vpd_inquiry(%struct.scsi_device* %0, i8* %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %12 = load i8, i8* @INQUIRY, align 1
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  store i8 %12, i8* %13, align 16
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 1
  store i8 1, i8* %14, align 1
  %15 = load i8, i8* %8, align 1
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 2
  store i8 %15, i8* %16, align 2
  %17 = load i32, i32* %9, align 4
  %18 = lshr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 3
  store i8 %19, i8* %20, align 1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 4
  store i8 %23, i8* %24, align 4
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 5
  store i8 0, i8* %25, align 1
  %26 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 30, %31
  %33 = call i32 @scsi_execute_req(%struct.scsi_device* %26, i8* %27, i32 %28, i8* %29, i32 %30, i32* null, i32 %32, i32 3, i32* null)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %50

38:                                               ; preds = %4
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %46, %36
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
