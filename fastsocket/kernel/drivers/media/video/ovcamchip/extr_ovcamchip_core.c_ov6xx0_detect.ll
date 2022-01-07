; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ov6xx0_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ov6xx0_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip = type { i64, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GENERIC_REG_COM_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error detecting ov6xx0 type\00", align 1
@CC_OV6630 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Camera chip is an OV6630\00", align 1
@CC_OV6620 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Camera chip is an OV6620\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Camera chip is an OV6630AE\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Camera chip is an OV6630AF\00", align 1
@ov6x20_ops = common dso_local global i32 0, align 4
@ov6x30_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov6xx0_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6xx0_detect(%struct.i2c_client* %0) #0 {
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
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @PERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** @CC_OV6630, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %26 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = call i32 @PINFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %63

28:                                               ; preds = %17
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @CC_OV6620, align 8
  %35 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %36 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = call i32 @PINFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %62

38:                                               ; preds = %28
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** @CC_OV6630, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %47 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = call i32 @PINFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %61

49:                                               ; preds = %38
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i8*, i8** @CC_OV6630, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %58 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = call i32 @PINFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54, %49
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %22
  %64 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %65 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CC_OV6620, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %71 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %70, i32 0, i32 1
  store i32* @ov6x20_ops, i32** %71, align 8
  br label %75

72:                                               ; preds = %63
  %73 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %74 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %73, i32 0, i32 1
  store i32* @ov6x30_ops, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @ov_read(%struct.i2c_client*, i32, i8*) #1

declare dso_local i32 @PERROR(i8*) #1

declare dso_local i32 @PINFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
