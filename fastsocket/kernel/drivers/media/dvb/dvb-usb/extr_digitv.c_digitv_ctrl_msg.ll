; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32*, i32, i32*, i32)* @digitv_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [7 x i32], align 16
  %17 = alloca [7 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32*, i32** %13, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i1 [ true, %7 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  %27 = call i32 @memset(i32* %26, i32 0, i32 7)
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 0
  %29 = call i32 @memset(i32* %28, i32 0, i32 7)
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %12, align 4
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %14, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 3
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  %52 = call i32 @dvb_usb_generic_write(%struct.dvb_usb_device* %50, i32* %51, i32 7)
  br label %62

53:                                               ; preds = %40
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  %56 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 0
  %57 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %54, i32* %55, i32 7, i32* %56, i32 7, i32 10)
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 3
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @memcpy(i32* %58, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %45
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_usb_generic_write(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
