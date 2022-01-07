; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_alloc_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_alloc_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp_table = type { i32, i32, %struct.ipath_qp** }
%struct.ipath_qp = type { i32, %struct.ipath_qp*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_qp_table*, %struct.ipath_qp*, i32)* @ipath_alloc_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_alloc_qpn(%struct.ipath_qp_table* %0, %struct.ipath_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_qp_table*, align 8
  %5 = alloca %struct.ipath_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ipath_qp_table* %0, %struct.ipath_qp_table** %4, align 8
  store %struct.ipath_qp* %1, %struct.ipath_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @alloc_qpn(%struct.ipath_qp_table* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %52

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %18 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %4, align 8
  %21 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %4, align 8
  %25 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %4, align 8
  %30 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %29, i32 0, i32 2
  %31 = load %struct.ipath_qp**, %struct.ipath_qp*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ipath_qp*, %struct.ipath_qp** %31, i64 %33
  %35 = load %struct.ipath_qp*, %struct.ipath_qp** %34, align 8
  %36 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %37 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %36, i32 0, i32 1
  store %struct.ipath_qp* %35, %struct.ipath_qp** %37, align 8
  %38 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %39 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %4, align 8
  %40 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %39, i32 0, i32 2
  %41 = load %struct.ipath_qp**, %struct.ipath_qp*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ipath_qp*, %struct.ipath_qp** %41, i64 %43
  store %struct.ipath_qp* %38, %struct.ipath_qp** %44, align 8
  %45 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %46 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %4, align 8
  %49 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %48, i32 0, i32 1
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %15, %14
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @alloc_qpn(%struct.ipath_qp_table*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
