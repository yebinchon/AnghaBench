; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_lookup_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_lookup_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i32, %struct.TYPE_2__, %struct.ipath_qp* }
%struct.TYPE_2__ = type { i64 }
%struct.ipath_qp_table = type { i64, i32, %struct.ipath_qp** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipath_qp* @ipath_lookup_qpn(%struct.ipath_qp_table* %0, i64 %1) #0 {
  %3 = alloca %struct.ipath_qp_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipath_qp*, align 8
  store %struct.ipath_qp_table* %0, %struct.ipath_qp_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %8 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %11, i32 0, i32 2
  %13 = load %struct.ipath_qp**, %struct.ipath_qp*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = urem i64 %14, %17
  %19 = getelementptr inbounds %struct.ipath_qp*, %struct.ipath_qp** %13, i64 %18
  %20 = load %struct.ipath_qp*, %struct.ipath_qp** %19, align 8
  store %struct.ipath_qp* %20, %struct.ipath_qp** %6, align 8
  br label %21

21:                                               ; preds = %36, %2
  %22 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %23 = icmp ne %struct.ipath_qp* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %26 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %33 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %32, i32 0, i32 0
  %34 = call i32 @atomic_inc(i32* %33)
  br label %40

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %38 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %37, i32 0, i32 2
  %39 = load %struct.ipath_qp*, %struct.ipath_qp** %38, align 8
  store %struct.ipath_qp* %39, %struct.ipath_qp** %6, align 8
  br label %21

40:                                               ; preds = %31, %21
  %41 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %42 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %41, i32 0, i32 1
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  ret %struct.ipath_qp* %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
