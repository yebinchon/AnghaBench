; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_intr.c_c2_rnic_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_intr.c_c2_rnic_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i64, i64, i32* }

@PCI_BAR0_HOST_HINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2_rnic_interrupt(%struct.c2_dev* %0) #0 {
  %2 = alloca %struct.c2_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %2, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %6 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %9 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @be16_to_cpu(i32 %11)
  %13 = icmp ne i64 %7, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %16 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_BAR0_HOST_HINT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, -2147483648
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %33

25:                                               ; preds = %14
  %26 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %27 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @handle_mq(%struct.c2_dev* %30, i32 %31)
  br label %4

33:                                               ; preds = %24, %4
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @handle_mq(%struct.c2_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
