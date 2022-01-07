; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_acquire_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_acquire_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vino_channel_settings = type { i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"vino_acquire_input():\0A\00", align 1
@vino_drvdata = common dso_local global %struct.TYPE_9__* null, align 8
@VINO_NO_CHANNEL = common dso_local global i64 0, align 8
@VINO_INPUT_D1 = common dso_local global i32 0, align 4
@VINO_DATA_NORM_D1 = common dso_local global i32 0, align 4
@VINO_INPUT_COMPOSITE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@vino_data_norms = common dso_local global %struct.TYPE_10__* null, align 8
@VINO_DATA_NORM_PAL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@VINO_CHANNEL_A = common dso_local global i64 0, align 8
@VINO_INPUT_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"vino_acquire_input(): %s\0A\00", align 1
@vino_inputs = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*)* @vino_acquire_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_acquire_input(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VINO_NO_CHANNEL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %25 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @VINO_INPUT_D1, align 4
  %30 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %31 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @VINO_DATA_NORM_D1, align 4
  %33 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %34 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %159

35:                                               ; preds = %17, %1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %119

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VINO_NO_CHANNEL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %119

46:                                               ; preds = %40
  %47 = load i32, i32* @VINO_INPUT_COMPOSITE, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @video, align 4
  %49 = load i32, i32* @s_routing, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @vino_get_saa7191_input(i32 %50)
  %52 = call i32 (i32, i32, ...) @decoder_call(i32 %48, i32 %49, i32 %51, i32 0, i32 0)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %184

58:                                               ; preds = %46
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* @video, align 4
  %64 = load i32, i32* @querystd, align 4
  %65 = call i32 (i32, i32, ...) @decoder_call(i32 %63, i32 %64, i32* %7)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %97, label %68

68:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vino_data_norms, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %87

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %69

87:                                               ; preds = %82, %69
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @VINO_DATA_NORM_PAL, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* @core, align 4
  %94 = load i32, i32* @s_std, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i32, ...) @decoder_call(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %58
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %184

107:                                              ; preds = %97
  %108 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %109 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %115 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %118 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  br label %158

119:                                              ; preds = %40, %35
  %120 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %121 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @VINO_CHANNEL_A, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  br label %135

130:                                              ; preds = %119
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i32 [ %129, %125 ], [ %134, %130 ]
  %137 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %138 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %140 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @VINO_CHANNEL_A, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  br label %154

149:                                              ; preds = %135
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i32 [ %148, %144 ], [ %153, %149 ]
  %156 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %157 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %107
  br label %159

159:                                              ; preds = %158, %23
  %160 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %161 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @VINO_INPUT_NONE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @ENODEV, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %184

168:                                              ; preds = %159
  %169 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %170 = call i32 @vino_set_default_clipping(%struct.vino_channel_settings* %169)
  %171 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %172 = call i32 @vino_set_default_scaling(%struct.vino_channel_settings* %171)
  %173 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %174 = call i32 @vino_set_default_framerate(%struct.vino_channel_settings* %173)
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_inputs, align 8
  %176 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %177 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %168, %165, %104, %55
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i64, i64* %3, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @decoder_call(i32, i32, ...) #1

declare dso_local i32 @vino_get_saa7191_input(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vino_set_default_clipping(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_set_default_scaling(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_set_default_framerate(%struct.vino_channel_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
