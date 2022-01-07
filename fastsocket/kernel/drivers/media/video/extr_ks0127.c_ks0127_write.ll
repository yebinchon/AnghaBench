; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ks0127.c_ks0127_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ks0127.c_ks0127_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ks0127 = type { i8* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"write error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i8, i8)* @ks0127_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks0127_write(%struct.v4l2_subdev* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.ks0127*, align 8
  %9 = alloca [2 x i8], align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.ks0127* @to_ks0127(%struct.v4l2_subdev* %12)
  store %struct.ks0127* %13, %struct.ks0127** %8, align 8
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %15 = load i8, i8* %5, align 1
  store i8 %15, i8* %14, align 1
  %16 = getelementptr inbounds i8, i8* %14, i64 1
  %17 = load i8, i8* %6, align 1
  store i8 %17, i8* %16, align 1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %20 = call i32 @i2c_master_send(%struct.i2c_client* %18, i8* %19, i32 2)
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @debug, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = call i32 @v4l2_dbg(i32 1, i32 %24, %struct.v4l2_subdev* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i8, i8* %6, align 1
  %29 = load %struct.ks0127*, %struct.ks0127** %8, align 8
  %30 = getelementptr inbounds %struct.ks0127, %struct.ks0127* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %28, i8* %34, align 1
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ks0127* @to_ks0127(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
