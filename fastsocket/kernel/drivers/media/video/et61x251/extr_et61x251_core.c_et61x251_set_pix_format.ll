; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_set_pix_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_set_pix_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i32 }
%struct.v4l2_pix_format = type { i64 }

@V4L2_PIX_FMT_ET61X251 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et61x251_device*, %struct.v4l2_pix_format*)* @et61x251_set_pix_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et61x251_set_pix_format(%struct.et61x251_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.et61x251_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.et61x251_device* %0, %struct.et61x251_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %8 = call i32 @et61x251_read_reg(%struct.et61x251_device* %7, i32 18)
  store i32 %8, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_PIX_FMT_ET61X251, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 253
  %24 = call i64 @et61x251_write_reg(%struct.et61x251_device* %21, i32 %23, i32 18)
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %14
  %30 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 2
  %33 = call i64 @et61x251_write_reg(%struct.et61x251_device* %30, i32 %32, i32 18)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  ret i32 %46
}

declare dso_local i32 @et61x251_read_reg(%struct.et61x251_device*, i32) #1

declare dso_local i64 @et61x251_write_reg(%struct.et61x251_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
