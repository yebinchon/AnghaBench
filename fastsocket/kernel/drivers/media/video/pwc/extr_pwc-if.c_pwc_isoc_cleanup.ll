; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_isoc_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_isoc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c">> pwc_isoc_cleanup()\0A\00", align 1
@EPIPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting alternate interface 0.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"<< pwc_isoc_cleanup()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwc_isoc_cleanup(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  %3 = call i32 @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %5 = icmp eq %struct.pwc_device* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %9 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %33

13:                                               ; preds = %7
  %14 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %15 = call i32 @pwc_iso_stop(%struct.pwc_device* %14)
  %16 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %17 = call i32 @pwc_iso_free(%struct.pwc_device* %16)
  %18 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %19 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EPIPE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = call i32 @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %26 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_set_interface(i32 %27, i32 0, i32 0)
  br label %29

29:                                               ; preds = %23, %13
  %30 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %31 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = call i32 @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %12, %6
  ret void
}

declare dso_local i32 @PWC_DEBUG_OPEN(i8*) #1

declare dso_local i32 @pwc_iso_stop(%struct.pwc_device*) #1

declare dso_local i32 @pwc_iso_free(%struct.pwc_device*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
