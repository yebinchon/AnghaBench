; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i64, i32, i32, i32, i64, i64, i64, i64 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"msp34xxg daemon started\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"msp34xxg thread: sleep\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"msp34xxg thread: wakeup\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"thread: restart scan\0A\00", align 1
@MSP_MODE_EXTERN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"thread: no carrier scan\0A\00", align 1
@msp_standard = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"started autodetect, waiting for result\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"detection still in progress\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"detection still in progress after 10 tries. giving up.\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"detected standard: %s (0x%04x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"thread: exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp34xxg_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.msp_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.i2c_client*
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call i32 @i2c_get_clientdata(%struct.i2c_client* %10)
  %12 = call %struct.msp_state* @to_state(i32 %11)
  store %struct.msp_state* %12, %struct.msp_state** %5, align 8
  %13 = load i32, i32* @msp_debug, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %13, %struct.i2c_client* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @set_freezable()
  br label %17

17:                                               ; preds = %174, %155, %117, %41, %1
  %18 = load i32, i32* @msp_debug, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %18, %struct.i2c_client* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %22 = call i64 @msp_sleep(%struct.msp_state* %21, i32 -1)
  %23 = load i32, i32* @msp_debug, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %23, %struct.i2c_client* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %172, %95, %17
  %27 = load i32, i32* @msp_debug, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %27, %struct.i2c_client* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %31 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = call i64 (...) @kthread_should_stop()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %175

35:                                               ; preds = %26
  %36 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %37 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MSP_MODE_EXTERN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* @msp_debug, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %42, %struct.i2c_client* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %46 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %48 = call i32 @msp_update_volume(%struct.msp_state* %47)
  br label %17

49:                                               ; preds = %35
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call i32 @msp34xxg_reset(%struct.i2c_client* %50)
  %52 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %53 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %70

57:                                               ; preds = %49
  %58 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %59 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @msp_standard, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62, %57
  %67 = load i32, i32* @msp_standard, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ 32, %65 ], [ %67, %66 ]
  br label %70

70:                                               ; preds = %68, %56
  %71 = phi i32 [ 64, %56 ], [ %69, %68 ]
  %72 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %73 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %76 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @msp_write_dem(%struct.i2c_client* %74, i32 32, i32 %77)
  %79 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %80 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %122

84:                                               ; preds = %70
  %85 = load i32, i32* @msp_debug, align 4
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %85, %struct.i2c_client* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %109, %84
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 10
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %93 = call i64 @msp_sleep(%struct.msp_state* %92, i32 100)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %26

96:                                               ; preds = %91
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = call i32 @msp_read_dem(%struct.i2c_client* %97, i32 126)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 2047
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %104 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  br label %112

105:                                              ; preds = %96
  %106 = load i32, i32* @msp_debug, align 4
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %106, %struct.i2c_client* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %88

112:                                              ; preds = %101, %88
  %113 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %114 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @msp_debug, align 4
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %118, %struct.i2c_client* %119, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %17

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %83
  %123 = load i32, i32* @msp_debug, align 4
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %126 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @msp_standard_std_name(i32 %127)
  %129 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %130 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %123, %struct.i2c_client* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %134 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 9
  br i1 %136, label %137, label %140

137:                                              ; preds = %122
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = call i64 @msp_write_dsp(%struct.i2c_client* %138, i32 14, i32 31744)
  br label %140

140:                                              ; preds = %137, %122
  %141 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %142 = call i32 @msp_update_volume(%struct.msp_state* %141)
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %145 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @msp_write_dsp(%struct.i2c_client* %143, i32 19, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  store i32 -1, i32* %2, align 4
  br label %179

150:                                              ; preds = %140
  %151 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %152 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 32
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %17

156:                                              ; preds = %150
  %157 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %158 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %157, i32 0, i32 3
  store i32 1, i32* %158, align 8
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = call i32 @watch_stereo(%struct.i2c_client* %159)
  br label %161

161:                                              ; preds = %173, %156
  %162 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %163 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = call i32 @watch_stereo(%struct.i2c_client* %167)
  %169 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %170 = call i64 @msp_sleep(%struct.msp_state* %169, i32 5000)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %26

173:                                              ; preds = %166
  br label %161

174:                                              ; preds = %161
  br label %17

175:                                              ; preds = %34
  %176 = load i32, i32* @msp_debug, align 4
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %176, %struct.i2c_client* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %175, %149
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @msp_sleep(%struct.msp_state*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @msp_update_volume(%struct.msp_state*) #1

declare dso_local i32 @msp34xxg_reset(%struct.i2c_client*) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp_standard_std_name(i32) #1

declare dso_local i64 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @watch_stereo(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
