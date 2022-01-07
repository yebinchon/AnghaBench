; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x30.c_ov6x30_get_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x30.c_ov6x30_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i8 }
%struct.ovcamchip = type { %struct.ov6x30* }
%struct.ov6x30 = type { i8, i8, i8, i8, i8 }

@REG_CNT = common dso_local global i32 0, align 4
@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_BLUE = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov6x30_get_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6x30_get_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov6x30*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ovcamchip_control* %1, %struct.ovcamchip_control** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ovcamchip* %11, %struct.ovcamchip** %6, align 8
  %12 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %13 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %12, i32 0, i32 0
  %14 = load %struct.ov6x30*, %struct.ov6x30** %13, align 8
  store %struct.ov6x30* %14, %struct.ov6x30** %7, align 8
  store i32 0, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %15 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %16 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %96 [
    i32 132, label %18
    i32 133, label %29
    i32 128, label %39
    i32 130, label %49
    i32 131, label %59
    i32 134, label %66
    i32 137, label %72
    i32 136, label %78
    i32 135, label %84
    i32 129, label %90
  ]

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @REG_CNT, align 4
  %21 = call i32 @ov_read(%struct.i2c_client* %19, i32 %20, i8* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 15
  %25 = shl i32 %24, 12
  %26 = trunc i32 %25 to i8
  %27 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %28 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %27, i32 0, i32 1
  store i8 %26, i8* %28, align 4
  br label %105

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @REG_BRT, align 4
  %32 = call i32 @ov_read(%struct.i2c_client* %30, i32 %31, i8* %9)
  store i32 %32, i32* %8, align 4
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 8
  %36 = trunc i32 %35 to i8
  %37 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %38 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %37, i32 0, i32 1
  store i8 %36, i8* %38, align 4
  br label %105

39:                                               ; preds = %2
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @REG_SAT, align 4
  %42 = call i32 @ov_read(%struct.i2c_client* %40, i32 %41, i8* %9)
  store i32 %42, i32* %8, align 4
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %48 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %47, i32 0, i32 1
  store i8 %46, i8* %48, align 4
  br label %105

49:                                               ; preds = %2
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @REG_BLUE, align 4
  %52 = call i32 @ov_read(%struct.i2c_client* %50, i32 %51, i8* %9)
  store i32 %52, i32* %8, align 4
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %58 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %57, i32 0, i32 1
  store i8 %56, i8* %58, align 4
  br label %105

59:                                               ; preds = %2
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @REG_EXP, align 4
  %62 = call i32 @ov_read(%struct.i2c_client* %60, i32 %61, i8* %9)
  store i32 %62, i32* %8, align 4
  %63 = load i8, i8* %9, align 1
  %64 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %65 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %64, i32 0, i32 1
  store i8 %63, i8* %65, align 4
  br label %105

66:                                               ; preds = %2
  %67 = load %struct.ov6x30*, %struct.ov6x30** %7, align 8
  %68 = getelementptr inbounds %struct.ov6x30, %struct.ov6x30* %67, i32 0, i32 0
  %69 = load i8, i8* %68, align 1
  %70 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %71 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %70, i32 0, i32 1
  store i8 %69, i8* %71, align 4
  br label %105

72:                                               ; preds = %2
  %73 = load %struct.ov6x30*, %struct.ov6x30** %7, align 8
  %74 = getelementptr inbounds %struct.ov6x30, %struct.ov6x30* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 1
  %76 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %77 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %76, i32 0, i32 1
  store i8 %75, i8* %77, align 4
  br label %105

78:                                               ; preds = %2
  %79 = load %struct.ov6x30*, %struct.ov6x30** %7, align 8
  %80 = getelementptr inbounds %struct.ov6x30, %struct.ov6x30* %79, i32 0, i32 2
  %81 = load i8, i8* %80, align 1
  %82 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %83 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %82, i32 0, i32 1
  store i8 %81, i8* %83, align 4
  br label %105

84:                                               ; preds = %2
  %85 = load %struct.ov6x30*, %struct.ov6x30** %7, align 8
  %86 = getelementptr inbounds %struct.ov6x30, %struct.ov6x30* %85, i32 0, i32 3
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %89 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %88, i32 0, i32 1
  store i8 %87, i8* %89, align 4
  br label %105

90:                                               ; preds = %2
  %91 = load %struct.ov6x30*, %struct.ov6x30** %7, align 8
  %92 = getelementptr inbounds %struct.ov6x30, %struct.ov6x30* %91, i32 0, i32 4
  %93 = load i8, i8* %92, align 1
  %94 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %95 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %94, i32 0, i32 1
  store i8 %93, i8* %95, align 4
  br label %105

96:                                               ; preds = %2
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %100 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EPERM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %118

105:                                              ; preds = %90, %84, %78, %72, %66, %59, %49, %39, %29, %18
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %109 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %112 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %111, i32 0, i32 1
  %113 = load i8, i8* %112, align 4
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %105, %96
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ov_read(%struct.i2c_client*, i32, i8*) #1

declare dso_local i32 @DDEBUG(i32, i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
