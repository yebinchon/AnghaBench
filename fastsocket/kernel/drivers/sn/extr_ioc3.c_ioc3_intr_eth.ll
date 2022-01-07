; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_ioc3_intr_eth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_ioc3_intr_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (%struct.TYPE_3__*, %struct.ioc3_driver_data*, i32)* }
%struct.ioc3_driver_data = type { i64*, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ioc3_submodules_lock = common dso_local global i32 0, align 4
@ioc3_ethernet = common dso_local global %struct.TYPE_3__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ioc3_intr_eth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3_intr_eth(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ioc3_driver_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ioc3_driver_data*
  store %struct.ioc3_driver_data* %10, %struct.ioc3_driver_data** %7, align 8
  store i32 1, i32* %8, align 4
  %11 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %7, align 8
  %12 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @read_lock_irqsave(i32* @ioc3_submodules_lock, i64 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ioc3_ethernet, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %7, align 8
  %24 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ioc3_ethernet, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ioc3_ethernet, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_3__*, %struct.ioc3_driver_data*, i32)*, i32 (%struct.TYPE_3__*, %struct.ioc3_driver_data*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_3__*, %struct.ioc3_driver_data*, i32)* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ioc3_ethernet, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_3__*, %struct.ioc3_driver_data*, i32)*, i32 (%struct.TYPE_3__*, %struct.ioc3_driver_data*, i32)** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ioc3_ethernet, align 8
  %45 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %7, align 8
  %46 = call i32 %43(%struct.TYPE_3__* %44, %struct.ioc3_driver_data* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %40, %37
  %50 = phi i1 [ false, %37 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %32, %22, %17
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @read_unlock_irqrestore(i32* @ioc3_submodules_lock, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @IRQ_NONE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
