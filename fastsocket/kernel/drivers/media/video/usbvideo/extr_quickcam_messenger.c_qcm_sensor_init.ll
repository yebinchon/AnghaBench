; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_sensor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_sensor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.uvd = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.qcm = type { i64 }

@regval_table = common dso_local global %struct.TYPE_6__* null, align 8
@ISOC_PACKET_SIZE = common dso_local global i32 0, align 4
@STV_ISO_ENABLE = common dso_local global i32 0, align 4
@camera_sizes = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @qcm_sensor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_sensor_init(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca %struct.qcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %6 = load %struct.uvd*, %struct.uvd** %2, align 8
  %7 = getelementptr inbounds %struct.uvd, %struct.uvd* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.qcm*
  store %struct.qcm* %9, %struct.qcm** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @regval_table, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.uvd*, %struct.uvd** %2, align 8
  %18 = getelementptr inbounds %struct.uvd, %struct.uvd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @regval_table, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @regval_table, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @qcm_stv_setb(i32 %19, i32 %25, i32 %31)
  %33 = call i32 @CHECK_RET(i32 %16, i32 %32)
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.uvd*, %struct.uvd** %2, align 8
  %40 = getelementptr inbounds %struct.uvd, %struct.uvd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ISOC_PACKET_SIZE, align 4
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = call i32 @qcm_stv_setw(i32 %41, i32 5569, i32 %43)
  %45 = call i32 @CHECK_RET(i32 %38, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.uvd*, %struct.uvd** %2, align 8
  %48 = getelementptr inbounds %struct.uvd, %struct.uvd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qcm_stv_setb(i32 %49, i32 5571, i32 8)
  %51 = call i32 @CHECK_RET(i32 %46, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.uvd*, %struct.uvd** %2, align 8
  %54 = getelementptr inbounds %struct.uvd, %struct.uvd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @qcm_stv_setb(i32 %55, i32 5183, i32 1)
  %57 = call i32 @CHECK_RET(i32 %52, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.uvd*, %struct.uvd** %2, align 8
  %60 = getelementptr inbounds %struct.uvd, %struct.uvd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @STV_ISO_ENABLE, align 4
  %63 = call i32 @qcm_stv_setb(i32 %61, i32 %62, i32 0)
  %64 = call i32 @CHECK_RET(i32 %58, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.uvd*, %struct.uvd** %2, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @camera_sizes, align 8
  %68 = load %struct.qcm*, %struct.qcm** %3, align 8
  %69 = getelementptr inbounds %struct.qcm, %struct.qcm* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qcm_sensor_setsize(%struct.uvd* %66, i32 %73)
  %75 = call i32 @CHECK_RET(i32 %65, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.uvd*, %struct.uvd** %2, align 8
  %78 = load %struct.uvd*, %struct.uvd** %2, align 8
  %79 = getelementptr inbounds %struct.uvd, %struct.uvd* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.uvd*, %struct.uvd** %2, align 8
  %83 = getelementptr inbounds %struct.uvd, %struct.uvd* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uvd*, %struct.uvd** %2, align 8
  %87 = getelementptr inbounds %struct.uvd, %struct.uvd* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.uvd*, %struct.uvd** %2, align 8
  %91 = getelementptr inbounds %struct.uvd, %struct.uvd* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @qcm_sensor_setlevels(%struct.uvd* %77, i32 %81, i32 %85, i32 %89, i32 %93)
  %95 = call i32 @CHECK_RET(i32 %76, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.uvd*, %struct.uvd** %2, align 8
  %98 = load %struct.uvd*, %struct.uvd** %2, align 8
  %99 = getelementptr inbounds %struct.uvd, %struct.uvd* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @qcm_sensor_set_shutter(%struct.uvd* %97, i32 %101)
  %103 = call i32 @CHECK_RET(i32 %96, i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.uvd*, %struct.uvd** %2, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @camera_sizes, align 8
  %107 = load %struct.qcm*, %struct.qcm** %3, align 8
  %108 = getelementptr inbounds %struct.qcm, %struct.qcm* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @qcm_sensor_setsize(%struct.uvd* %105, i32 %112)
  %114 = call i32 @CHECK_RET(i32 %104, i32 %113)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @CHECK_RET(i32, i32) #1

declare dso_local i32 @qcm_stv_setb(i32, i32, i32) #1

declare dso_local i32 @qcm_stv_setw(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qcm_sensor_setsize(%struct.uvd*, i32) #1

declare dso_local i32 @qcm_sensor_setlevels(%struct.uvd*, i32, i32, i32, i32) #1

declare dso_local i32 @qcm_sensor_set_shutter(%struct.uvd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
