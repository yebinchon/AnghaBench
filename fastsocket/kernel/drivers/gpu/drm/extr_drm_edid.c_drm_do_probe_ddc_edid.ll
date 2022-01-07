; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_do_probe_ddc_edid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_do_probe_ddc_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@DDC_SEGMENT_ADDR = common dso_local global i32 0, align 4
@DDC_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"drm: skipping non-existent adapter %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8*, i32, i32)* @drm_do_probe_ddc_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_do_probe_ddc_edid(%struct.i2c_adapter* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x %struct.i2c_msg], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EDID_LENGTH, align 4
  %17 = mul nsw i32 %15, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %9, align 1
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %10, align 1
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 3, i32 2
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %11, align 1
  store i32 5, i32* %13, align 4
  br label %28

28:                                               ; preds = %77, %4
  %29 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %14, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  store i8* %10, i8** %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 3
  %34 = load i32, i32* @DDC_SEGMENT_ADDR, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 1
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  store i8* %9, i8** %37, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 3
  %40 = load i32, i32* @DDC_ADDR, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 1
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %44, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 2
  %47 = load i32, i32* @I2C_M_RD, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 3
  %49 = load i32, i32* @DDC_ADDR, align 4
  store i32 %49, i32* %48, align 4
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 3, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %14, i64 0, i64 %54
  %56 = load i8, i8* %11, align 1
  %57 = call i32 @i2c_transfer(%struct.i2c_adapter* %50, %struct.i2c_msg* %55, i8 zeroext %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %28
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %79

67:                                               ; preds = %28
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi i1 [ false, %68 ], [ %76, %73 ]
  br i1 %78, label %28, label %79

79:                                               ; preds = %77, %62
  %80 = load i32, i32* %12, align 4
  %81 = load i8, i8* %11, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 -1
  ret i32 %85
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i8 zeroext) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
