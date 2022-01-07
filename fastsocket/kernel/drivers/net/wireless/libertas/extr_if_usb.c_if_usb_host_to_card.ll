; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_host_to_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_host_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.if_usb_card* }
%struct.if_usb_card = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"*** type = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"size after = %d\0A\00", align 1
@MVMS_CMD = common dso_local global i64 0, align 8
@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@DNLD_CMD_SENT = common dso_local global i32 0, align 4
@CMD_TYPE_DATA = common dso_local global i32 0, align 4
@DNLD_DATA_SENT = common dso_local global i32 0, align 4
@MESSAGE_HEADER_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i64, i64*, i64)* @if_usb_host_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_host_to_card(%struct.lbs_private* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.if_usb_card*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 1
  %12 = load %struct.if_usb_card*, %struct.if_usb_card** %11, align 8
  store %struct.if_usb_card* %12, %struct.if_usb_card** %9, align 8
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @lbs_deb_usbd(i32* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %20 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @lbs_deb_usbd(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MVMS_CMD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %32 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @DNLD_CMD_SENT, align 4
  %36 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %37 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %48

38:                                               ; preds = %4
  %39 = load i32, i32* @CMD_TYPE_DATA, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %42 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @DNLD_DATA_SENT, align 4
  %46 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %50 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MESSAGE_HEADER_LEN, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @memcpy(i64 %53, i64* %54, i64 %55)
  %57 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %58 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %59 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @MESSAGE_HEADER_LEN, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @usb_tx_block(%struct.if_usb_card* %57, i64 %60, i64 %63)
  ret i32 %64
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64, i64*, i64) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
