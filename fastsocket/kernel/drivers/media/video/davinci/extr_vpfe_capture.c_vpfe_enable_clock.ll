; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_enable_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_enable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { %struct.TYPE_2__*, %struct.vpfe_config* }
%struct.TYPE_2__ = type { i32 }
%struct.vpfe_config = type { i32*, i32* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vpss_master\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No clock defined forvpss_master\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"vpfe vpss master clock not enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"vpfe vpss master clock enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"vpss_slave\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"No clock defined for vpss slave\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"vpfe vpss slave clock not enabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"vpfe vpss slave clock enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*)* @vpfe_enable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_enable_clock(%struct.vpfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.vpfe_config*, align 8
  %5 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  %6 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %7 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %6, i32 0, i32 1
  %8 = load %struct.vpfe_config*, %struct.vpfe_config** %7, align 8
  store %struct.vpfe_config* %8, %struct.vpfe_config** %4, align 8
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i8* @clk_get(%struct.TYPE_2__* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %17 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %19 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* null, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l2_err(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %109

30:                                               ; preds = %1
  %31 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %32 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @clk_enable(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %38 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @v4l2_err(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %88

43:                                               ; preds = %30
  %44 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %45 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @v4l2_info(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %51 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i8* @clk_get(%struct.TYPE_2__* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %56 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %58 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* null, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %63 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @v4l2_err(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %88

68:                                               ; preds = %43
  %69 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %70 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @clk_enable(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %76 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @v4l2_err(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %88

81:                                               ; preds = %68
  %82 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %83 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @v4l2_info(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %109

88:                                               ; preds = %74, %61, %36
  %89 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %90 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %95 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @clk_put(i32* %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %100 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %105 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @clk_put(i32* %106)
  br label %108

108:                                              ; preds = %103, %98
  store i32 -1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %81, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i8* @clk_get(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @v4l2_err(i32, i8*) #1

declare dso_local i64 @clk_enable(i32*) #1

declare dso_local i32 @v4l2_info(i32, i8*) #1

declare dso_local i32 @clk_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
