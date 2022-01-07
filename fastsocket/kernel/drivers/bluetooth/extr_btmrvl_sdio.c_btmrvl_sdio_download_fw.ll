; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_download_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Firmware already downloaded!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to download helper!\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to download firmware!\00", align 1
@MAX_POLL_TRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"FW failed to be active in time!\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*)* @btmrvl_sdio_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_download_fw(%struct.btmrvl_sdio_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  %4 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %6 = icmp ne %struct.btmrvl_sdio_card* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %9 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7, %1
  %13 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %7
  %17 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %18 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sdio_claim_host(i32 %19)
  %21 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %22 = call i64 @btmrvl_sdio_verify_fw_download(%struct.btmrvl_sdio_card* %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %53

26:                                               ; preds = %16
  %27 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %28 = call i32 @btmrvl_sdio_download_helper(%struct.btmrvl_sdio_card* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %26
  %36 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %37 = call i64 @btmrvl_sdio_download_fw_w_helper(%struct.btmrvl_sdio_card* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %35
  %44 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %45 = load i32, i32* @MAX_POLL_TRIES, align 4
  %46 = call i64 @btmrvl_sdio_verify_fw_download(%struct.btmrvl_sdio_card* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %48, %39, %31, %24
  %54 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %55 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sdio_release_host(i32 %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i64 @btmrvl_sdio_verify_fw_download(%struct.btmrvl_sdio_card*, i32) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @btmrvl_sdio_download_helper(%struct.btmrvl_sdio_card*) #1

declare dso_local i64 @btmrvl_sdio_download_fw_w_helper(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
