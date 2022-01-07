; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_ring_rq_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_ring_rq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*, i32)* @t4_ring_rq_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_ring_rq_db(%struct.t4_wq* %0, i32 %1) #0 {
  %3 = alloca %struct.t4_wq*, align 8
  %4 = alloca i32, align 4
  store %struct.t4_wq* %0, %struct.t4_wq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @wmb()
  %6 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %7 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @QID(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PIDX(i32 %11)
  %13 = or i32 %10, %12
  %14 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %15 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @writel(i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @QID(i32) #1

declare dso_local i32 @PIDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
