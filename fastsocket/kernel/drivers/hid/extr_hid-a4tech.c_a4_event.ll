; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-a4tech.c_a4_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-a4tech.c_a4_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i64, i64, i32 }
%struct.a4tech_sc = type { i32, i32, i64 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@A4_2WHEEL_MOUSE_HACK_B8 = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i64 0, align 8
@REL_HWHEEL = common dso_local global i64 0, align 8
@A4_2WHEEL_MOUSE_HACK_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i64)* @a4_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.a4tech_sc*, align 8
  %11 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.a4tech_sc* %13, %struct.a4tech_sc** %10, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %22 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %4
  store i32 0, i32* %5, align 4
  br label %120

31:                                               ; preds = %25
  %32 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %33 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.input_dev*, %struct.input_dev** %35, align 8
  store %struct.input_dev* %36, %struct.input_dev** %11, align 8
  %37 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %38 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @A4_2WHEEL_MOUSE_HACK_B8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %31
  %44 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %45 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EV_REL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %51 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @REL_WHEEL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %58 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  store i32 1, i32* %5, align 4
  br label %120

59:                                               ; preds = %49, %43
  %60 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %61 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 65720
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %66 = load i64, i64* @EV_REL, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i64, i64* @REL_HWHEEL, align 8
  br label %73

71:                                               ; preds = %64
  %72 = load i64, i64* @REL_WHEEL, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i64 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %76 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @input_event(%struct.input_dev* %65, i64 %66, i64 %74, i64 %77)
  store i32 1, i32* %5, align 4
  br label %120

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %31
  %81 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %82 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @A4_2WHEEL_MOUSE_HACK_7, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %89 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 589831
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %99 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  store i32 1, i32* %5, align 4
  br label %120

100:                                              ; preds = %87, %80
  %101 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %102 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REL_WHEEL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %108 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %113 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %114 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @REL_HWHEEL, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @input_event(%struct.input_dev* %112, i64 %115, i64 %116, i64 %117)
  store i32 1, i32* %5, align 4
  br label %120

119:                                              ; preds = %106, %100
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %111, %92, %73, %55, %30
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
