; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i64, i32 }

@C2_NISR0 = common dso_local global i64 0, align 8
@C2_DISR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @c2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.c2_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.c2_dev*
  store %struct.c2_dev* %11, %struct.c2_dev** %9, align 8
  %12 = load %struct.c2_dev*, %struct.c2_dev** %9, align 8
  %13 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @C2_NISR0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.c2_dev*, %struct.c2_dev** %9, align 8
  %22 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @c2_rx_interrupt(i32 %23)
  %25 = load %struct.c2_dev*, %struct.c2_dev** %9, align 8
  %26 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @c2_tx_interrupt(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.c2_dev*, %struct.c2_dev** %9, align 8
  %31 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @C2_NISR0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %20, %2
  %39 = load %struct.c2_dev*, %struct.c2_dev** %9, align 8
  %40 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @C2_DISR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.c2_dev*, %struct.c2_dev** %9, align 8
  %50 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @C2_DISR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.c2_dev*, %struct.c2_dev** %9, align 8
  %56 = call i32 @c2_rnic_interrupt(%struct.c2_dev* %55)
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %47, %38
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @IRQ_NONE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @c2_rx_interrupt(i32) #1

declare dso_local i32 @c2_tx_interrupt(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @c2_rnic_interrupt(%struct.c2_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
