; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.ixgbevf_adapter**, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_free_irq(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %5 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.ixgbevf_adapter* %18)
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %67, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 1
  %28 = load %struct.ixgbevf_adapter**, %struct.ixgbevf_adapter*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %28, i64 %30
  %32 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %31, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %25
  %38 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %38, i32 0, i32 1
  %40 = load %struct.ixgbevf_adapter**, %struct.ixgbevf_adapter*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %40, i64 %42
  %44 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %43, align 8
  %45 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %67

50:                                               ; preds = %37, %25
  %51 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %59, i32 0, i32 1
  %61 = load %struct.ixgbevf_adapter**, %struct.ixgbevf_adapter*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %61, i64 %63
  %65 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %64, align 8
  %66 = call i32 @free_irq(i32 %58, %struct.ixgbevf_adapter* %65)
  br label %67

67:                                               ; preds = %50, %49
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %3, align 4
  br label %22

70:                                               ; preds = %22
  %71 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %72 = call i32 @ixgbevf_reset_q_vectors(%struct.ixgbevf_adapter* %71)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_reset_q_vectors(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
