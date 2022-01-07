; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_get_ethernet_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_get_ethernet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"bad MAC string %d fetch, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_get_ethernet_addr(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [13 x i8], align 1
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %14 = call i32 @usb_string(%struct.TYPE_4__* %11, i32 %12, i8* %13, i32 13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 12
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @hex_to_bin(i8 zeroext %40)
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @hex_to_bin(i8 zeroext %47)
  %49 = add nsw i32 %42, %48
  %50 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %49, i32* %57, align 4
  br label %58

58:                                               ; preds = %36
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %6, align 4
  br label %33

63:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %30
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @usb_string(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @hex_to_bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
