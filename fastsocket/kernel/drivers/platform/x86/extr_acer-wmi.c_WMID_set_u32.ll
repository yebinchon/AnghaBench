; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMID_set_u32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMID_set_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wmi_interface = type { i32 }

@max_brightness = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACER_WMID_SET_BRIGHTNESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_SET_WIRELESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_SET_BLUETOOTH_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_SET_THREEG_METHODID = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.wmi_interface*)* @WMID_set_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMID_set_u32(i32 %0, i32 %1, %struct.wmi_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.wmi_interface* %2, %struct.wmi_interface** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %60 [
    i32 131, label %11
    i32 128, label %19
    i32 132, label %26
    i32 129, label %33
    i32 130, label %40
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @max_brightness, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %11
  %18 = load i32, i32* @ACER_WMID_SET_BRIGHTNESS_METHODID, align 4
  store i32 %18, i32* %8, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %23, i32* %4, align 4
  br label %66

24:                                               ; preds = %19
  %25 = load i32, i32* @ACER_WMID_SET_WIRELESS_METHODID, align 4
  store i32 %25, i32* %8, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %26
  %32 = load i32, i32* @ACER_WMID_SET_BLUETOOTH_METHODID, align 4
  store i32 %32, i32* %8, align 4
  br label %62

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %33
  %39 = load i32, i32* @ACER_WMID_SET_THREEG_METHODID, align 4
  store i32 %39, i32* %8, align 4
  br label %62

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 146, i32 147
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %9, align 1
  %56 = call i32 (...) @i8042_lock_chip()
  %57 = call i32 @i8042_command(i8* %9, i32 4185)
  %58 = call i32 (...) @i8042_unlock_chip()
  store i32 0, i32* %4, align 4
  br label %66

59:                                               ; preds = %45
  br label %62

60:                                               ; preds = %3
  %61 = load i32, i32* @AE_ERROR, align 4
  store i32 %61, i32* %4, align 4
  br label %66

62:                                               ; preds = %59, %38, %31, %24, %17
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WMI_execute_u32(i32 %63, i32 %64, i32* null)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %60, %50, %43, %36, %29, %22, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @i8042_lock_chip(...) #1

declare dso_local i32 @i8042_command(i8*, i32) #1

declare dso_local i32 @i8042_unlock_chip(...) #1

declare dso_local i32 @WMI_execute_u32(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
