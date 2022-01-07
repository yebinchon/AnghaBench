; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_handle_rx_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_handle_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32 }
%struct.rx_length_info = type { i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"invalid, small RX packet : %d\0A\00", align 1
@RX_LENGTH_INFO_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*, i32*, i32)* @handle_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rx_packet(%struct.zd_usb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.zd_usb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_length_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zd_usb* %0, %struct.zd_usb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 16
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %17 = call i32 @zd_usb_dev(%struct.zd_usb* %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_dbg_f(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %77

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = getelementptr inbounds i32, i32* %24, i64 -16
  %26 = bitcast i32* %25 to %struct.rx_length_info*
  store %struct.rx_length_info* %26, %struct.rx_length_info** %8, align 8
  %27 = load %struct.rx_length_info*, %struct.rx_length_info** %8, align 8
  %28 = getelementptr inbounds %struct.rx_length_info, %struct.rx_length_info* %27, i32 0, i32 1
  %29 = call i32 @get_unaligned_le16(i32* %28)
  %30 = load i32, i32* @RX_LENGTH_INFO_TAG, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %68, %32
  %34 = load %struct.rx_length_info*, %struct.rx_length_info** %8, align 8
  %35 = getelementptr inbounds %struct.rx_length_info, %struct.rx_length_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @get_unaligned_le16(i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %77

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %77

52:                                               ; preds = %44
  %53 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %54 = call i32 @zd_usb_to_hw(%struct.zd_usb* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @zd_mac_rx(i32 %54, i32* %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %77

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, 3
  %67 = and i32 %66, -4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %33

71:                                               ; preds = %20
  %72 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %73 = call i32 @zd_usb_to_hw(%struct.zd_usb* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @zd_mac_rx(i32 %73, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %15, %43, %51, %63, %71
  ret void
}

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @zd_mac_rx(i32, i32*, i32) #1

declare dso_local i32 @zd_usb_to_hw(%struct.zd_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
