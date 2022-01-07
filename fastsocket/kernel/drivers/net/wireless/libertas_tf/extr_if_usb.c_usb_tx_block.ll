; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_usb_tx_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_usb_tx_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.TYPE_5__*, i32, %struct.urb*, %struct.urb*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32 }
%struct.TYPE_4__ = type { i64 }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Device removed\0A\00", align 1
@if_usb_write_bulk_callback = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"usb_submit_urb failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"usb_submit_urb success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, i32*, i32, i64)* @usb_tx_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_tx_block(%struct.if_usb_card* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.if_usb_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  store %struct.if_usb_card* %0, %struct.if_usb_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  %11 = load i32, i32* @LBTF_DEB_USB, align 4
  %12 = call i32 @lbtf_deb_enter(i32 %11)
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %21 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %75

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %30 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %29, i32 0, i32 3
  %31 = load %struct.urb*, %struct.urb** %30, align 8
  store %struct.urb* %31, %struct.urb** %10, align 8
  br label %36

32:                                               ; preds = %25
  %33 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %34 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %33, i32 0, i32 2
  %35 = load %struct.urb*, %struct.urb** %34, align 8
  store %struct.urb* %35, %struct.urb** %10, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.urb*, %struct.urb** %10, align 8
  %38 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %39 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %42 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %45 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %43, i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @if_usb_write_bulk_callback, align 4
  %51 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %52 = call i32 @usb_fill_bulk_urb(%struct.urb* %37, %struct.TYPE_5__* %40, i32 %47, i32* %48, i32 %49, i32 %50, %struct.if_usb_card* %51)
  %53 = load i32, i32* @URB_ZERO_PACKET, align 4
  %54 = load %struct.urb*, %struct.urb** %10, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.urb*, %struct.urb** %10, align 8
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call i64 @usb_submit_urb(%struct.urb* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %36
  %63 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %64 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %75

69:                                               ; preds = %36
  %70 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %71 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @lbtf_deb_usb2(i32* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %62, %19
  %76 = load i32, i32* @LBTF_DEB_USB, align 4
  %77 = call i32 @lbtf_deb_leave(i32 %76)
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*, ...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_5__*, i32, i32*, i32, i32, %struct.if_usb_card*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @lbtf_deb_usb2(i32*, i8*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
