; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_recv_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_recv_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@RECEIVE_DIAGNOSTIC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SES_TIMEOUT = common dso_local global i32 0, align 4
@SES_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i8*, i32)* @ses_recv_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_recv_diag(%struct.scsi_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* @RECEIVE_DIAGNOSTIC, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %10, align 1
  %13 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 1, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i32, i32* %6, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds i8, i8* %14, i64 1
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 8
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds i8, i8* %17, i64 1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 0, i8* %25, align 1
  %26 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %27 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SES_TIMEOUT, align 4
  %32 = load i32, i32* @SES_RETRIES, align 4
  %33 = call i32 @scsi_execute_req(%struct.scsi_device* %26, i8* %27, i32 %28, i8* %29, i32 %30, i32* null, i32 %31, i32 %32, i32* null)
  ret i32 %33
}

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
