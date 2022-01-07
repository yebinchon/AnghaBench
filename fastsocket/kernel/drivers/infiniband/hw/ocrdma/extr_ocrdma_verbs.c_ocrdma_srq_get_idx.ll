; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_srq_get_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_srq_get_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { i32, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_srq*)* @ocrdma_srq_get_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_srq_get_idx(%struct.ocrdma_srq* %0) #0 {
  %2 = alloca %struct.ocrdma_srq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %5
  %12 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %13 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %11
  %21 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %22 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ffs(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 32
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 1
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %36 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %40, %20
  %43 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ocrdma_srq_toggle_bit(%struct.ocrdma_srq* %43, i32 %44)
  br label %50

46:                                               ; preds = %11
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %5

50:                                               ; preds = %42, %5
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %53 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (...) @BUG()
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ocrdma_srq_toggle_bit(%struct.ocrdma_srq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
