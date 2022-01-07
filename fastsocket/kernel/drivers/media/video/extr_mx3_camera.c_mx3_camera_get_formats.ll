; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_get_formats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_get_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.soc_camera_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.soc_camera_format_xlate = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.soc_camera_host = type { i32 }

@mx3_camera_formats = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Providing format %s using %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Providing format %s in pass-through mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32, %struct.soc_camera_format_xlate*)* @mx3_camera_get_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3_camera_get_formats(%struct.soc_camera_device* %0, i32 %1, %struct.soc_camera_format_xlate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_camera_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_camera_format_xlate*, align 8
  %8 = alloca %struct.soc_camera_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.soc_camera_format_xlate* %2, %struct.soc_camera_format_xlate** %7, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %15)
  store %struct.soc_camera_host* %16, %struct.soc_camera_host** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.soc_camera_host*, %struct.soc_camera_host** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @buswidth_supported(%struct.soc_camera_host* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %172

30:                                               ; preds = %3
  %31 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @mx3_camera_try_bus_param(%struct.soc_camera_device* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %172

37:                                               ; preds = %30
  %38 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %39 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %128 [
    i32 129, label %46
    i32 128, label %87
  ]

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %50 = icmp ne %struct.soc_camera_format_xlate* %49, null
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mx3_camera_formats, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %55 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %54, i32 0, i32 2
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %57 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %63 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %62, i32 0, i32 1
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %66 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %68 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %67, i32 1
  store %struct.soc_camera_format_xlate* %68, %struct.soc_camera_format_xlate** %7, align 8
  %69 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %70 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mx3_camera_formats, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %78 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %84)
  br label %86

86:                                               ; preds = %51, %46
  br label %129

87:                                               ; preds = %37
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %91 = icmp ne %struct.soc_camera_format_xlate* %90, null
  br i1 %91, label %92, label %127

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mx3_camera_formats, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 1
  %95 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %96 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %95, i32 0, i32 2
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %96, align 8
  %97 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %98 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %104 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %103, i32 0, i32 1
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %107 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %109 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %108, i32 1
  store %struct.soc_camera_format_xlate* %109, %struct.soc_camera_format_xlate** %7, align 8
  %110 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %111 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mx3_camera_formats, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %119 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %125)
  br label %127

127:                                              ; preds = %92, %87
  br label %128

128:                                              ; preds = %37, %127
  br label %129

129:                                              ; preds = %128, %86
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  %132 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %133 = icmp ne %struct.soc_camera_format_xlate* %132, null
  br i1 %133, label %134, label %169

134:                                              ; preds = %129
  %135 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %136 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %142 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %141, i32 0, i32 2
  store %struct.TYPE_4__* %140, %struct.TYPE_4__** %142, align 8
  %143 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %144 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %150 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %149, i32 0, i32 1
  store %struct.TYPE_4__* %148, %struct.TYPE_4__** %150, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %153 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %155 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %154, i32 1
  store %struct.soc_camera_format_xlate* %155, %struct.soc_camera_format_xlate** %7, align 8
  %156 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %157 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %161 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %159, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %134, %129
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %36, %29
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @buswidth_supported(%struct.soc_camera_host*, i32) #1

declare dso_local i32 @mx3_camera_try_bus_param(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
