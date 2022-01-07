; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_usb_tx_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_usb_tx_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Device removed\0A\00", align 1
@if_usb_write_bulk_callback = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"usb_submit_urb failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"usb_submit_urb success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, i32*, i32)* @usb_tx_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_tx_block(%struct.if_usb_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.if_usb_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %9 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %20 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %23 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %26 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %29 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_sndbulkpipe(%struct.TYPE_6__* %27, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @if_usb_write_bulk_callback, align 4
  %35 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %36 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %21, %struct.TYPE_6__* %24, i32 %31, i32* %32, i32 %33, i32 %34, %struct.if_usb_card* %35)
  %37 = load i32, i32* @URB_ZERO_PACKET, align 4
  %38 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %39 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %45 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i32 @usb_submit_urb(%struct.TYPE_5__* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %18
  %51 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %52 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %7, align 4
  br label %63

57:                                               ; preds = %18
  %58 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %59 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @lbs_deb_usb2(i32* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %57, %50
  br label %64

64:                                               ; preds = %63, %12
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, ...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32*, i32, i32, %struct.if_usb_card*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lbs_deb_usb2(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
