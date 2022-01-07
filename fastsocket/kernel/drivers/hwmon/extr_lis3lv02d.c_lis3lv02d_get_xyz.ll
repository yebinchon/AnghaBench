; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d.c_lis3lv02d_get_xyz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d.c_lis3lv02d_get_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32 (%struct.lis3lv02d*, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OUTX = common dso_local global i32 0, align 4
@OUTY = common dso_local global i32 0, align 4
@OUTZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lis3lv02d*, i32*, i32*, i32*)* @lis3lv02d_get_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lis3lv02d_get_xyz(%struct.lis3lv02d* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.lis3lv02d*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32], align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %11 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %10, i32 0, i32 0
  %12 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %11, align 8
  %13 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %14 = load i32, i32* @OUTX, align 4
  %15 = call i32 %12(%struct.lis3lv02d* %13, i32 %14)
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %18 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %17, i32 0, i32 0
  %19 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %18, align 8
  %20 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %21 = load i32, i32* @OUTY, align 4
  %22 = call i32 %19(%struct.lis3lv02d* %20, i32 %21)
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %25 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %24, i32 0, i32 0
  %26 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %25, align 8
  %27 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %28 = load i32, i32* @OUTZ, align 4
  %29 = call i32 %26(%struct.lis3lv02d* %27, i32 %28)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %32 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %36 = call i32 @lis3lv02d_get_axis(i32 %34, i32* %35)
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %39 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %43 = call i32 @lis3lv02d_get_axis(i32 %41, i32* %42)
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %46 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %50 = call i32 @lis3lv02d_get_axis(i32 %48, i32* %49)
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  ret void
}

declare dso_local i32 @lis3lv02d_get_axis(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
