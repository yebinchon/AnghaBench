; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_adjust_picture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_adjust_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.qcm = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"can't turn camera off. abandoning pic adjustment\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"can't set gains. abandoning pic adjustment\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"can't set exposure. abandoning pic adjustment\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"can't set shutter. abandoning pic adjustment\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"can't reenable camera. pic adjustment failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @qcm_adjust_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcm_adjust_picture(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcm*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %5 = load %struct.uvd*, %struct.uvd** %2, align 8
  %6 = getelementptr inbounds %struct.uvd, %struct.uvd* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.qcm*
  store %struct.qcm* %8, %struct.qcm** %4, align 8
  %9 = load %struct.uvd*, %struct.uvd** %2, align 8
  %10 = call i32 @qcm_camera_off(%struct.uvd* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %136

15:                                               ; preds = %1
  %16 = load %struct.qcm*, %struct.qcm** %4, align 8
  %17 = getelementptr inbounds %struct.qcm, %struct.qcm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = getelementptr inbounds %struct.uvd, %struct.uvd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = load %struct.qcm*, %struct.qcm** %4, align 8
  %26 = getelementptr inbounds %struct.qcm, %struct.qcm* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.uvd*, %struct.uvd** %2, align 8
  %29 = getelementptr inbounds %struct.uvd, %struct.uvd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load %struct.qcm*, %struct.qcm** %4, align 8
  %35 = getelementptr inbounds %struct.qcm, %struct.qcm* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.uvd*, %struct.uvd** %2, align 8
  %38 = getelementptr inbounds %struct.uvd, %struct.uvd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %33, %24, %15
  %43 = load %struct.uvd*, %struct.uvd** %2, align 8
  %44 = getelementptr inbounds %struct.uvd, %struct.uvd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.qcm*, %struct.qcm** %4, align 8
  %48 = getelementptr inbounds %struct.qcm, %struct.qcm* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.uvd*, %struct.uvd** %2, align 8
  %50 = getelementptr inbounds %struct.uvd, %struct.uvd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.qcm*, %struct.qcm** %4, align 8
  %54 = getelementptr inbounds %struct.qcm, %struct.qcm* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.uvd*, %struct.uvd** %2, align 8
  %56 = getelementptr inbounds %struct.uvd, %struct.uvd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.qcm*, %struct.qcm** %4, align 8
  %60 = getelementptr inbounds %struct.qcm, %struct.qcm* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.uvd*, %struct.uvd** %2, align 8
  %62 = load %struct.qcm*, %struct.qcm** %4, align 8
  %63 = getelementptr inbounds %struct.qcm, %struct.qcm* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.qcm*, %struct.qcm** %4, align 8
  %66 = getelementptr inbounds %struct.qcm, %struct.qcm* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.qcm*, %struct.qcm** %4, align 8
  %69 = getelementptr inbounds %struct.qcm, %struct.qcm* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @qcm_sensor_set_gains(%struct.uvd* %61, i64 %64, i64 %67, i64 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %42
  %75 = call i32 @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %136

76:                                               ; preds = %42
  br label %77

77:                                               ; preds = %76, %33
  %78 = load %struct.qcm*, %struct.qcm** %4, align 8
  %79 = getelementptr inbounds %struct.qcm, %struct.qcm* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.uvd*, %struct.uvd** %2, align 8
  %82 = getelementptr inbounds %struct.uvd, %struct.uvd* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %80, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %77
  %87 = load %struct.uvd*, %struct.uvd** %2, align 8
  %88 = getelementptr inbounds %struct.uvd, %struct.uvd* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.qcm*, %struct.qcm** %4, align 8
  %92 = getelementptr inbounds %struct.qcm, %struct.qcm* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.uvd*, %struct.uvd** %2, align 8
  %94 = load %struct.qcm*, %struct.qcm** %4, align 8
  %95 = getelementptr inbounds %struct.qcm, %struct.qcm* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @qcm_sensor_set_exposure(%struct.uvd* %93, i64 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %86
  %101 = call i32 @err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %136

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %77
  %104 = load %struct.qcm*, %struct.qcm** %4, align 8
  %105 = getelementptr inbounds %struct.qcm, %struct.qcm* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.uvd*, %struct.uvd** %2, align 8
  %108 = getelementptr inbounds %struct.uvd, %struct.uvd* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %106, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %103
  %113 = load %struct.uvd*, %struct.uvd** %2, align 8
  %114 = getelementptr inbounds %struct.uvd, %struct.uvd* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.qcm*, %struct.qcm** %4, align 8
  %118 = getelementptr inbounds %struct.qcm, %struct.qcm* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  %119 = load %struct.uvd*, %struct.uvd** %2, align 8
  %120 = load %struct.qcm*, %struct.qcm** %4, align 8
  %121 = getelementptr inbounds %struct.qcm, %struct.qcm* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @qcm_sensor_set_shutter(%struct.uvd* %119, i64 %122)
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %136

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128, %103
  %130 = load %struct.uvd*, %struct.uvd** %2, align 8
  %131 = call i32 @qcm_camera_on(%struct.uvd* %130)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %13, %74, %100, %126, %134, %129
  ret void
}

declare dso_local i32 @qcm_camera_off(%struct.uvd*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @qcm_sensor_set_gains(%struct.uvd*, i64, i64, i64) #1

declare dso_local i32 @qcm_sensor_set_exposure(%struct.uvd*, i64) #1

declare dso_local i32 @qcm_sensor_set_shutter(%struct.uvd*, i64) #1

declare dso_local i32 @qcm_camera_on(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
