; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_irh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_irh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i64, i32, i32, i32, i32 }

@STU300_ERROR_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stu300_irh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_irh(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stu300_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.stu300_dev*
  store %struct.stu300_dev* %8, %struct.stu300_dev** %5, align 8
  %9 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %10 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_enable(i32 %11)
  %13 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %14 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %17 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %18 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @stu300_event_occurred(%struct.stu300_dev* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %25 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STU300_ERROR_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %2
  %30 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %31 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %30, i32 0, i32 3
  %32 = call i32 @complete(i32* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %35 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %34, i32 0, i32 2
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %38 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_disable(i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @stu300_event_occurred(%struct.stu300_dev*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
