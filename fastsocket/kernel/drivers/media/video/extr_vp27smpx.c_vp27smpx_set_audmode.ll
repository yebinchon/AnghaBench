; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vp27smpx.c_vp27smpx_set_audmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vp27smpx.c_vp27smpx_set_audmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.vp27smpx_state = type { i32 }
%struct.i2c_client = type { i32 }

@__const.vp27smpx_set_audmode.data = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 4], align 4
@.str = private unnamed_addr constant [27 x i8] c"I/O error setting audmode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32)* @vp27smpx_set_audmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp27smpx_set_audmode(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vp27smpx_state*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [3 x i32], align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.vp27smpx_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.vp27smpx_state* %9, %struct.vp27smpx_state** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([3 x i32]* @__const.vp27smpx_set_audmode.data to i8*), i64 12, i1 false)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %19 [
    i32 129, label %14
    i32 132, label %14
    i32 128, label %15
    i32 131, label %15
    i32 130, label %17
  ]

14:                                               ; preds = %2, %2
  br label %19

15:                                               ; preds = %2, %2
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 1, i32* %16, align 4
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 2, i32* %18, align 4
  br label %19

19:                                               ; preds = %2, %17, %15, %14
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %22 = call i32 @i2c_master_send(%struct.i2c_client* %20, i32* %21, i32 12)
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 12
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = call i32 @v4l2_err(%struct.v4l2_subdev* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.vp27smpx_state*, %struct.vp27smpx_state** %5, align 8
  %31 = getelementptr inbounds %struct.vp27smpx_state, %struct.vp27smpx_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.vp27smpx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
