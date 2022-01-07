; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_set_coalesce_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_set_coalesce_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sge_params = type { i32 }

@A_SG_INTRTIMER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_sge_set_coalesce_params(%struct.sge* %0, %struct.sge_params* %1) #0 {
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.sge_params*, align 8
  store %struct.sge* %0, %struct.sge** %3, align 8
  store %struct.sge_params* %1, %struct.sge_params** %4, align 8
  %5 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %6 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sge*, %struct.sge** %3, align 8
  %9 = getelementptr inbounds %struct.sge, %struct.sge* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @core_ticks_per_usec(%struct.TYPE_2__* %10)
  %12 = mul nsw i32 %7, %11
  %13 = load %struct.sge*, %struct.sge** %3, align 8
  %14 = getelementptr inbounds %struct.sge, %struct.sge* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sge*, %struct.sge** %3, align 8
  %16 = getelementptr inbounds %struct.sge, %struct.sge* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sge*, %struct.sge** %3, align 8
  %19 = getelementptr inbounds %struct.sge, %struct.sge* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @A_SG_INTRTIMER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %17, i64 %24)
  ret i32 0
}

declare dso_local i32 @core_ticks_per_usec(%struct.TYPE_2__*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
