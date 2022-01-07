; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_v4l2_calc_bufsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_v4l2_calc_bufsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran_jpg_settings = type { i32, i32, i32 }

@jpg_bufsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zoran_jpg_settings*)* @zoran_v4l2_calc_bufsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_v4l2_calc_bufsize(%struct.zoran_jpg_settings* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zoran_jpg_settings*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zoran_jpg_settings* %0, %struct.zoran_jpg_settings** %3, align 8
  %7 = load %struct.zoran_jpg_settings*, %struct.zoran_jpg_settings** %3, align 8
  %8 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.zoran_jpg_settings*, %struct.zoran_jpg_settings** %3, align 8
  %11 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load %struct.zoran_jpg_settings*, %struct.zoran_jpg_settings** %3, align 8
  %15 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 524288, %18
  store i32 %19, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %25, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %22

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @jpg_bufsize, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @jpg_bufsize, align 4
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 8192
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 8192, i32* %2, align 4
  br label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %39, %34
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
