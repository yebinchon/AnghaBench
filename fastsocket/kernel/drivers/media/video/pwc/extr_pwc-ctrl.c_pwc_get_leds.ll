; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_leds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@GET_STATUS_CTL = common dso_local global i32 0, align 4
@LED_FORMATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32*, i32*)* @pwc_get_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_get_leds(%struct.pwc_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 730
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %19 = load i32, i32* @GET_STATUS_CTL, align 4
  %20 = load i32, i32* @LED_FORMATTER, align 4
  %21 = bitcast [2 x i8]* %8 to i8**
  %22 = call i32 @recv_control_msg(%struct.pwc_device* %18, i32 %19, i32 %20, i8** %21, i32 2)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %17
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = mul nsw i32 %30, 100
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %35, 100
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %25, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @recv_control_msg(%struct.pwc_device*, i32, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
