; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_input_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_driver*, %struct.hid_report_enum* }
%struct.hid_driver = type { i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)* }
%struct.hid_device.0 = type opaque
%struct.hid_report = type { i32 }
%struct.hid_report_enum = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"empty report\0A\00", align 1
@HID_DEBUG_BUFSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\0Areport (size %u) (%snumbered)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"report %d (size %u) = \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_input_report(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hid_report_enum*, align 8
  %13 = alloca %struct.hid_driver*, align 8
  %14 = alloca %struct.hid_report*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %19 = icmp ne %struct.hid_device* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load %struct.hid_driver*, %struct.hid_driver** %22, align 8
  %24 = icmp ne %struct.hid_driver* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %5
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %156

28:                                               ; preds = %20
  %29 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 1
  %31 = load %struct.hid_report_enum*, %struct.hid_report_enum** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %31, i64 %33
  store %struct.hid_report_enum* %34, %struct.hid_report_enum** %12, align 8
  %35 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %36 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %35, i32 0, i32 0
  %37 = load %struct.hid_driver*, %struct.hid_driver** %36, align 8
  store %struct.hid_driver* %37, %struct.hid_driver** %13, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = call i32 @dbg_hid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %156

42:                                               ; preds = %28
  %43 = load i32, i32* @HID_DEBUG_BUFSIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 1, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  store i8* %48, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load %struct.hid_report_enum*, %struct.hid_report_enum** %12, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call %struct.hid_report* @hid_get_report(%struct.hid_report_enum* %52, i32* %53)
  store %struct.hid_report* %54, %struct.hid_report** %14, align 8
  br label %115

55:                                               ; preds = %42
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* @HID_DEBUG_BUFSIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.hid_report_enum*, %struct.hid_report_enum** %12, align 8
  %61 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %66 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %56, i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %65)
  %67 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = call i32 @hid_debug_event(%struct.hid_device* %67, i8* %68)
  %70 = load %struct.hid_report_enum*, %struct.hid_report_enum** %12, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call %struct.hid_report* @hid_get_report(%struct.hid_report_enum* %70, i32* %71)
  store %struct.hid_report* %72, %struct.hid_report** %14, align 8
  %73 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  %74 = icmp ne %struct.hid_report* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %55
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @kfree(i8* %76)
  store i32 -1, i32* %6, align 4
  br label %156

78:                                               ; preds = %55
  %79 = load i8*, i8** %15, align 8
  %80 = load i32, i32* @HID_DEBUG_BUFSIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  %83 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %79, i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @hid_debug_event(%struct.hid_device* %87, i8* %88)
  store i32 0, i32* %16, align 4
  br label %90

90:                                               ; preds = %107, %78
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i8*, i8** %15, align 8
  %96 = load i32, i32* @HID_DEBUG_BUFSIZE, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %16, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %95, i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 @hid_debug_event(%struct.hid_device* %104, i8* %105)
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %16, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %90

110:                                              ; preds = %90
  %111 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %112 = call i32 @hid_debug_event(%struct.hid_device* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 @kfree(i8* %113)
  br label %115

115:                                              ; preds = %110, %51
  %116 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %117 = icmp ne %struct.hid_driver* %116, null
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %120 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %119, i32 0, i32 0
  %121 = load i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)** %120, align 8
  %122 = icmp ne i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)* %121, null
  br i1 %122, label %123, label %149

123:                                              ; preds = %118
  %124 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %125 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  %126 = call i64 @hid_match_report(%struct.hid_device* %124, %struct.hid_report* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %123
  %129 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %130 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %129, i32 0, i32 0
  %131 = load i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)** %130, align 8
  %132 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %133 = bitcast %struct.hid_device* %132 to %struct.hid_device.0*
  %134 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 %131(%struct.hid_device.0* %133, %struct.hid_report* %134, i32* %135, i32 %136)
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %17, align 4
  br label %146

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ]
  store i32 %147, i32* %6, align 4
  br label %156

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %148, %123, %118, %115
  %150 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @hid_report_raw_event(%struct.hid_device* %150, i32 %151, i32* %152, i32 %153, i32 %154)
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %149, %146, %75, %40, %25
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.hid_report* @hid_get_report(%struct.hid_report_enum*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @hid_debug_event(%struct.hid_device*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @hid_match_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i32 @hid_report_raw_event(%struct.hid_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
