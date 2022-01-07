; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_send_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_send_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@SEND_DIAGNOSTIC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SES_TIMEOUT = common dso_local global i32 0, align 4
@SES_RETRIES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SEND DIAGNOSTIC result: %8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i8*, i32)* @ses_send_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_send_diag(%struct.scsi_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %12 = load i32, i32* @SEND_DIAGNOSTIC, align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %11, align 1
  %14 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 16, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %20, align 1
  %24 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %24, align 1
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SES_TIMEOUT, align 4
  %31 = load i32, i32* @SES_RETRIES, align 4
  %32 = call i32 @scsi_execute_req(%struct.scsi_device* %25, i8* %26, i32 %27, i8* %28, i32 %29, i32* null, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @sdev_printk(i32 %36, %struct.scsi_device* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %4
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
