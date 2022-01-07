; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_stop_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i64, i32, i32 }

@QUEUE_STOPPED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @bfin_spi_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_spi_stop_queue(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  store i32 500, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @QUEUE_STOPPED, align 4
  %11 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %12 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 2
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %20 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %24, 0
  br label %27

27:                                               ; preds = %23, %18, %13
  %28 = phi i1 [ false, %18 ], [ false, %13 ], [ %26, %23 ]
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %31 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %30, i32 0, i32 0
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = call i32 @msleep(i32 10)
  %35 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %36 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %35, i32 0, i32 0
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  br label %13

39:                                               ; preds = %27
  %40 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %41 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %40, i32 0, i32 2
  %42 = call i32 @list_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %46 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %54 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %53, i32 0, i32 0
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
