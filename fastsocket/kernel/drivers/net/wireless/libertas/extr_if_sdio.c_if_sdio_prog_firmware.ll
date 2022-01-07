; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i32 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"firmware status = %#x\0A\00", align 1
@IF_SDIO_FIRMWARE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"firmware already loaded\0A\00", align 1
@IF_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_prog_firmware(%struct.if_sdio_card* %0) #0 {
  %2 = alloca %struct.if_sdio_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %2, align 8
  %5 = load i32, i32* @LBS_DEB_SDIO, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %8 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sdio_claim_host(i32 %9)
  %11 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %12 = call i64 @if_sdio_read_scratch(%struct.if_sdio_card* %11, i32* %3)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %14 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sdio_release_host(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %55

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @IF_SDIO_FIRMWARE_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %30 = call i32 @if_sdio_prog_helper(%struct.if_sdio_card* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %55

34:                                               ; preds = %28
  %35 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %36 = call i32 @if_sdio_prog_real(%struct.if_sdio_card* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %55

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %43 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sdio_claim_host(i32 %44)
  %46 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %47 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IF_SDIO_BLOCK_SIZE, align 4
  %50 = call i32 @sdio_set_block_size(i32 %48, i32 %49)
  %51 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %52 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sdio_release_host(i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %41, %39, %33, %19
  %56 = load i32, i32* @LBS_DEB_SDIO, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @lbs_deb_leave_args(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i64 @if_sdio_read_scratch(%struct.if_sdio_card*, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*, ...) #1

declare dso_local i32 @if_sdio_prog_helper(%struct.if_sdio_card*) #1

declare dso_local i32 @if_sdio_prog_real(%struct.if_sdio_card*) #1

declare dso_local i32 @sdio_set_block_size(i32, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
