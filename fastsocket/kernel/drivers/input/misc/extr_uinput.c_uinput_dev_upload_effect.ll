; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_dev_upload_effect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_dev_upload_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.uinput_device = type { i32 }
%struct.uinput_request = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ff_effect*, %struct.ff_effect* }

@FF_PERIODIC = common dso_local global i64 0, align 8
@FF_CUSTOM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UI_FF_UPLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)* @uinput_dev_upload_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_dev_upload_effect(%struct.input_dev* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.uinput_device*, align 8
  %9 = alloca %struct.uinput_request, align 8
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = call %struct.uinput_device* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.uinput_device* %12, %struct.uinput_device** %8, align 8
  %13 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FF_PERIODIC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %20 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FF_CUSTOM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %54

29:                                               ; preds = %18, %3
  %30 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 2
  %32 = call i32 @init_completion(i32* %31)
  %33 = load i32, i32* @UI_FF_UPLOAD, align 4
  %34 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %36 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store %struct.ff_effect* %35, %struct.ff_effect** %38, align 8
  %39 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %40 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.ff_effect* %39, %struct.ff_effect** %42, align 8
  %43 = load %struct.uinput_device*, %struct.uinput_device** %8, align 8
  %44 = call i32 @uinput_request_submit(%struct.uinput_device* %43, %struct.uinput_request* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 2
  %49 = call i32 @wait_for_completion(i32* %48)
  %50 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %47, %29
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.uinput_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @uinput_request_submit(%struct.uinput_device*, %struct.uinput_request*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
