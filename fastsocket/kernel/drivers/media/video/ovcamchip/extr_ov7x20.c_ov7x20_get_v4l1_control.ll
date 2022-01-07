; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x20.c_ov7x20_get_v4l1_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x20.c_ov7x20_get_v4l1_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i32 }
%struct.ovcamchip = type { %struct.ov7x20* }
%struct.ov7x20 = type { i8, i8, i8, i8, i8 }

@ctab = common dso_local global i32 0, align 4
@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov7x20_get_v4l1_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7x20_get_v4l1_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov7x20*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ovcamchip_control* %1, %struct.ovcamchip_control** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ovcamchip* %11, %struct.ovcamchip** %6, align 8
  %12 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %13 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %12, i32 0, i32 0
  %14 = load %struct.ov7x20*, %struct.ov7x20** %13, align 8
  store %struct.ov7x20* %14, %struct.ov7x20** %7, align 8
  store i32 0, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %15 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %16 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %88 [
    i32 131, label %18
    i32 132, label %27
    i32 128, label %36
    i32 130, label %45
    i32 133, label %53
    i32 136, label %60
    i32 135, label %67
    i32 134, label %74
    i32 129, label %81
  ]

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @ov_read(%struct.i2c_client* %19, i32 100, i8* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @ctab, align 4
  %22 = load i8, i8* %9, align 1
  %23 = call i32 @ov7x20_lut_find(i32 %21, i32 16, i8 zeroext %22)
  %24 = shl i32 %23, 12
  %25 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %26 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %97

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @REG_BRT, align 4
  %30 = call i32 @ov_read(%struct.i2c_client* %28, i32 %29, i8* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i8, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %35 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %97

36:                                               ; preds = %2
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @REG_SAT, align 4
  %39 = call i32 @ov_read(%struct.i2c_client* %37, i32 %38, i8* %9)
  store i32 %39, i32* %8, align 4
  %40 = load i8, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %44 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %97

45:                                               ; preds = %2
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* @REG_EXP, align 4
  %48 = call i32 @ov_read(%struct.i2c_client* %46, i32 %47, i8* %9)
  store i32 %48, i32* %8, align 4
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %52 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %97

53:                                               ; preds = %2
  %54 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %55 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %59 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %97

60:                                               ; preds = %2
  %61 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %62 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %66 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %97

67:                                               ; preds = %2
  %68 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %69 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %68, i32 0, i32 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %73 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %97

74:                                               ; preds = %2
  %75 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %76 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %75, i32 0, i32 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %80 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %97

81:                                               ; preds = %2
  %82 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %83 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %82, i32 0, i32 4
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %87 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %97

88:                                               ; preds = %2
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %92 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %109

97:                                               ; preds = %81, %74, %67, %60, %53, %45, %36, %27, %18
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %101 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %104 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %97, %88
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ov_read(%struct.i2c_client*, i32, i8*) #1

declare dso_local i32 @ov7x20_lut_find(i32, i32, i8 zeroext) #1

declare dso_local i32 @DDEBUG(i32, i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
