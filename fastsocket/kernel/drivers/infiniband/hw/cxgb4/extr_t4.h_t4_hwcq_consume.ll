; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_hwcq_consume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_hwcq_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_cq*)* @t4_hwcq_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_hwcq_consume(%struct.t4_cq* %0) #0 {
  %2 = alloca %struct.t4_cq*, align 8
  %3 = alloca i32, align 4
  store %struct.t4_cq* %0, %struct.t4_cq** %2, align 8
  %4 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %5 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %4, i32 0, i32 6
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %8 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %14 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %16 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %20 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = call i32 @SEINTARM(i32 0)
  %26 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %27 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CIDXINC(i32 %28)
  %30 = or i32 %25, %29
  %31 = call i32 @TIMERREG(i32 7)
  %32 = or i32 %30, %31
  %33 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %34 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @INGRESSQID(i32 %35)
  %37 = or i32 %32, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %40 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @writel(i32 %38, i32 %41)
  %43 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %44 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %24, %1
  %46 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %47 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %51 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %57 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %59 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = xor i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %45
  ret void
}

declare dso_local i32 @SEINTARM(i32) #1

declare dso_local i32 @CIDXINC(i32) #1

declare dso_local i32 @TIMERREG(i32) #1

declare dso_local i32 @INGRESSQID(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
