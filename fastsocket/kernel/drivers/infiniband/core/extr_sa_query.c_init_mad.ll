; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_init_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_init_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ib_mad_agent = type { i64 }

@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_ADM = common dso_local global i32 0, align 4
@IB_SA_CLASS_VERSION = common dso_local global i32 0, align 4
@tid_lock = common dso_local global i32 0, align 4
@tid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_sa_mad*, %struct.ib_mad_agent*)* @init_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mad(%struct.ib_sa_mad* %0, %struct.ib_mad_agent* %1) #0 {
  %3 = alloca %struct.ib_sa_mad*, align 8
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca i64, align 8
  store %struct.ib_sa_mad* %0, %struct.ib_sa_mad** %3, align 8
  store %struct.ib_mad_agent* %1, %struct.ib_mad_agent** %4, align 8
  %6 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %3, align 8
  %7 = call i32 @memset(%struct.ib_sa_mad* %6, i32 0, i32 16)
  %8 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %9 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %3, align 8
  %10 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @IB_MGMT_CLASS_SUBN_ADM, align 4
  %13 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %3, align 8
  %14 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @IB_SA_CLASS_VERSION, align 4
  %17 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %3, align 8
  %18 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @tid_lock, i64 %20)
  %22 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %23 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 32
  %27 = load i32, i32* @tid, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @tid, align 4
  %29 = or i32 %26, %27
  %30 = call i32 @cpu_to_be64(i32 %29)
  %31 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %3, align 8
  %32 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @tid_lock, i64 %34)
  ret void
}

declare dso_local i32 @memset(%struct.ib_sa_mad*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
