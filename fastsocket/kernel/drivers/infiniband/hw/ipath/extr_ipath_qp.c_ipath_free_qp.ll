; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_free_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_free_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp_table = type { i64, i32, %struct.ipath_qp** }
%struct.ipath_qp = type { i32, %struct.ipath_qp*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp_table*, %struct.ipath_qp*)* @ipath_free_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_free_qp(%struct.ipath_qp_table* %0, %struct.ipath_qp* %1) #0 {
  %3 = alloca %struct.ipath_qp_table*, align 8
  %4 = alloca %struct.ipath_qp*, align 8
  %5 = alloca %struct.ipath_qp*, align 8
  %6 = alloca %struct.ipath_qp**, align 8
  %7 = alloca i64, align 8
  store %struct.ipath_qp_table* %0, %struct.ipath_qp_table** %3, align 8
  store %struct.ipath_qp* %1, %struct.ipath_qp** %4, align 8
  %8 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %9 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %12, i32 0, i32 2
  %14 = load %struct.ipath_qp**, %struct.ipath_qp*** %13, align 8
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %20 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = urem i64 %18, %21
  %23 = getelementptr inbounds %struct.ipath_qp*, %struct.ipath_qp** %14, i64 %22
  store %struct.ipath_qp** %23, %struct.ipath_qp*** %6, align 8
  br label %24

24:                                               ; preds = %43, %2
  %25 = load %struct.ipath_qp**, %struct.ipath_qp*** %6, align 8
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %25, align 8
  store %struct.ipath_qp* %26, %struct.ipath_qp** %5, align 8
  %27 = icmp ne %struct.ipath_qp* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %30 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %31 = icmp eq %struct.ipath_qp* %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %34 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %33, i32 0, i32 1
  %35 = load %struct.ipath_qp*, %struct.ipath_qp** %34, align 8
  %36 = load %struct.ipath_qp**, %struct.ipath_qp*** %6, align 8
  store %struct.ipath_qp* %35, %struct.ipath_qp** %36, align 8
  %37 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %38 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %37, i32 0, i32 1
  store %struct.ipath_qp* null, %struct.ipath_qp** %38, align 8
  %39 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %40 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %39, i32 0, i32 0
  %41 = call i32 @atomic_dec(i32* %40)
  br label %46

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %45 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %44, i32 0, i32 1
  store %struct.ipath_qp** %45, %struct.ipath_qp*** %6, align 8
  br label %24

46:                                               ; preds = %32, %24
  %47 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %48 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
