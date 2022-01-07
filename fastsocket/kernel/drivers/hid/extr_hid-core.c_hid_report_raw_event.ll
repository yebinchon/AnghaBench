; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_report_raw_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_report_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 (%struct.hid_device*, %struct.hid_report*)*, %struct.hid_report_enum* }
%struct.hid_report = type { i32, i32, i32*, i32 }
%struct.hid_report_enum = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"report %d is too short, (%d < %d)\0A\00", align 1
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDRAW = common dso_local global i32 0, align 4
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_report_raw_event(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_report_enum*, align 8
  %12 = alloca %struct.hid_report*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 2
  %19 = load %struct.hid_report_enum*, %struct.hid_report_enum** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %19, i64 %21
  store %struct.hid_report_enum* %22, %struct.hid_report_enum** %11, align 8
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %8, align 8
  store i32* %24, i32** %16, align 8
  %25 = load %struct.hid_report_enum*, %struct.hid_report_enum** %11, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.hid_report* @hid_get_report(%struct.hid_report_enum* %25, i32* %26)
  store %struct.hid_report* %27, %struct.hid_report** %12, align 8
  %28 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %29 = icmp ne %struct.hid_report* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %143

31:                                               ; preds = %5
  %32 = load %struct.hid_report_enum*, %struct.hid_report_enum** %11, align 8
  %33 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32*, i32** %16, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %16, align 8
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %43 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = ashr i32 %45, 3
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %41
  %52 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %53 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @dbg_hid(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @memset(i32* %61, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %51, %41
  %67 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %68 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %75 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %74, i32 0, i32 1
  %76 = load i32 (%struct.hid_device*, %struct.hid_report*)*, i32 (%struct.hid_device*, %struct.hid_report*)** %75, align 8
  %77 = icmp ne i32 (%struct.hid_device*, %struct.hid_report*)* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %80 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 1
  %81 = load i32 (%struct.hid_device*, %struct.hid_report*)*, i32 (%struct.hid_device*, %struct.hid_report*)** %80, align 8
  %82 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %83 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %84 = call i32 %81(%struct.hid_device* %82, %struct.hid_report* %83)
  br label %85

85:                                               ; preds = %78, %73, %66
  %86 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %87 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %85
  %93 = load %struct.hid_report_enum*, %struct.hid_report_enum** %11, align 8
  %94 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 -1
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @hidraw_report_event(%struct.hid_device* %98, i32* %100, i32 %102)
  br label %109

104:                                              ; preds = %92
  %105 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @hidraw_report_event(%struct.hid_device* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %97
  br label %110

110:                                              ; preds = %109, %85
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %129, %110
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %114 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %111
  %118 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %119 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %120 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @hid_input_field(%struct.hid_device* %118, i32 %125, i32* %126, i32 %127)
  br label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %13, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %111

132:                                              ; preds = %111
  %133 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %134 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %141 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %142 = call i32 @hidinput_report_event(%struct.hid_device* %140, %struct.hid_report* %141)
  br label %143

143:                                              ; preds = %30, %139, %132
  ret void
}

declare dso_local %struct.hid_report* @hid_get_report(%struct.hid_report_enum*, i32*) #1

declare dso_local i32 @dbg_hid(i8*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hidraw_report_event(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @hid_input_field(%struct.hid_device*, i32, i32*, i32) #1

declare dso_local i32 @hidinput_report_event(%struct.hid_device*, %struct.hid_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
