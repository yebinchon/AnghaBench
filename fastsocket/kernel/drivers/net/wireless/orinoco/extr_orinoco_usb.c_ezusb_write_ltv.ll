; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_write_ltv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_write_ltv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }
%struct.request_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EZUSB_RID_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EZUSB_RID_TX = common dso_local global i32 0, align 4
@EZUSB_FRAME_DATA = common dso_local global i32 0, align 4
@EZUSB_FRAME_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32, i32, i32, i8*)* @ezusb_write_ltv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_write_ltv(%struct.hermes* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hermes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ezusb_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.request_context*, align 8
  store %struct.hermes* %0, %struct.hermes** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.hermes*, %struct.hermes** %7, align 8
  %16 = getelementptr inbounds %struct.hermes, %struct.hermes* %15, i32 0, i32 0
  %17 = load %struct.ezusb_priv*, %struct.ezusb_priv** %16, align 8
  store %struct.ezusb_priv* %17, %struct.ezusb_priv** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %54

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @HERMES_RECLEN_TO_BYTES(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %54

29:                                               ; preds = %23
  %30 = load %struct.ezusb_priv*, %struct.ezusb_priv** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @EZUSB_RID_ACK, align 4
  %33 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %30, i32 %31, i32 %32)
  store %struct.request_context* %33, %struct.request_context** %14, align 8
  %34 = load %struct.request_context*, %struct.request_context** %14, align 8
  %35 = icmp ne %struct.request_context* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %54

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EZUSB_RID_TX, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @EZUSB_FRAME_DATA, align 4
  store i32 %44, i32* %13, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.ezusb_priv*, %struct.ezusb_priv** %12, align 8
  %49 = load %struct.request_context*, %struct.request_context** %14, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %48, %struct.request_context* %49, i32 %50, i8* %51, i32 %52, i32* null, i32 0, i32* null)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %47, %36, %28, %20
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @HERMES_RECLEN_TO_BYTES(i32) #1

declare dso_local %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv*, i32, i32) #1

declare dso_local i32 @ezusb_access_ltv(%struct.ezusb_priv*, %struct.request_context*, i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
