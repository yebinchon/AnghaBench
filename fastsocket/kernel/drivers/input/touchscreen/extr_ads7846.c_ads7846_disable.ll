; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_ads7846_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_ads7846_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ads7846*)* @ads7846_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads7846_disable(%struct.ads7846* %0) #0 {
  %2 = alloca %struct.ads7846*, align 8
  store %struct.ads7846* %0, %struct.ads7846** %2, align 8
  %3 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %4 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %10 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %12 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %8
  %16 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %17 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %19 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @disable_irq(i32 %22)
  br label %39

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %27 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %32 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = call i32 @msleep(i32 1)
  %35 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %36 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %35, i32 0, i32 2
  %37 = call i32 @spin_lock_irq(i32* %36)
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %7, %38, %15
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
