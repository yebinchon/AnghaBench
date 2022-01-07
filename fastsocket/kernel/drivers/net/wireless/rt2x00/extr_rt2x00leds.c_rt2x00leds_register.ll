; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00leds.c_rt2x00leds_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00leds.c_rt2x00leds_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i64*, i64*)* }
%struct.TYPE_5__ = type { i32 }

@LED_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s-%s::radio\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s-%s::assoc\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s-%s::quality\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00leds_register(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca [36 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @wiphy_name(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LED_INITIALIZED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 0
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @snprintf(i8* %22, i32 36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 0
  %34 = call i32 @rt2x00leds_register_led(%struct.rt2x00_dev* %30, %struct.TYPE_8__* %32, i8* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %109

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LED_INITIALIZED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %39
  %48 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 0
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @snprintf(i8* %48, i32 36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %57, i32 0, i32 3
  %59 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 0
  %60 = call i32 @rt2x00leds_register_led(%struct.rt2x00_dev* %56, %struct.TYPE_8__* %58, i8* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %109

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @LED_INITIALIZED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %65
  %74 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 0
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @snprintf(i8* %74, i32 36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 0
  %86 = call i32 @rt2x00leds_register_led(%struct.rt2x00_dev* %82, %struct.TYPE_8__* %84, i8* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  br label %109

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %65
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_7__*, i64*, i64*)*, i32 (%struct.TYPE_7__*, i64*, i64*)** %95, align 8
  %97 = icmp ne i32 (%struct.TYPE_7__*, i64*, i64*)* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  store i64 70, i64* %5, align 8
  store i64 30, i64* %6, align 8
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_7__*, i64*, i64*)*, i32 (%struct.TYPE_7__*, i64*, i64*)** %102, align 8
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = call i32 %103(%struct.TYPE_7__* %106, i64* %5, i64* %6)
  br label %108

108:                                              ; preds = %98, %91
  br label %112

109:                                              ; preds = %89, %63, %37
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %111 = call i32 @rt2x00leds_unregister(%struct.rt2x00_dev* %110)
  br label %112

112:                                              ; preds = %109, %108
  ret void
}

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rt2x00leds_register_led(%struct.rt2x00_dev*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @rt2x00leds_unregister(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
