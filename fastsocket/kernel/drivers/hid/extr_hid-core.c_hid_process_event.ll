; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, %struct.hid_driver* }
%struct.hid_driver = type { i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 }
%struct.hid_device.0 = type opaque
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s's event failed with %d\0A\00", align 1
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32, i32)* @hid_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_process_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_driver*, align 8
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 2
  %15 = load %struct.hid_driver*, %struct.hid_driver** %14, align 8
  store %struct.hid_driver* %15, %struct.hid_driver** %11, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %17 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @hid_dump_input(%struct.hid_device* %16, %struct.hid_usage* %17, i32 %18)
  %20 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %21 = icmp ne %struct.hid_driver* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %5
  %23 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %24 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %29 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %30 = call i64 @hid_match_usage(%struct.hid_device* %28, %struct.hid_usage* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %34 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %33, i32 0, i32 0
  %35 = load i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)** %34, align 8
  %36 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %37 = bitcast %struct.hid_device* %36 to %struct.hid_device.0*
  %38 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %39 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 %35(%struct.hid_device.0* %37, %struct.hid_field* %38, %struct.hid_usage* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %49 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %44
  br label %92

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %27, %22, %5
  %56 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %64 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %65 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @hidinput_hid_event(%struct.hid_device* %63, %struct.hid_field* %64, %struct.hid_usage* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %70 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %80 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 1
  %81 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %85 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %84, i32 0, i32 1
  %86 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %85, align 8
  %87 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %88 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %89 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 %86(%struct.hid_device* %87, %struct.hid_field* %88, %struct.hid_usage* %89, i32 %90)
  br label %92

92:                                               ; preds = %53, %83, %78, %75, %68
  ret void
}

declare dso_local i32 @hid_dump_input(%struct.hid_device*, %struct.hid_usage*, i32) #1

declare dso_local i64 @hid_match_usage(%struct.hid_device*, %struct.hid_usage*) #1

declare dso_local i32 @dbg_hid(i8*, i32, i32) #1

declare dso_local i32 @hidinput_hid_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
