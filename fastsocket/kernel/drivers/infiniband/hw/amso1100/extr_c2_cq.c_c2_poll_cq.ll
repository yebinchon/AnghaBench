; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_poll_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.c2_dev = type { i32 }
%struct.c2_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.c2_dev*, align 8
  %8 = alloca %struct.c2_cq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.c2_dev* @to_c2dev(i32 %14)
  store %struct.c2_dev* %15, %struct.c2_dev** %7, align 8
  %16 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %17 = call %struct.c2_cq* @to_c2cq(%struct.ib_cq* %16)
  store %struct.c2_cq* %17, %struct.c2_cq** %8, align 8
  %18 = load %struct.c2_cq*, %struct.c2_cq** %8, align 8
  %19 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %38, %3
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.c2_dev*, %struct.c2_dev** %7, align 8
  %28 = load %struct.c2_cq*, %struct.c2_cq** %8, align 8
  %29 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i64 %31
  %33 = call i32 @c2_poll_one(%struct.c2_dev* %27, %struct.c2_cq* %28, %struct.ib_wc* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %41

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %22

41:                                               ; preds = %36, %22
  %42 = load %struct.c2_cq*, %struct.c2_cq** %8, align 8
  %43 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %42, i32 0, i32 0
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.c2_cq* @to_c2cq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @c2_poll_one(%struct.c2_dev*, %struct.c2_cq*, %struct.ib_wc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
