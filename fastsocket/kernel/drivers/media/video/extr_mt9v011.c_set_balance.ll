; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_set_balance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_set_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v011 = type { i32, i32 }

@R2B_MT9V011_GREEN_1_GAIN = common dso_local global i32 0, align 4
@R2E_MT9V011_GREEN_2_GAIN = common dso_local global i32 0, align 4
@R2C_MT9V011_BLUE_GAIN = common dso_local global i32 0, align 4
@R2D_MT9V011_RED_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @set_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_balance(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.mt9v011*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev* %8)
  store %struct.mt9v011* %9, %struct.mt9v011** %3, align 8
  %10 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %11 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %14 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %17 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %20 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %23 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = sdiv i32 %25, 512
  %27 = add nsw i32 %18, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %29 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %32 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %35 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sdiv i32 %37, 512
  %39 = add nsw i32 %30, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %41 = load i32, i32* @R2B_MT9V011_GREEN_1_GAIN, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mt9v011_write(%struct.v4l2_subdev* %40, i32 %41, i32 %42)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %45 = load i32, i32* @R2E_MT9V011_GREEN_2_GAIN, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @mt9v011_write(%struct.v4l2_subdev* %44, i32 %45, i32 %46)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %49 = load i32, i32* @R2C_MT9V011_BLUE_GAIN, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mt9v011_write(%struct.v4l2_subdev* %48, i32 %49, i32 %50)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %53 = load i32, i32* @R2D_MT9V011_RED_GAIN, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mt9v011_write(%struct.v4l2_subdev* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev*) #1

declare dso_local i32 @mt9v011_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
