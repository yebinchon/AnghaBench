; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_load_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @cx25840_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_load_fw(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.cx25840_state* %6, %struct.cx25840_state** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %10 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %1
  %14 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %15 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %17 = call i64 @is_cx2583x(%struct.cx25840_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @cx25836_initialize(%struct.i2c_client* %20)
  br label %41

22:                                               ; preds = %13
  %23 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %24 = call i64 @is_cx2388x(%struct.cx25840_state* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @cx23885_initialize(%struct.i2c_client* %27)
  br label %40

29:                                               ; preds = %22
  %30 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %31 = call i64 @is_cx231xx(%struct.cx25840_state* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @cx231xx_initialize(%struct.i2c_client* %34)
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @cx25840_initialize(%struct.i2c_client* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41, %1
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25836_initialize(%struct.i2c_client*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i32 @cx23885_initialize(%struct.i2c_client*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @cx231xx_initialize(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_initialize(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
