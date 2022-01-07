; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_cq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_cq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_cq = type { i32 }
%struct.c2_dev = type { i32, %struct.c2_cq** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c2_cq* (%struct.c2_dev*, i32)* @c2_cq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c2_cq* @c2_cq_get(%struct.c2_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.c2_cq*, align 8
  %4 = alloca %struct.c2_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_cq*, align 8
  %7 = alloca i64, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %9 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %13 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %12, i32 0, i32 1
  %14 = load %struct.c2_cq**, %struct.c2_cq*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.c2_cq*, %struct.c2_cq** %14, i64 %16
  %18 = load %struct.c2_cq*, %struct.c2_cq** %17, align 8
  store %struct.c2_cq* %18, %struct.c2_cq** %6, align 8
  %19 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %20 = icmp ne %struct.c2_cq* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %23 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  store %struct.c2_cq* null, %struct.c2_cq** %3, align 8
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %28 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %31 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  store %struct.c2_cq* %34, %struct.c2_cq** %3, align 8
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.c2_cq*, %struct.c2_cq** %3, align 8
  ret %struct.c2_cq* %36
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
