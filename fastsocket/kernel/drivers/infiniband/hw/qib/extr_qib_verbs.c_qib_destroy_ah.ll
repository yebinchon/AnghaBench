; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_destroy_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_destroy_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.qib_ibdev = type { i32, i32 }
%struct.qib_ah = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ah*)* @qib_destroy_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_destroy_ah(%struct.ib_ah* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.qib_ibdev*, align 8
  %5 = alloca %struct.qib_ah*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  %7 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %8 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.qib_ibdev* @to_idev(i32 %9)
  store %struct.qib_ibdev* %10, %struct.qib_ibdev** %4, align 8
  %11 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %12 = call %struct.qib_ah* @to_iah(%struct.ib_ah* %11)
  store %struct.qib_ah* %12, %struct.qib_ah** %5, align 8
  %13 = load %struct.qib_ah*, %struct.qib_ah** %5, align 8
  %14 = getelementptr inbounds %struct.qib_ah, %struct.qib_ah* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %22 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %26 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %30 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.qib_ah*, %struct.qib_ah** %5, align 8
  %34 = call i32 @kfree(%struct.qib_ah* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %20, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local %struct.qib_ah* @to_iah(%struct.ib_ah*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.qib_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
