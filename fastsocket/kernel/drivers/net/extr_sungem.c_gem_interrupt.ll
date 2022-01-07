; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { i32, i32, i64, i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@GREG_STAT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gem_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.gem*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.gem* @netdev_priv(%struct.net_device* %12)
  store %struct.gem* %13, %struct.gem** %7, align 8
  %14 = load %struct.gem*, %struct.gem** %7, align 8
  %15 = getelementptr inbounds %struct.gem, %struct.gem* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.gem*, %struct.gem** %7, align 8
  %22 = getelementptr inbounds %struct.gem, %struct.gem* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.gem*, %struct.gem** %7, align 8
  %26 = getelementptr inbounds %struct.gem, %struct.gem* %25, i32 0, i32 1
  %27 = call i64 @napi_schedule_prep(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %20
  %30 = load %struct.gem*, %struct.gem** %7, align 8
  %31 = getelementptr inbounds %struct.gem, %struct.gem* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GREG_STAT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @readl(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.gem*, %struct.gem** %7, align 8
  %40 = getelementptr inbounds %struct.gem, %struct.gem* %39, i32 0, i32 1
  %41 = call i32 @napi_enable(i32* %40)
  %42 = load %struct.gem*, %struct.gem** %7, align 8
  %43 = getelementptr inbounds %struct.gem, %struct.gem* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %29
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.gem*, %struct.gem** %7, align 8
  %50 = getelementptr inbounds %struct.gem, %struct.gem* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.gem*, %struct.gem** %7, align 8
  %52 = call i32 @gem_disable_ints(%struct.gem* %51)
  %53 = load %struct.gem*, %struct.gem** %7, align 8
  %54 = getelementptr inbounds %struct.gem, %struct.gem* %53, i32 0, i32 1
  %55 = call i32 @__napi_schedule(i32* %54)
  br label %56

56:                                               ; preds = %47, %20
  %57 = load %struct.gem*, %struct.gem** %7, align 8
  %58 = getelementptr inbounds %struct.gem, %struct.gem* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %38, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gem_disable_ints(%struct.gem*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
