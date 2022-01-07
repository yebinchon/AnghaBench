; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_snoop_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_snoop_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_qp_info = type { i32, i32, %struct.ib_mad_snoop_private** }
%struct.ib_mad_snoop_private = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.ib_mad_recv_wc*)* }
%struct.ib_mad_recv_wc = type opaque
%struct.ib_mad_recv_wc.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_qp_info*, %struct.ib_mad_recv_wc.0*, i32)* @snoop_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snoop_recv(%struct.ib_mad_qp_info* %0, %struct.ib_mad_recv_wc.0* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_mad_qp_info*, align 8
  %5 = alloca %struct.ib_mad_recv_wc.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad_snoop_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mad_qp_info* %0, %struct.ib_mad_qp_info** %4, align 8
  store %struct.ib_mad_recv_wc.0* %1, %struct.ib_mad_recv_wc.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %11 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %10, i32 0, i32 1
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %61, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %17 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %14
  %21 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %22 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %21, i32 0, i32 2
  %23 = load %struct.ib_mad_snoop_private**, %struct.ib_mad_snoop_private*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %23, i64 %25
  %27 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %26, align 8
  store %struct.ib_mad_snoop_private* %27, %struct.ib_mad_snoop_private** %7, align 8
  %28 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %7, align 8
  %29 = icmp ne %struct.ib_mad_snoop_private* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %7, align 8
  %32 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %20
  br label %61

38:                                               ; preds = %30
  %39 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %7, align 8
  %40 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %39, i32 0, i32 2
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %43 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %42, i32 0, i32 1
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %7, align 8
  %47 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_2__*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_2__*, %struct.ib_mad_recv_wc*)** %48, align 8
  %50 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %7, align 8
  %51 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %50, i32 0, i32 1
  %52 = load %struct.ib_mad_recv_wc.0*, %struct.ib_mad_recv_wc.0** %5, align 8
  %53 = bitcast %struct.ib_mad_recv_wc.0* %52 to %struct.ib_mad_recv_wc*
  %54 = call i32 %49(%struct.TYPE_2__* %51, %struct.ib_mad_recv_wc* %53)
  %55 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %7, align 8
  %56 = call i32 @deref_snoop_agent(%struct.ib_mad_snoop_private* %55)
  %57 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %58 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %57, i32 0, i32 1
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %38, %37
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %14

64:                                               ; preds = %14
  %65 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %66 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %65, i32 0, i32 1
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @deref_snoop_agent(%struct.ib_mad_snoop_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
