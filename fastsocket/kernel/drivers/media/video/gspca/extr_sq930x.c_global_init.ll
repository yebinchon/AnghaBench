; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_global_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i32, i32, i32 }

@icx098bq_start_0 = common dso_local global i32 0, align 4
@sensor_tb = common dso_local global %struct.TYPE_2__* null, align 8
@Creative_live_motion = common dso_local global i32 0, align 4
@SQ930_GPIO_EXTRA1 = common dso_local global i32 0, align 4
@lz24bp_start_0 = common dso_local global i32 0, align 4
@mi0360_start_0 = common dso_local global i32 0, align 4
@SQ930_GPIO_EXTRA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32)* @global_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @global_init(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sd*, %struct.sd** %3, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %85 [
    i32 130, label %8
    i32 129, label %27
    i32 128, label %60
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  %14 = load i32, i32* @icx098bq_start_0, align 4
  %15 = call i32 @ucbus_write(i32* %13, i32 %14, i32 8, i32 8)
  br label %16

16:                                               ; preds = %11, %8
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_tb, align 8
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpio_init(%struct.sd* %17, i32 %25)
  br label %104

27:                                               ; preds = %2
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @Creative_live_motion, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = load i32, i32* @SQ930_GPIO_EXTRA1, align 4
  %36 = call i32 @gpio_set(%struct.sd* %34, i32 %35, i32 255)
  br label %40

37:                                               ; preds = %27
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = call i32 @gpio_set(%struct.sd* %38, i32 0, i32 255)
  br label %40

40:                                               ; preds = %37, %33
  %41 = call i32 @msleep(i32 50)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 1
  %47 = load i32, i32* @lz24bp_start_0, align 4
  %48 = call i32 @ucbus_write(i32* %46, i32 %47, i32 8, i32 8)
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.sd*, %struct.sd** %3, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_tb, align 8
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gpio_init(%struct.sd* %50, i32 %58)
  br label %104

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 1
  %66 = load i32, i32* @mi0360_start_0, align 4
  %67 = load i32, i32* @mi0360_start_0, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @ucbus_write(i32* %65, i32 %66, i32 %68, i32 8)
  br label %70

70:                                               ; preds = %63, %60
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_tb, align 8
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gpio_init(%struct.sd* %71, i32 %79)
  %81 = load %struct.sd*, %struct.sd** %3, align 8
  %82 = load i32, i32* @SQ930_GPIO_EXTRA2, align 4
  %83 = load i32, i32* @SQ930_GPIO_EXTRA2, align 4
  %84 = call i32 @gpio_set(%struct.sd* %81, i32 %82, i32 %83)
  br label %104

85:                                               ; preds = %2
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.sd*, %struct.sd** %3, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 1
  %91 = call i32 @mt9v111_init(i32* %90)
  br label %103

92:                                               ; preds = %85
  %93 = load %struct.sd*, %struct.sd** %3, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_tb, align 8
  %95 = load %struct.sd*, %struct.sd** %3, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @gpio_init(%struct.sd* %93, i32 %101)
  br label %103

103:                                              ; preds = %92, %88
  br label %104

104:                                              ; preds = %103, %70, %49, %16
  ret void
}

declare dso_local i32 @ucbus_write(i32*, i32, i32, i32) #1

declare dso_local i32 @gpio_init(%struct.sd*, i32) #1

declare dso_local i32 @gpio_set(%struct.sd*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mt9v111_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
