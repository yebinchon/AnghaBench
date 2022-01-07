; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_free_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i64, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.mthca_dev*, i64 }
%struct.TYPE_4__ = type { i32 }

@MTHCA_NUM_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*)* @mthca_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_free_irqs(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.mthca_dev* %15)
  br label %17

17:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MTHCA_NUM_EQ, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %26, i64 %28
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %22
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i64 %39
  %41 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %44 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %46, i64 %48
  %50 = call i32 @free_irq(i32 %42, %struct.mthca_dev* %49)
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i64 %56
  %58 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %33, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %18

63:                                               ; preds = %18
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
