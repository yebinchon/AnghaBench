; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_get_edid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_video_bus = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.acpi_video_device* }
%struct.acpi_video_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_6__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_video_get_edid(%struct.acpi_device* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_video_bus*, align 8
  %11 = alloca %struct.acpi_video_device*, align 8
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %union.acpi_object* null, %union.acpi_object** %12, align 8
  %16 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %17 = icmp ne %struct.acpi_device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %20 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %19)
  %21 = icmp ne %struct.acpi_video_bus* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %139

25:                                               ; preds = %18
  %26 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %27 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %26)
  store %struct.acpi_video_bus* %27, %struct.acpi_video_bus** %10, align 8
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %133, %25
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %10, align 8
  %31 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %136

34:                                               ; preds = %28
  %35 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %10, align 8
  %36 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.acpi_video_device*, %struct.acpi_video_device** %41, align 8
  store %struct.acpi_video_device* %42, %struct.acpi_video_device** %11, align 8
  store i32 256, i32* %15, align 4
  %43 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %44 = icmp ne %struct.acpi_video_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %133

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %83 [
    i32 131, label %51
    i32 128, label %59
    i32 130, label %67
    i32 129, label %75
  ]

51:                                               ; preds = %49
  %52 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %53 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %133

58:                                               ; preds = %51
  br label %83

59:                                               ; preds = %49
  %60 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %61 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %133

66:                                               ; preds = %59
  br label %83

67:                                               ; preds = %49
  %68 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %69 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %133

74:                                               ; preds = %67
  br label %83

75:                                               ; preds = %49
  %76 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %77 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %133

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %49, %82, %74, %66, %58
  br label %92

84:                                               ; preds = %46
  %85 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %86 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %133

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %83
  %93 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @acpi_video_device_EDID(%struct.acpi_video_device* %93, %union.acpi_object** %12, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @ACPI_FAILURE(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %101 = icmp ne %union.acpi_object* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %104 = bitcast %union.acpi_object* %103 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102, %99, %92
  store i32 128, i32* %15, align 4
  %109 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @acpi_video_device_EDID(%struct.acpi_video_device* %109, %union.acpi_object** %12, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i64 @ACPI_FAILURE(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %108
  %116 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %117 = icmp ne %union.acpi_object* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %120 = bitcast %union.acpi_object* %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118, %115, %108
  br label %133

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %102
  %127 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %128 = bitcast %union.acpi_object* %127 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8**, i8*** %9, align 8
  store i8* %130, i8** %131, align 8
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %5, align 4
  br label %139

133:                                              ; preds = %124, %90, %81, %73, %65, %57, %45
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %28

136:                                              ; preds = %28
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %136, %126, %22
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_video_device_EDID(%struct.acpi_video_device*, %union.acpi_object**, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
