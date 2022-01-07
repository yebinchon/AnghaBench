; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_tosa_battery.c_tosa_read_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_tosa_battery.c_tosa_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tosa_bat = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@bat_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tosa_bat*)* @tosa_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tosa_read_temp(%struct.tosa_bat* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tosa_bat*, align 8
  %4 = alloca i64, align 8
  store %struct.tosa_bat* %0, %struct.tosa_bat** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %6 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %11 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i64 0, i64* %2, align 8
  br label %46

15:                                               ; preds = %9
  %16 = call i32 @mutex_lock(i32* @bat_lock)
  %17 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %18 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpio_set_value(i64 %19, i32 1)
  %21 = call i32 @msleep(i32 5)
  %22 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %23 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %31 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @wm97xx_read_aux_adc(i32 %29, i64 %32)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %35 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gpio_set_value(i64 %36, i32 0)
  %38 = call i32 @mutex_unlock(i32* @bat_lock)
  %39 = load i64, i64* %4, align 8
  %40 = mul i64 %39, 10000
  %41 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %42 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = udiv i64 %40, %43
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %15, %14
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @wm97xx_read_aux_adc(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
