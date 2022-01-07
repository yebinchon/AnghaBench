; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMID_get_u32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMID_get_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wmi_interface = type { i32 }

@ACER_WMID_GET_WIRELESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_GET_BLUETOOTH_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_GET_BRIGHTNESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_GET_THREEG_METHODID = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.wmi_interface*)* @WMID_get_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMID_get_u32(i32* %0, i32 %1, %struct.wmi_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wmi_interface* %2, %struct.wmi_interface** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %32 [
    i32 128, label %13
    i32 132, label %15
    i32 131, label %17
    i32 129, label %19
    i32 130, label %21
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @ACER_WMID_GET_WIRELESS_METHODID, align 4
  store i32 %14, i32* %11, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i32, i32* @ACER_WMID_GET_BLUETOOTH_METHODID, align 4
  store i32 %16, i32* %11, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* @ACER_WMID_GET_BRIGHTNESS_METHODID, align 4
  store i32 %18, i32* %11, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @ACER_WMID_GET_THREEG_METHODID, align 4
  store i32 %20, i32* %11, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = call i32 @ec_read(i32 159, i32* %9)
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 1
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %45

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %3, %31
  %33 = load i32, i32* @AE_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %19, %17, %15, %13
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @WMI_execute_u32(i32 %35, i32 0, i32* %10)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @ACPI_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %32, %26
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ec_read(i32, i32*) #1

declare dso_local i32 @WMI_execute_u32(i32, i32, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
