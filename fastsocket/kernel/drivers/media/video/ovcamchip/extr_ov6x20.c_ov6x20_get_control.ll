; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x20.c_ov6x20_get_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x20.c_ov6x20_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i8 }
%struct.ovcamchip = type { %struct.ov6x20* }
%struct.ov6x20 = type { i8, i8, i8, i8, i8 }

@REG_CNT = common dso_local global i32 0, align 4
@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_BLUE = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov6x20_get_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6x20_get_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov6x20*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ovcamchip_control* %1, %struct.ovcamchip_control** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ovcamchip* %11, %struct.ovcamchip** %6, align 8
  %12 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %13 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %12, i32 0, i32 0
  %14 = load %struct.ov6x20*, %struct.ov6x20** %13, align 8
  store %struct.ov6x20* %14, %struct.ov6x20** %7, align 8
  store i32 0, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %15 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %16 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %95 [
    i32 132, label %18
    i32 133, label %28
    i32 128, label %38
    i32 130, label %48
    i32 131, label %58
    i32 134, label %65
    i32 137, label %71
    i32 136, label %77
    i32 135, label %83
    i32 129, label %89
  ]

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @REG_CNT, align 4
  %21 = call i32 @ov_read(%struct.i2c_client* %19, i32 %20, i8* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %27 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %26, i32 0, i32 1
  store i8 %25, i8* %27, align 4
  br label %104

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @REG_BRT, align 4
  %31 = call i32 @ov_read(%struct.i2c_client* %29, i32 %30, i8* %9)
  store i32 %31, i32* %8, align 4
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 8
  %35 = trunc i32 %34 to i8
  %36 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %37 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %36, i32 0, i32 1
  store i8 %35, i8* %37, align 4
  br label %104

38:                                               ; preds = %2
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @REG_SAT, align 4
  %41 = call i32 @ov_read(%struct.i2c_client* %39, i32 %40, i8* %9)
  store i32 %41, i32* %8, align 4
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = trunc i32 %44 to i8
  %46 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %47 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %46, i32 0, i32 1
  store i8 %45, i8* %47, align 4
  br label %104

48:                                               ; preds = %2
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @REG_BLUE, align 4
  %51 = call i32 @ov_read(%struct.i2c_client* %49, i32 %50, i8* %9)
  store i32 %51, i32* %8, align 4
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 8
  %55 = trunc i32 %54 to i8
  %56 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %57 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %56, i32 0, i32 1
  store i8 %55, i8* %57, align 4
  br label %104

58:                                               ; preds = %2
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* @REG_EXP, align 4
  %61 = call i32 @ov_read(%struct.i2c_client* %59, i32 %60, i8* %9)
  store i32 %61, i32* %8, align 4
  %62 = load i8, i8* %9, align 1
  %63 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %64 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %63, i32 0, i32 1
  store i8 %62, i8* %64, align 4
  br label %104

65:                                               ; preds = %2
  %66 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %67 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 1
  %69 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %70 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %69, i32 0, i32 1
  store i8 %68, i8* %70, align 4
  br label %104

71:                                               ; preds = %2
  %72 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %73 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %72, i32 0, i32 1
  %74 = load i8, i8* %73, align 1
  %75 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %76 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %75, i32 0, i32 1
  store i8 %74, i8* %76, align 4
  br label %104

77:                                               ; preds = %2
  %78 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %79 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %78, i32 0, i32 2
  %80 = load i8, i8* %79, align 1
  %81 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %82 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %81, i32 0, i32 1
  store i8 %80, i8* %82, align 4
  br label %104

83:                                               ; preds = %2
  %84 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %85 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %84, i32 0, i32 3
  %86 = load i8, i8* %85, align 1
  %87 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %88 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %87, i32 0, i32 1
  store i8 %86, i8* %88, align 4
  br label %104

89:                                               ; preds = %2
  %90 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %91 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %90, i32 0, i32 4
  %92 = load i8, i8* %91, align 1
  %93 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %94 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %93, i32 0, i32 1
  store i8 %92, i8* %94, align 4
  br label %104

95:                                               ; preds = %2
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %99 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EPERM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %117

104:                                              ; preds = %89, %83, %77, %71, %65, %58, %48, %38, %28, %18
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %108 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %111 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %110, i32 0, i32 1
  %112 = load i8, i8* %111, align 4
  %113 = zext i8 %112 to i32
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %104, %95
  %118 = load i32, i32* %3, align 4
  ret i32 %118
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
