; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-lg.c_lg_input_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-lg.c_lg_input_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i64, i32 }

@LG_BAD_RELATIVE_KEYS = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i64 0, align 8
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@LG_DUPLICATE_USAGES = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i64 0, align 8
@EV_ABS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lg_input_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_input_mapped(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_input*, align 8
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca %struct.hid_usage*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_input* %1, %struct.hid_input** %8, align 8
  store %struct.hid_field* %2, %struct.hid_field** %9, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %10, align 8
  store i64** %4, i64*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %15 = call i64 @hid_get_drvdata(%struct.hid_device* %14)
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  %17 = load i64, i64* @LG_BAD_RELATIVE_KEYS, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %6
  %21 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %22 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EV_KEY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %28 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %37 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %26, %20, %6
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @LG_DUPLICATE_USAGES, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EV_KEY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %53 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EV_REL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %59 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EV_ABS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57, %51, %45
  %64 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %65 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64**, i64*** %11, align 8
  %68 = load i64*, i64** %67, align 8
  %69 = call i32 @clear_bit(i32 %66, i64* %68)
  br label %70

70:                                               ; preds = %63, %57, %40
  ret i32 0
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
