; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i16*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHANNEL_CHAN = common dso_local global i16 0, align 2
@CHANNEL = common dso_local global i64 0, align 8
@CHANNEL_TUNE = common dso_local global i16 0, align 2
@jiffies = common dso_local global i64 0, align 8
@tune_timeout = common dso_local global i32 0, align 4
@STATUSRSSI = common dso_local global i64 0, align 8
@STATUSRSSI_STC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"tune does not complete\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tune timed out after %u ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*, i16)* @si470x_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_set_chan(%struct.si470x_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %7, align 4
  %8 = load i16, i16* @CHANNEL_CHAN, align 2
  %9 = zext i16 %8 to i32
  %10 = xor i32 %9, -1
  %11 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %12 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %11, i32 0, i32 0
  %13 = load i16*, i16** %12, align 8
  %14 = load i64, i64* @CHANNEL, align 8
  %15 = getelementptr inbounds i16, i16* %13, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, %10
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %15, align 2
  %20 = load i16, i16* @CHANNEL_TUNE, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %21, %23
  %25 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %26 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %25, i32 0, i32 0
  %27 = load i16*, i16** %26, align 8
  %28 = load i64, i64* @CHANNEL, align 8
  %29 = getelementptr inbounds i16, i16* %27, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %31, %24
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %29, align 2
  %34 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %35 = load i64, i64* @CHANNEL, align 8
  %36 = call i32 @si470x_set_register(%struct.si470x_device* %34, i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %117

40:                                               ; preds = %2
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i32, i32* @tune_timeout, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add i64 %41, %43
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %71, %40
  %46 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %47 = load i64, i64* @STATUSRSSI, align 8
  %48 = call i32 @si470x_get_register(%struct.si470x_device* %46, i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %101

52:                                               ; preds = %45
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @time_after(i64 %53, i64 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %58 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %57, i32 0, i32 0
  %59 = load i16*, i16** %58, align 8
  %60 = load i64, i64* @STATUSRSSI, align 8
  %61 = getelementptr inbounds i16, i16* %59, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = load i32, i32* @STATUSRSSI_STC, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %67, %56
  %72 = phi i1 [ false, %56 ], [ %70, %67 ]
  br i1 %72, label %45, label %73

73:                                               ; preds = %71
  %74 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %75 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %74, i32 0, i32 0
  %76 = load i16*, i16** %75, align 8
  %77 = load i64, i64* @STATUSRSSI, align 8
  %78 = getelementptr inbounds i16, i16* %76, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* @STATUSRSSI_STC, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %86 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_warn(i32* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %73
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %95 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* @tune_timeout, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_warn(i32* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %93, %90
  br label %101

101:                                              ; preds = %100, %51
  %102 = load i16, i16* @CHANNEL_TUNE, align 2
  %103 = zext i16 %102 to i32
  %104 = xor i32 %103, -1
  %105 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %106 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %105, i32 0, i32 0
  %107 = load i16*, i16** %106, align 8
  %108 = load i64, i64* @CHANNEL, align 8
  %109 = getelementptr inbounds i16, i16* %107, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = zext i16 %110 to i32
  %112 = and i32 %111, %104
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %109, align 2
  %114 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %115 = load i64, i64* @CHANNEL, align 8
  %116 = call i32 @si470x_set_register(%struct.si470x_device* %114, i64 %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %101, %39
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @si470x_set_register(%struct.si470x_device*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @si470x_get_register(%struct.si470x_device*, i64) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
