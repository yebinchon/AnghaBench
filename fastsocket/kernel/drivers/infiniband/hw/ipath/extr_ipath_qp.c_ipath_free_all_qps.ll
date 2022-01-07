; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_free_all_qps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_free_all_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp_table = type { i64, %struct.TYPE_2__*, i32, %struct.ipath_qp** }
%struct.TYPE_2__ = type { i64 }
%struct.ipath_qp = type { %struct.ipath_qp* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_free_all_qps(%struct.ipath_qp_table* %0) #0 {
  %2 = alloca %struct.ipath_qp_table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipath_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ipath_qp_table* %0, %struct.ipath_qp_table** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %8 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %7, i32 0, i32 2
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %19 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %18, i32 0, i32 3
  %20 = load %struct.ipath_qp**, %struct.ipath_qp*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.ipath_qp*, %struct.ipath_qp** %20, i64 %21
  %23 = load %struct.ipath_qp*, %struct.ipath_qp** %22, align 8
  store %struct.ipath_qp* %23, %struct.ipath_qp** %4, align 8
  %24 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %24, i32 0, i32 3
  %26 = load %struct.ipath_qp**, %struct.ipath_qp*** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.ipath_qp*, %struct.ipath_qp** %26, i64 %27
  store %struct.ipath_qp* null, %struct.ipath_qp** %28, align 8
  br label %29

29:                                               ; preds = %35, %17
  %30 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %31 = icmp ne %struct.ipath_qp* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %37 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %36, i32 0, i32 0
  %38 = load %struct.ipath_qp*, %struct.ipath_qp** %37, align 8
  store %struct.ipath_qp* %38, %struct.ipath_qp** %4, align 8
  br label %29

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %45 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %44, i32 0, i32 2
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %74, %43
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %51 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i64 @ARRAY_SIZE(%struct.TYPE_2__* %52)
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %48
  %56 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %57 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %2, align 8
  %66 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @free_page(i64 %71)
  br label %73

73:                                               ; preds = %64, %55
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %48

77:                                               ; preds = %48
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
