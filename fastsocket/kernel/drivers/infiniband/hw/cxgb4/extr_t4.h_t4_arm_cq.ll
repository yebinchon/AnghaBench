; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_arm_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i64, i32, i32 }

@CIDXINC_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_cq*, i32)* @t4_arm_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_arm_cq(%struct.t4_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.t4_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.t4_cq* %0, %struct.t4_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %12, %2
  %7 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %8 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CIDXINC_MASK, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = call i32 @SEINTARM(i32 0)
  %14 = load i64, i64* @CIDXINC_MASK, align 8
  %15 = call i32 @CIDXINC(i64 %14)
  %16 = or i32 %13, %15
  %17 = call i32 @TIMERREG(i32 7)
  %18 = or i32 %16, %17
  %19 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %20 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @INGRESSQID(i32 %21)
  %23 = or i32 %18, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %26 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @writel(i32 %24, i32 %27)
  %29 = load i64, i64* @CIDXINC_MASK, align 8
  %30 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %31 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %6

34:                                               ; preds = %6
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @SEINTARM(i32 %35)
  %37 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %38 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @CIDXINC(i64 %39)
  %41 = or i32 %36, %40
  %42 = call i32 @TIMERREG(i32 6)
  %43 = or i32 %41, %42
  %44 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %45 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @INGRESSQID(i32 %46)
  %48 = or i32 %43, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %51 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @writel(i32 %49, i32 %52)
  %54 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %55 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  ret i32 0
}

declare dso_local i32 @SEINTARM(i32) #1

declare dso_local i32 @CIDXINC(i64) #1

declare dso_local i32 @TIMERREG(i32) #1

declare dso_local i32 @INGRESSQID(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
