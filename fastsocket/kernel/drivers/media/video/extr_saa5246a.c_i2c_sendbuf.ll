; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_i2c_sendbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_i2c_sendbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa5246a_device = type { i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa5246a_device*, i32, i32, i32*)* @i2c_sendbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_sendbuf(%struct.saa5246a_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa5246a_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [64 x i8], align 16
  store %struct.saa5246a_device* %0, %struct.saa5246a_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.saa5246a_device*, %struct.saa5246a_device** %6, align 8
  %13 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %12, i32 0, i32 0
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 %16, i8* %17, align 16
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @memcpy(i8* %19, i32* %20, i32 %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @i2c_master_send(%struct.i2c_client* %23, i8* %24, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

32:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
