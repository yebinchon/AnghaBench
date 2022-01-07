; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_intr_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@SGE_INT_ENABLE = common dso_local global i32 0, align 4
@A_PL_ENABLE = common dso_local global i64 0, align 8
@TSO_CAPABLE = common dso_local global i32 0, align 4
@F_PACKET_TOO_BIG = common dso_local global i32 0, align 4
@A_SG_INT_ENABLE = common dso_local global i64 0, align 8
@SGE_PL_INTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_sge_intr_enable(%struct.sge* %0) #0 {
  %2 = alloca %struct.sge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %2, align 8
  %5 = load i32, i32* @SGE_INT_ENABLE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.sge*, %struct.sge** %2, align 8
  %7 = getelementptr inbounds %struct.sge, %struct.sge* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @A_PL_ENABLE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sge*, %struct.sge** %2, align 8
  %15 = getelementptr inbounds %struct.sge, %struct.sge* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TSO_CAPABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @F_PACKET_TOO_BIG, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.sge*, %struct.sge** %2, align 8
  %30 = getelementptr inbounds %struct.sge, %struct.sge* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @A_SG_INT_ENABLE, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %28, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SGE_PL_INTR_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.sge*, %struct.sge** %2, align 8
  %41 = getelementptr inbounds %struct.sge, %struct.sge* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @A_PL_ENABLE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %39, i64 %46)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
