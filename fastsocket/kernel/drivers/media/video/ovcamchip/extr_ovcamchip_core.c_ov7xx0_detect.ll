; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ov7xx0_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ov7xx0_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip = type { i64, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GENERIC_REG_COM_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error detecting ov7xx0 type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Camera chip is an OV7610\00", align 1
@CC_OV7610 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Camera chip is an OV7620AE\00", align 1
@CC_OV7620 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Camera chip is an OV76BE\00", align 1
@CC_OV76BE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Camera chip is an OV7620\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unknown camera chip version: %d\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@ov76be_ops = common dso_local global i32 0, align 4
@ov7x20_ops = common dso_local global i32 0, align 4
@ov7x10_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov7xx0_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7xx0_detect(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ovcamchip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.ovcamchip* %8, %struct.ovcamchip** %4, align 8
  %9 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load i32, i32* @GENERIC_REG_COM_I, align 4
  %12 = call i32 @ov_read(%struct.i2c_client* %10, i32 %11, i8* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @PERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %99

18:                                               ; preds = %1
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = call i32 @PINFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @CC_OV7610, align 8
  %26 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %27 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %76

28:                                               ; preds = %18
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = call i32 @ov_read(%struct.i2c_client* %34, i32 21, i8* %6)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @PERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %99

41:                                               ; preds = %33
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = call i32 @PINFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i64, i64* @CC_OV7620, align 8
  %49 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %50 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %56

51:                                               ; preds = %41
  %52 = call i32 @PINFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i64, i64* @CC_OV76BE, align 8
  %54 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %55 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %46
  br label %75

57:                                               ; preds = %28
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = call i32 @PINFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i64, i64* @CC_OV7620, align 8
  %65 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %66 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %74

67:                                               ; preds = %57
  %68 = load i8, i8* %6, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 3
  %71 = call i32 (i8*, ...) @PERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENOSYS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %99

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %23
  %77 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %78 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CC_OV76BE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %84 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %83, i32 0, i32 1
  store i32* @ov76be_ops, i32** %84, align 8
  br label %98

85:                                               ; preds = %76
  %86 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %87 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CC_OV7620, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %93 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %92, i32 0, i32 1
  store i32* @ov7x20_ops, i32** %93, align 8
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %96 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %95, i32 0, i32 1
  store i32* @ov7x10_ops, i32** %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %82
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %67, %38, %15
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @ov_read(%struct.i2c_client*, i32, i8*) #1

declare dso_local i32 @PERROR(i8*, ...) #1

declare dso_local i32 @PINFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
