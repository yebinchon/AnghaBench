; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_seek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@POWERCFG_SEEK = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@POWERCFG_SKMODE = common dso_local global i32 0, align 4
@POWERCFG_SEEKUP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@seek_timeout = common dso_local global i32 0, align 4
@STATUSRSSI = common dso_local global i64 0, align 8
@STATUSRSSI_STC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"seek does not complete\0A\00", align 1
@STATUSRSSI_SF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"seek failed / band limit reached\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"seek timed out after %u ms\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*, i32, i32)* @si470x_set_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_set_seek(%struct.si470x_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @POWERCFG_SEEK, align 4
  %11 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %12 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @POWERCFG, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %10
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32, i32* @POWERCFG_SKMODE, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %24 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @POWERCFG, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %22
  store i32 %29, i32* %27, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load i32, i32* @POWERCFG_SKMODE, align 4
  %32 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %33 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @POWERCFG, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %31
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* @POWERCFG_SEEKUP, align 4
  %44 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %45 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @POWERCFG, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %43
  store i32 %50, i32* %48, align 4
  br label %61

51:                                               ; preds = %39
  %52 = load i32, i32* @POWERCFG_SEEKUP, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %55 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @POWERCFG, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %53
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %51, %42
  %62 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %63 = load i64, i64* @POWERCFG, align 8
  %64 = call i32 @si470x_set_register(%struct.si470x_device* %62, i64 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %156

68:                                               ; preds = %61
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i32, i32* @seek_timeout, align 4
  %71 = call i64 @msecs_to_jiffies(i32 %70)
  %72 = add i64 %69, %71
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %98, %68
  %74 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %75 = load i64, i64* @STATUSRSSI, align 8
  %76 = call i32 @si470x_get_register(%struct.si470x_device* %74, i64 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %143

80:                                               ; preds = %73
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @time_after(i64 %81, i64 %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80
  %85 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %86 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @STATUSRSSI, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @STATUSRSSI_STC, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %94, %84
  %99 = phi i1 [ false, %84 ], [ %97, %94 ]
  br i1 %99, label %73, label %100

100:                                              ; preds = %98
  %101 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %102 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @STATUSRSSI, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @STATUSRSSI_STC, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %112 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_warn(i32* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %100
  %117 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %118 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @STATUSRSSI, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @STATUSRSSI_SF, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %128 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 (i32*, i8*, ...) @dev_warn(i32* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %126, %116
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %137 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* @seek_timeout, align 4
  %141 = call i32 (i32*, i8*, ...) @dev_warn(i32* %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %135, %132
  br label %143

143:                                              ; preds = %142, %79
  %144 = load i32, i32* @POWERCFG_SEEK, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %147 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @POWERCFG, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %145
  store i32 %152, i32* %150, align 4
  %153 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %154 = load i64, i64* @POWERCFG, align 8
  %155 = call i32 @si470x_set_register(%struct.si470x_device* %153, i64 %154)
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %143, %67
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %162, %159, %156
  %166 = load i32, i32* %7, align 4
  ret i32 %166
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
