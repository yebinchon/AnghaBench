; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.e1000_hw }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { i32 }

@IMC = common dso_local global i32 0, align 4
@EIAC_82574 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_irq_disable(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %5, i32 0, i32 3
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @IMC, align 4
  %8 = call i32 @ew32(i32 %7, i32 -1)
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIAC_82574, align 4
  %15 = call i32 @ew32(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = call i32 (...) @e1e_flush()
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @synchronize_irq(i32 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %23

42:                                               ; preds = %23
  br label %50

43:                                               ; preds = %16
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @synchronize_irq(i32 %48)
  br label %50

50:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
