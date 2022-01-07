; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.v3020 = type { %struct.TYPE_3__* }
%struct.platform_device = type { i32 }
%struct.v3020_platform_data = type { i32, i32, i32, i32 }

@v3020_gpio = common dso_local global %struct.TYPE_3__* null, align 8
@V3020_CS = common dso_local global i64 0, align 8
@V3020_WR = common dso_local global i64 0, align 8
@V3020_RD = common dso_local global i64 0, align 8
@V3020_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)* @v3020_gpio_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3020_gpio_map(%struct.v3020* %0, %struct.platform_device* %1, %struct.v3020_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v3020*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.v3020_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v3020* %0, %struct.v3020** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store %struct.v3020_platform_data* %2, %struct.v3020_platform_data** %7, align 8
  %10 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %7, align 8
  %11 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %14 = load i64, i64* @V3020_CS, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %7, align 8
  %18 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %21 = load i64, i64* @V3020_WR, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %7, align 8
  %25 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %28 = load i64, i64* @V3020_RD, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %35 = load i64, i64* @V3020_IO, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %68, %3
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpio_request(i32 %49, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %75

60:                                               ; preds = %43
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gpio_direction_output(i32 %66, i32 1)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %38

71:                                               ; preds = %38
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %73 = load %struct.v3020*, %struct.v3020** %5, align 8
  %74 = getelementptr inbounds %struct.v3020, %struct.v3020* %73, i32 0, i32 0
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %74, align 8
  store i32 0, i32* %4, align 4
  br label %90

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v3020_gpio, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @gpio_free(i32 %86)
  br label %76

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %71
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
