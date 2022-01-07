; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov76be.c_ov76be_get_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov76be.c_ov76be_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i8 }
%struct.ovcamchip = type { %struct.ov76be* }
%struct.ov76be = type { i8, i8, i8, i8 }

@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov76be_get_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov76be_get_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov76be*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ovcamchip_control* %1, %struct.ovcamchip_control** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ovcamchip* %11, %struct.ovcamchip** %6, align 8
  %12 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %13 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %12, i32 0, i32 0
  %14 = load %struct.ov76be*, %struct.ov76be** %13, align 8
  store %struct.ov76be* %14, %struct.ov76be** %7, align 8
  store i32 0, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %15 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %16 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %69 [
    i32 131, label %18
    i32 128, label %28
    i32 130, label %38
    i32 132, label %45
    i32 134, label %51
    i32 133, label %57
    i32 129, label %63
  ]

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @REG_BRT, align 4
  %21 = call i32 @ov_read(%struct.i2c_client* %19, i32 %20, i8* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %27 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %26, i32 0, i32 1
  store i8 %25, i8* %27, align 4
  br label %78

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @REG_SAT, align 4
  %31 = call i32 @ov_read(%struct.i2c_client* %29, i32 %30, i8* %9)
  store i32 %31, i32* %8, align 4
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 8
  %35 = trunc i32 %34 to i8
  %36 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %37 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %36, i32 0, i32 1
  store i8 %35, i8* %37, align 4
  br label %78

38:                                               ; preds = %2
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @REG_EXP, align 4
  %41 = call i32 @ov_read(%struct.i2c_client* %39, i32 %40, i8* %9)
  store i32 %41, i32* %8, align 4
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %44 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %43, i32 0, i32 1
  store i8 %42, i8* %44, align 4
  br label %78

45:                                               ; preds = %2
  %46 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %47 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %50 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %49, i32 0, i32 1
  store i8 %48, i8* %50, align 4
  br label %78

51:                                               ; preds = %2
  %52 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %53 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %52, i32 0, i32 1
  %54 = load i8, i8* %53, align 1
  %55 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %56 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %55, i32 0, i32 1
  store i8 %54, i8* %56, align 4
  br label %78

57:                                               ; preds = %2
  %58 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %59 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %58, i32 0, i32 2
  %60 = load i8, i8* %59, align 1
  %61 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %62 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %61, i32 0, i32 1
  store i8 %60, i8* %62, align 4
  br label %78

63:                                               ; preds = %2
  %64 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %65 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %64, i32 0, i32 3
  %66 = load i8, i8* %65, align 1
  %67 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %68 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %67, i32 0, i32 1
  store i8 %66, i8* %68, align 4
  br label %78

69:                                               ; preds = %2
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %73 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %91

78:                                               ; preds = %63, %57, %51, %45, %38, %28, %18
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %82 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %85 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %84, i32 0, i32 1
  %86 = load i8, i8* %85, align 4
  %87 = zext i8 %86 to i32
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %78, %69
  %92 = load i32, i32* %3, align 4
  ret i32 %92
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
