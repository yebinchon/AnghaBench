; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_read_ltv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_read_ltv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }
%struct.request_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EZUSB_FRAME_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32, i32, i32, i32*, i8*)* @ezusb_read_ltv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_read_ltv(%struct.hermes* %0, i32 %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hermes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ezusb_priv*, align 8
  %15 = alloca %struct.request_context*, align 8
  store %struct.hermes* %0, %struct.hermes** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.hermes*, %struct.hermes** %8, align 8
  %17 = getelementptr inbounds %struct.hermes, %struct.hermes* %16, i32 0, i32 0
  %18 = load %struct.ezusb_priv*, %struct.ezusb_priv** %17, align 8
  store %struct.ezusb_priv* %18, %struct.ezusb_priv** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = urem i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %43

25:                                               ; preds = %6
  %26 = load %struct.ezusb_priv*, %struct.ezusb_priv** %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %26, i32 %27, i32 %28)
  store %struct.request_context* %29, %struct.request_context** %15, align 8
  %30 = load %struct.request_context*, %struct.request_context** %15, align 8
  %31 = icmp ne %struct.request_context* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %43

35:                                               ; preds = %25
  %36 = load %struct.ezusb_priv*, %struct.ezusb_priv** %14, align 8
  %37 = load %struct.request_context*, %struct.request_context** %15, align 8
  %38 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %36, %struct.request_context* %37, i32 0, i32* null, i32 %38, i8* %39, i32 %40, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %32, %22
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv*, i32, i32) #1

declare dso_local i32 @ezusb_access_ltv(%struct.ezusb_priv*, %struct.request_context*, i32, i32*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
