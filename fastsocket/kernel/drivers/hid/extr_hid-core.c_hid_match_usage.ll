; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_match_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_match_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hid_usage_id* }
%struct.hid_usage_id = type { i32, i32, i32 }
%struct.hid_usage = type { i32, i32, i32 }

@HID_ANY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_usage*)* @hid_match_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_match_usage(%struct.hid_device* %0, %struct.hid_usage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_usage*, align 8
  %6 = alloca %struct.hid_usage_id*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hid_usage_id*, %struct.hid_usage_id** %10, align 8
  store %struct.hid_usage_id* %11, %struct.hid_usage_id** %6, align 8
  %12 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %13 = icmp ne %struct.hid_usage_id* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %67, %15
  %17 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %18 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HID_ANY_ID, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %16
  %24 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %25 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HID_ANY_ID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %31 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hid_usage*, %struct.hid_usage** %5, align 8
  %34 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %29, %23
  %38 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %39 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HID_ANY_ID, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %45 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hid_usage*, %struct.hid_usage** %5, align 8
  %48 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %43, %37
  %52 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %53 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HID_ANY_ID, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %59 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hid_usage*, %struct.hid_usage** %5, align 8
  %62 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %51
  store i32 1, i32* %3, align 4
  br label %71

66:                                               ; preds = %57, %43, %29
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.hid_usage_id*, %struct.hid_usage_id** %6, align 8
  %69 = getelementptr inbounds %struct.hid_usage_id, %struct.hid_usage_id* %68, i32 1
  store %struct.hid_usage_id* %69, %struct.hid_usage_id** %6, align 8
  br label %16

70:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %65, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
