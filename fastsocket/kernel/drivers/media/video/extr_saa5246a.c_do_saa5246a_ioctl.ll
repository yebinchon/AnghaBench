; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_do_saa5246a_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_do_saa5246a_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa5246a_device = type { i32* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@MAJOR_VERSION = common dso_local global i32 0, align 4
@MINOR_VERSION = common dso_local global i32 0, align 4
@NUM_DAUS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @do_saa5246a_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_saa5246a_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.saa5246a_device*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.saa5246a_device* @video_drvdata(%struct.file* %18)
  store %struct.saa5246a_device* %19, %struct.saa5246a_device** %8, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %126 [
    i32 136, label %21
    i32 137, label %33
    i32 138, label %59
    i32 133, label %81
    i32 134, label %87
    i32 135, label %109
    i32 128, label %115
    i32 132, label %123
    i32 130, label %123
    i32 131, label %123
    i32 139, label %124
    i32 129, label %125
  ]

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %9, align 8
  %24 = load i32, i32* @MAJOR_VERSION, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MINOR_VERSION, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @NUM_DAUS, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i64 0, i64* %4, align 8
  br label %129

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NUM_DAUS, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %33
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %4, align 8
  br label %129

49:                                               ; preds = %40
  %50 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %51 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memset(i32 %57, i8 signext 32, i32 4)
  store i64 0, i64* %4, align 8
  br label %129

59:                                               ; preds = %3
  %60 = load i8*, i8** %7, align 8
  %61 = bitcast i8* %60 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %11, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NUM_DAUS, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %59
  %73 = load i64, i64* @EINVAL, align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %4, align 8
  br label %129

75:                                               ; preds = %66
  %76 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @saa5246a_clear_found_bit(%struct.saa5246a_device* %76, i64 %79)
  store i64 %80, i64* %4, align 8
  br label %129

81:                                               ; preds = %3
  %82 = load i8*, i8** %7, align 8
  %83 = bitcast i8* %82 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %12, align 8
  %84 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %86 = call i64 @saa5246a_request_page(%struct.saa5246a_device* %84, %struct.TYPE_5__* %85)
  store i64 %86, i64* %4, align 8
  br label %129

87:                                               ; preds = %3
  %88 = load i8*, i8** %7, align 8
  %89 = bitcast i8* %88 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %13, align 8
  %90 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @saa5246a_get_status(%struct.saa5246a_device* %90, i32* %14, i64 %93)
  store i32 %94, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %4, align 8
  br label %129

99:                                               ; preds = %87
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @copy_to_user(i32 %102, i32* %14, i32 4)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i64, i64* @EFAULT, align 8
  %107 = sub nsw i64 0, %106
  store i64 %107, i64* %4, align 8
  br label %129

108:                                              ; preds = %99
  store i64 0, i64* %4, align 8
  br label %129

109:                                              ; preds = %3
  %110 = load i8*, i8** %7, align 8
  %111 = bitcast i8* %110 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %16, align 8
  %112 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %114 = call i64 @saa5246a_get_page(%struct.saa5246a_device* %112, %struct.TYPE_5__* %113)
  store i64 %114, i64* %4, align 8
  br label %129

115:                                              ; preds = %3
  %116 = load i8*, i8** %7, align 8
  %117 = bitcast i8* %116 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %17, align 8
  %118 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @saa5246a_stop_dau(%struct.saa5246a_device* %118, i64 %121)
  store i64 %122, i64* %4, align 8
  br label %129

123:                                              ; preds = %3, %3, %3
  store i64 0, i64* %4, align 8
  br label %129

124:                                              ; preds = %3
  store i64 0, i64* %4, align 8
  br label %129

125:                                              ; preds = %3
  store i64 0, i64* %4, align 8
  br label %129

126:                                              ; preds = %3
  %127 = load i64, i64* @EINVAL, align 8
  %128 = sub nsw i64 0, %127
  store i64 %128, i64* %4, align 8
  br label %129

129:                                              ; preds = %126, %125, %124, %123, %115, %109, %108, %105, %96, %81, %75, %72, %49, %46, %21
  %130 = load i64, i64* %4, align 8
  ret i64 %130
}

declare dso_local %struct.saa5246a_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i64 @saa5246a_clear_found_bit(%struct.saa5246a_device*, i64) #1

declare dso_local i64 @saa5246a_request_page(%struct.saa5246a_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @saa5246a_get_status(%struct.saa5246a_device*, i32*, i64) #1

declare dso_local i32 @copy_to_user(i32, i32*, i32) #1

declare dso_local i64 @saa5246a_get_page(%struct.saa5246a_device*, %struct.TYPE_5__*) #1

declare dso_local i64 @saa5246a_stop_dau(%struct.saa5246a_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
