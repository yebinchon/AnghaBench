; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_set_compression.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_set_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i32 }
%struct.v4l2_jpegcompression = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et61x251_device*, %struct.v4l2_jpegcompression*)* @et61x251_set_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et61x251_set_compression(%struct.et61x251_device* %0, %struct.v4l2_jpegcompression* %1) #0 {
  %3 = alloca %struct.et61x251_device*, align 8
  %4 = alloca %struct.v4l2_jpegcompression*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.et61x251_device* %0, %struct.et61x251_device** %3, align 8
  store %struct.v4l2_jpegcompression* %1, %struct.v4l2_jpegcompression** %4, align 8
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
  %15 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 251
  %23 = call i64 @et61x251_write_reg(%struct.et61x251_device* %20, i32 %22, i32 18)
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %14
  %29 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 4
  %32 = call i64 @et61x251_write_reg(%struct.et61x251_device* %29, i32 %31, i32 18)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %19
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  ret i32 %45
}

declare dso_local i32 @et61x251_read_reg(%struct.et61x251_device*, i32) #1

declare dso_local i64 @et61x251_write_reg(%struct.et61x251_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
