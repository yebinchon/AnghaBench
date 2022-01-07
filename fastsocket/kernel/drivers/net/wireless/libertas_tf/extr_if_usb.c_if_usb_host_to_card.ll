; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_host_to_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_host_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { %struct.if_usb_card* }
%struct.if_usb_card = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"*** type = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"size after = %d\0A\00", align 1
@MVMS_CMD = common dso_local global i64 0, align 8
@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@CMD_TYPE_DATA = common dso_local global i32 0, align 4
@MESSAGE_HEADER_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbtf_private*, i64, i64*, i64)* @if_usb_host_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_host_to_card(%struct.lbtf_private* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.lbtf_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.if_usb_card*, align 8
  %10 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %12 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %11, i32 0, i32 0
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %12, align 8
  store %struct.if_usb_card* %13, %struct.if_usb_card** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %15 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @lbtf_deb_usbd(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %21 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @lbtf_deb_usbd(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @MVMS_CMD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %33 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32 %31, i32* %35, align 4
  br label %43

36:                                               ; preds = %4
  %37 = load i32, i32* @CMD_TYPE_DATA, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %40 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32 %38, i32* %42, align 4
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %45 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MESSAGE_HEADER_LEN, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @memcpy(i64 %48, i64* %49, i64 %50)
  %52 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %53 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %54 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @MESSAGE_HEADER_LEN, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @usb_tx_block(%struct.if_usb_card* %52, i64 %55, i64 %58, i32 %59)
  ret i32 %60
}

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64, i64*, i64) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
