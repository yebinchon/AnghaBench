; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-sony.c_sony_report_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-sony.c_sony_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32 }

@VAIO_RDESC_CONSTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Fixing up Sony Vaio VGX report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i32*, i32)* @sony_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_report_fixup(%struct.hid_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sony_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.sony_sc* %9, %struct.sony_sc** %7, align 8
  %10 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %11 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @VAIO_RDESC_CONSTANT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp uge i32 %17, 56
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 54
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 55
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 0
  %32 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 55
  store i32 6, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %24, %19, %16, %3
  ret void
}

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
