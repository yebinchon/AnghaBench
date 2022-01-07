; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_clock.c_mlx4_en_init_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_clock.c_mlx4_en_init_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_dev = type { i32, %struct.TYPE_6__, i32, %struct.mlx4_dev* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.mlx4_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@mlx4_en_read_clock = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_init_timestamp(%struct.mlx4_en_dev* %0) #0 {
  %2 = alloca %struct.mlx4_en_dev*, align 8
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %2, align 8
  %5 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %5, i32 0, i32 3
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_dev* %7, %struct.mlx4_dev** %3, align 8
  %8 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %8, i32 0, i32 1
  %10 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 16)
  %11 = load i32, i32* @mlx4_en_read_clock, align 4
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = call i32 @CLOCKSOURCE_MASK(i32 48)
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 14, i32* %21, align 4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 1000, %25
  %27 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clocksource_khz2mult(i32 %26, i32 %30)
  %32 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %35, i32 0, i32 2
  %37 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %37, i32 0, i32 1
  %39 = call i32 (...) @ktime_get_real()
  %40 = call i32 @ktime_to_ns(i32 %39)
  %41 = call i32 @timecounter_init(i32* %36, %struct.TYPE_6__* %38, i32 %40)
  %42 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %42, i32 0, i32 1
  %44 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cyclecounter_cyc2ns(%struct.TYPE_6__* %43, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @NSEC_PER_SEC, align 4
  %51 = sdiv i32 %50, 2
  %52 = load i32, i32* @HZ, align 4
  %53 = sdiv i32 %51, %52
  %54 = call i32 @do_div(i32 %49, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @clocksource_khz2mult(i32, i32) #1

declare dso_local i32 @timecounter_init(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @cyclecounter_cyc2ns(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
