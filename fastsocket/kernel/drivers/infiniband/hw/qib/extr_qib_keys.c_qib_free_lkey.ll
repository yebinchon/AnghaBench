; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_free_lkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_free_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_mregion = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ibdev = type { i32, %struct.qib_lkey_table }
%struct.qib_lkey_table = type { i32, i32* }

@ib_qib_lkey_table_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_free_lkey(%struct.qib_mregion* %0) #0 {
  %2 = alloca %struct.qib_mregion*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_ibdev*, align 8
  %7 = alloca %struct.qib_lkey_table*, align 8
  store %struct.qib_mregion* %0, %struct.qib_mregion** %2, align 8
  %8 = load %struct.qib_mregion*, %struct.qib_mregion** %2, align 8
  %9 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.qib_mregion*, %struct.qib_mregion** %2, align 8
  %12 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.qib_ibdev* @to_idev(i32 %15)
  store %struct.qib_ibdev* %16, %struct.qib_ibdev** %6, align 8
  %17 = load %struct.qib_ibdev*, %struct.qib_ibdev** %6, align 8
  %18 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %17, i32 0, i32 1
  store %struct.qib_lkey_table* %18, %struct.qib_lkey_table** %7, align 8
  %19 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %7, align 8
  %20 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.qib_mregion*, %struct.qib_mregion** %2, align 8
  %24 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %54

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.qib_ibdev*, %struct.qib_ibdev** %6, align 8
  %33 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rcu_assign_pointer(i32 %34, i32* null)
  br label %49

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ib_qib_lkey_table_size, align 4
  %39 = sub nsw i32 32, %38
  %40 = ashr i32 %37, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %7, align 8
  %42 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rcu_assign_pointer(i32 %47, i32* null)
  br label %49

49:                                               ; preds = %36, %31
  %50 = load %struct.qib_mregion*, %struct.qib_mregion** %2, align 8
  %51 = call i32 @qib_put_mr(%struct.qib_mregion* %50)
  %52 = load %struct.qib_mregion*, %struct.qib_mregion** %2, align 8
  %53 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %27
  %55 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %7, align 8
  %56 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %55, i32 0, i32 0
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @qib_put_mr(%struct.qib_mregion*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
