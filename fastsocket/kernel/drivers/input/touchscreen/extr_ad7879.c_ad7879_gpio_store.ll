; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_gpio_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_gpio_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad7879 = type { i32, i32, i32, i32 }

@AD7879_REG_CTRL2 = common dso_local global i32 0, align 4
@AD7879_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7879_gpio_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7879_gpio_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ad7879*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ad7879* @dev_get_drvdata(%struct.device* %13)
  store %struct.ad7879* %14, %struct.ad7879** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strict_strtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %68

21:                                               ; preds = %4
  %22 = load %struct.ad7879*, %struct.ad7879** %10, align 8
  %23 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.ad7879*, %struct.ad7879** %10, align 8
  %31 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ad7879*, %struct.ad7879** %10, align 8
  %33 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AD7879_REG_CTRL2, align 4
  %36 = load %struct.ad7879*, %struct.ad7879** %10, align 8
  %37 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %21
  %41 = load %struct.ad7879*, %struct.ad7879** %10, align 8
  %42 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AD7879_GPIO_DATA, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  br label %53

47:                                               ; preds = %21
  %48 = load %struct.ad7879*, %struct.ad7879** %10, align 8
  %49 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AD7879_GPIO_DATA, align 4
  %52 = or i32 %50, %51
  br label %53

53:                                               ; preds = %47, %40
  %54 = phi i32 [ %46, %40 ], [ %52, %47 ]
  %55 = call i32 @ad7879_write(i32 %34, i32 %35, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.ad7879*, %struct.ad7879** %10, align 8
  %57 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = sext i32 %59 to i64
  br label %65

63:                                               ; preds = %53
  %64 = load i64, i64* %9, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.ad7879* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7879_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
