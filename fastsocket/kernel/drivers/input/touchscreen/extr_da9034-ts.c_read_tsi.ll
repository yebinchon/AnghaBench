; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_da9034-ts.c_read_tsi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_da9034-ts.c_read_tsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9034_touch = type { i32, i32, i32 }

@DA9034_TSI_X_MSB = common dso_local global i32 0, align 4
@DA9034_TSI_Y_MSB = common dso_local global i32 0, align 4
@DA9034_TSI_XY_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9034_touch*)* @read_tsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tsi(%struct.da9034_touch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9034_touch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.da9034_touch* %0, %struct.da9034_touch** %3, align 8
  %8 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %9 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DA9034_TSI_X_MSB, align 4
  %12 = call i32 @da903x_read(i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %19 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DA9034_TSI_Y_MSB, align 4
  %22 = call i32 @da903x_read(i32 %20, i32 %21, i32* %5)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %17
  %28 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %29 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DA9034_TSI_XY_LSB, align 4
  %32 = call i32 @da903x_read(i32 %30, i32 %31, i32* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = shl i32 %38, 2
  %40 = and i32 %39, 1020
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 3
  %43 = or i32 %40, %42
  %44 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %45 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 %46, 2
  %48 = and i32 %47, 1020
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 12
  %51 = ashr i32 %50, 2
  %52 = or i32 %48, %51
  %53 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %54 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %37, %35, %25, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @da903x_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
