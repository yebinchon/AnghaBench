; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_get_formats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_get_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.soc_camera_device = type { %struct.TYPE_5__*, %struct.sh_mobile_ceu_cam*, %struct.TYPE_4__ }
%struct.sh_mobile_ceu_cam = type { i32* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.soc_camera_format_xlate = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sh_mobile_ceu_formats = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Providing format %s using %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Providing format %s in pass-through mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32, %struct.soc_camera_format_xlate*)* @sh_mobile_ceu_get_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_get_formats(%struct.soc_camera_device* %0, i32 %1, %struct.soc_camera_format_xlate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_camera_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_camera_format_xlate*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sh_mobile_ceu_cam*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.soc_camera_format_xlate* %2, %struct.soc_camera_format_xlate** %7, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %19 = call i32 @sh_mobile_ceu_try_bus_param(%struct.soc_camera_device* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %180

23:                                               ; preds = %3
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %25 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %24, i32 0, i32 1
  %26 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %25, align 8
  %27 = icmp ne %struct.sh_mobile_ceu_cam* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sh_mobile_ceu_cam* @kzalloc(i32 8, i32 %29)
  store %struct.sh_mobile_ceu_cam* %30, %struct.sh_mobile_ceu_cam** %13, align 8
  %31 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %13, align 8
  %32 = icmp ne %struct.sh_mobile_ceu_cam* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %180

36:                                               ; preds = %28
  %37 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %13, align 8
  %38 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %39 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %38, i32 0, i32 1
  store %struct.sh_mobile_ceu_cam* %37, %struct.sh_mobile_ceu_cam** %39, align 8
  br label %44

40:                                               ; preds = %23
  %41 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %42 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %41, i32 0, i32 1
  %43 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %42, align 8
  store %struct.sh_mobile_ceu_cam* %43, %struct.sh_mobile_ceu_cam** %13, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %13, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %52 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %132 [
    i32 131, label %59
    i32 130, label %59
    i32 129, label %59
    i32 128, label %59
  ]

59:                                               ; preds = %50, %50, %50, %50
  %60 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %13, align 8
  %61 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %133

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sh_mobile_ceu_formats, align 8
  %67 = bitcast %struct.TYPE_5__* %66 to i8*
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %13, align 8
  %70 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sh_mobile_ceu_formats, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %128, %65
  %77 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %78 = icmp ne %struct.soc_camera_format_xlate* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %85, label %131

85:                                               ; preds = %83
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sh_mobile_ceu_formats, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %91 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %90, i32 0, i32 2
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %91, align 8
  %92 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %93 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %99 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %98, i32 0, i32 1
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %99, align 8
  %100 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %101 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %109 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %111 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %110, i32 1
  store %struct.soc_camera_format_xlate* %111, %struct.soc_camera_format_xlate** %7, align 8
  %112 = load %struct.device*, %struct.device** %8, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sh_mobile_ceu_formats, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %120 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %126)
  br label %128

128:                                              ; preds = %85
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %76

131:                                              ; preds = %83
  br label %132

132:                                              ; preds = %50, %131
  br label %133

133:                                              ; preds = %132, %64
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  %136 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %137 = icmp ne %struct.soc_camera_format_xlate* %136, null
  br i1 %137, label %138, label %177

138:                                              ; preds = %133
  %139 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %140 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %146 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %145, i32 0, i32 2
  store %struct.TYPE_5__* %144, %struct.TYPE_5__** %146, align 8
  %147 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %148 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %154 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %153, i32 0, i32 1
  store %struct.TYPE_5__* %152, %struct.TYPE_5__** %154, align 8
  %155 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %156 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %164 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %166 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %165, i32 1
  store %struct.soc_camera_format_xlate* %166, %struct.soc_camera_format_xlate** %7, align 8
  %167 = load %struct.device*, %struct.device** %8, align 8
  %168 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %169 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %138, %133
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %178, %33, %22
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @sh_mobile_ceu_try_bus_param(%struct.soc_camera_device*) #1

declare dso_local %struct.sh_mobile_ceu_cam* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
