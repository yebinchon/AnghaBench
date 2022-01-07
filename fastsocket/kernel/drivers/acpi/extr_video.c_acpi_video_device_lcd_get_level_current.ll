; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_lcd_get_level_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_lcd_get_level_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64*, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BQC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_BCQ\00", align 1
@bqc_offset_aml_bug_workaround = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s returned an invalid level\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Evaluating %s failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*, i64*)* @acpi_video_device_lcd_get_level_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_video_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %140

21:                                               ; preds = %15, %2
  %22 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = call i32 @acpi_evaluate_integer(i32 %33, i8* %34, i32* null, i64* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @ACPI_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %128

40:                                               ; preds = %21
  %41 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %40
  %49 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %63, %65
  %67 = load i64*, i64** %5, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %56, %48
  %69 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %70 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 2
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %5, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %68, %40
  %81 = load i64, i64* @bqc_offset_aml_bug_workaround, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %81
  store i64 %84, i64* %82, align 8
  store i32 2, i32* %7, align 4
  br label %85

85:                                               ; preds = %114, %80
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %88 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %85
  %94 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %5, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %93
  %107 = load i64*, i64** %5, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %110 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i64 %108, i64* %112, align 8
  store i32 0, i32* %3, align 4
  br label %147

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %85

117:                                              ; preds = %85
  %118 = load i32, i32* @AE_INFO, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = call i32 @ACPI_WARNING(i32 %120)
  %122 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %123 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %126 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  br label %139

128:                                              ; preds = %21
  %129 = load i32, i32* @AE_INFO, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = call i32 @ACPI_WARNING(i32 %131)
  %133 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %134 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %137 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %128, %117
  br label %140

140:                                              ; preds = %139, %15
  %141 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %142 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %5, align 8
  store i64 %145, i64* %146, align 8
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %140, %106
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
