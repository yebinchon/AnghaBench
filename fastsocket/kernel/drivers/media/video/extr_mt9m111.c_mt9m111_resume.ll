; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @mt9m111_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_resume(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9m111*, align 8
  %5 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %7 = call i32 @to_soc_camera_control(%struct.soc_camera_device* %6)
  %8 = call %struct.i2c_client* @to_i2c_client(i32 %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %9)
  store %struct.mt9m111* %10, %struct.mt9m111** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %12 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = call i32 @mt9m111_enable(%struct.i2c_client* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = call i32 @mt9m111_reset(%struct.i2c_client* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = call i32 @mt9m111_restore_state(%struct.i2c_client* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_enable(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_reset(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_restore_state(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
