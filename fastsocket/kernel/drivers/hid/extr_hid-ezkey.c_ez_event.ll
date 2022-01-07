; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ezkey.c_ez_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ezkey.c_ez_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i64, i64 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i64 0, align 8
@REL_HWHEEL = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @ez_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ez_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %19 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %4
  store i32 0, i32* %5, align 4
  br label %55

28:                                               ; preds = %22
  %29 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %30 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EV_REL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %36 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REL_HWHEEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %42 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.input_dev*, %struct.input_dev** %44, align 8
  store %struct.input_dev* %45, %struct.input_dev** %10, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %47 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %48 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @REL_WHEEL, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 @input_event(%struct.input_dev* %46, i64 %49, i32 %50, i32 %52)
  store i32 1, i32* %5, align 4
  br label %55

54:                                               ; preds = %34, %28
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %40, %27
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @input_event(%struct.input_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
