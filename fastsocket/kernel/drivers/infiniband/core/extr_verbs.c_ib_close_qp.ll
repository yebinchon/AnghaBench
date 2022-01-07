; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_close_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_close_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.TYPE_2__*, i32, %struct.ib_qp* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_close_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  %6 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %7 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %6, i32 0, i32 3
  %8 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  store %struct.ib_qp* %8, %struct.ib_qp** %4, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %11 = icmp eq %struct.ib_qp* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %23 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %22, i32 0, i32 2
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %26 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %32 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %31, i32 0, i32 0
  %33 = call i32 @atomic_dec(i32* %32)
  %34 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %35 = call i32 @kfree(%struct.ib_qp* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %15, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
