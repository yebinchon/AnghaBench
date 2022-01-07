; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sermouse.c_sermouse_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sermouse.c_sermouse_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.sermouse = type { i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SERIO_SUN = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @sermouse_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sermouse_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.sermouse*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.sermouse* @serio_get_drvdata(%struct.serio* %8)
  store %struct.sermouse* %9, %struct.sermouse** %7, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.sermouse*, %struct.sermouse** %7, align 8
  %12 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 %14, 10
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i64 @time_after(i64 %10, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.sermouse*, %struct.sermouse** %7, align 8
  %22 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.sermouse*, %struct.sermouse** %7, align 8
  %26 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sermouse*, %struct.sermouse** %7, align 8
  %28 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SERIO_SUN, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.sermouse*, %struct.sermouse** %7, align 8
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @sermouse_process_ms(%struct.sermouse* %33, i8 zeroext %34)
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.sermouse*, %struct.sermouse** %7, align 8
  %38 = load i8, i8* %5, align 1
  %39 = call i32 @sermouse_process_msc(%struct.sermouse* %37, i8 zeroext %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local %struct.sermouse* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sermouse_process_ms(%struct.sermouse*, i8 zeroext) #1

declare dso_local i32 @sermouse_process_msc(%struct.sermouse*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
