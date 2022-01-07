; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-fe-tuner.c_flexcop_frontend_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-fe-tuner.c_flexcop_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (%struct.flexcop_device*, i32*)*, i32 }
%struct.flexcop_device = type { i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@flexcop_frontends = common dso_local global %struct.TYPE_11__* null, align 8
@FC_UNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"no frontend driver found for this B2C2/FlexCop adapter\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"found '%s' .\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"frontend registration failed!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FC_STATE_FE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_frontend_init(%struct.flexcop_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @flexcop_frontends, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %5
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @flexcop_frontends, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64 (%struct.flexcop_device*, i32*)*, i64 (%struct.flexcop_device*, i32*)** %15, align 8
  %17 = icmp ne i64 (%struct.flexcop_device*, i32*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %56

19:                                               ; preds = %10
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @flexcop_frontends, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %27 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @flexcop_frontends, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64 (%struct.flexcop_device*, i32*)*, i64 (%struct.flexcop_device*, i32*)** %32, align 8
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %35 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %36 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %35, i32 0, i32 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i64 %33(%struct.flexcop_device* %34, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  br label %66

43:                                               ; preds = %19
  %44 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %45 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %50 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = call i32 @dvb_frontend_detach(%struct.TYPE_12__* %51)
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %54 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %53, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %5

59:                                               ; preds = %5
  %60 = load i32, i32* @FC_UNK, align 4
  %61 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %62 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = call i32 @err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %98

66:                                               ; preds = %42
  %67 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %68 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %76 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %75, i32 0, i32 2
  %77 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %78 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i64 @dvb_register_frontend(i32* %76, %struct.TYPE_12__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %66
  %83 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %85 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i32 @dvb_frontend_detach(%struct.TYPE_12__* %86)
  %88 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %89 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %88, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %89, align 8
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %98

92:                                               ; preds = %66
  %93 = load i32, i32* @FC_STATE_FE_INIT, align 4
  %94 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %95 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %82, %59
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_12__*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i64 @dvb_register_frontend(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
