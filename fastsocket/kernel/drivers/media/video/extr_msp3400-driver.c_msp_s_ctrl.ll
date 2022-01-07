; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.msp_state = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mute=%s scanning=%s volume=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @msp_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.msp_state* @ctrl_to_state(%struct.v4l2_ctrl* %8)
  store %struct.msp_state* %9, %struct.msp_state** %4, align 8
  %10 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 5
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %168 [
    i32 128, label %19
    i32 131, label %97
    i32 129, label %115
    i32 130, label %133
    i32 132, label %150
  ]

19:                                               ; preds = %1
  %20 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %21 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %26 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 127
  %34 = sdiv i32 %33, 65535
  %35 = shl i32 %34, 8
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %19
  %37 = load i32, i32* @msp_debug, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %40 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %47 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %48 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %53 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %54 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @v4l_dbg(i32 1, i32 %37, %struct.i2c_client* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %52, i32 %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @msp_write_dsp(%struct.i2c_client* %59, i32 0, i32 %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %36
  br label %69

66:                                               ; preds = %36
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, 1
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 1, %65 ], [ %68, %66 ]
  %71 = call i32 @msp_write_dsp(%struct.i2c_client* %62, i32 7, i32 %70)
  %72 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %73 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, 1
  br label %84

84:                                               ; preds = %81, %80
  %85 = phi i32 [ 1, %80 ], [ %83, %81 ]
  %86 = call i32 @msp_write_dsp(%struct.i2c_client* %77, i32 64, i32 %85)
  br label %87

87:                                               ; preds = %84, %69
  %88 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %89 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @msp_write_dsp(%struct.i2c_client* %93, i32 6, i32 %94)
  br label %96

96:                                               ; preds = %92, %87
  br label %171

97:                                               ; preds = %1
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 32768
  %100 = mul nsw i32 %99, 96
  %101 = sdiv i32 %100, 65535
  %102 = shl i32 %101, 8
  store i32 %102, i32* %6, align 4
  %103 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @msp_write_dsp(%struct.i2c_client* %103, i32 2, i32 %104)
  %106 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %107 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @msp_write_dsp(%struct.i2c_client* %111, i32 49, i32 %112)
  br label %114

114:                                              ; preds = %110, %97
  br label %171

115:                                              ; preds = %1
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, 32768
  %118 = mul nsw i32 %117, 96
  %119 = sdiv i32 %118, 65535
  %120 = shl i32 %119, 8
  store i32 %120, i32* %6, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @msp_write_dsp(%struct.i2c_client* %121, i32 3, i32 %122)
  %124 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %125 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %115
  %129 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @msp_write_dsp(%struct.i2c_client* %129, i32 50, i32 %130)
  br label %132

132:                                              ; preds = %128, %115
  br label %171

133:                                              ; preds = %1
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 5120, i32 0
  store i32 %137, i32* %6, align 4
  %138 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @msp_write_dsp(%struct.i2c_client* %138, i32 4, i32 %139)
  %141 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %142 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %133
  %146 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @msp_write_dsp(%struct.i2c_client* %146, i32 51, i32 %147)
  br label %149

149:                                              ; preds = %145, %133
  br label %171

150:                                              ; preds = %1
  %151 = load i32, i32* %6, align 4
  %152 = sdiv i32 %151, 256
  %153 = sub nsw i32 %152, 128
  store i32 %153, i32* %6, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = shl i32 %155, 8
  %157 = call i32 @msp_write_dsp(%struct.i2c_client* %154, i32 1, i32 %156)
  %158 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %159 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %150
  %163 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = shl i32 %164, 8
  %166 = call i32 @msp_write_dsp(%struct.i2c_client* %163, i32 48, i32 %165)
  br label %167

167:                                              ; preds = %162, %150
  br label %171

168:                                              ; preds = %1
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %172

171:                                              ; preds = %167, %149, %132, %114, %96
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.msp_state* @ctrl_to_state(%struct.v4l2_ctrl*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
