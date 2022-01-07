; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_ts_interrupt_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_ts_interrupt_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_ts = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.corgi_ts*, i32)* @ts_interrupt_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts_interrupt_main(%struct.corgi_ts* %0, i32 %1) #0 {
  %3 = alloca %struct.corgi_ts*, align 8
  %4 = alloca i32, align 4
  store %struct.corgi_ts* %0, %struct.corgi_ts** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %6 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IRQ_TO_GPIO(i32 %7)
  %9 = call i32 @GPLR(i32 %8)
  %10 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %11 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IRQ_TO_GPIO(i32 %12)
  %14 = call i32 @GPIO_bit(i32 %13)
  %15 = and i32 %9, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %19 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %22 = call i32 @set_irq_type(i32 %20, i32 %21)
  %23 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %24 = call i64 @read_xydata(%struct.corgi_ts* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %28 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %30 = call i32 @new_data(%struct.corgi_ts* %29)
  br label %31

31:                                               ; preds = %26, %17
  %32 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %33 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %32, i32 0, i32 3
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i32, i32* @HZ, align 4
  %36 = sdiv i32 %35, 100
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @mod_timer(i32* %33, i64 %38)
  br label %82

40:                                               ; preds = %2
  %41 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %42 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %47 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %63

50:                                               ; preds = %45, %40
  %51 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %52 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %51, i32 0, i32 3
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i32, i32* @HZ, align 4
  %55 = sdiv i32 %54, 100
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @mod_timer(i32* %52, i64 %57)
  %59 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %60 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %82

63:                                               ; preds = %45
  %64 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %65 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %70 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %73 = call i32 @new_data(%struct.corgi_ts* %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %76 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %79 = call i32 @set_irq_type(i32 %77, i32 %78)
  %80 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %81 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %50, %74, %31
  ret void
}

declare dso_local i32 @GPLR(i32) #1

declare dso_local i32 @IRQ_TO_GPIO(i32) #1

declare dso_local i32 @GPIO_bit(i32) #1

declare dso_local i32 @set_irq_type(i32, i32) #1

declare dso_local i64 @read_xydata(%struct.corgi_ts*) #1

declare dso_local i32 @new_data(%struct.corgi_ts*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
