; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32 }

@QL_PHY_GIO_SEM_MASK = common dso_local global i32 0, align 4
@QL_RESOURCE_BITS_BASE_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_get_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_speed(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %6 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %11 = load i32, i32* @QL_PHY_GIO_SEM_MASK, align 4
  %12 = load i32, i32* @QL_RESOURCE_BITS_BASE_CODE, align 4
  %13 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = or i32 %12, %16
  %18 = shl i32 %17, 7
  %19 = call i64 @ql_sem_spinlock(%struct.ql3_adapter* %10, i32 %11, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  store i32 0, i32* %2, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %28 = call i32 @ql_get_link_speed(%struct.ql3_adapter* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %30 = load i32, i32* @QL_PHY_GIO_SEM_MASK, align 4
  %31 = call i32 @ql_sem_unlock(%struct.ql3_adapter* %29, i32 %30)
  %32 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %32, i32 0, i32 1
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %26, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ql_sem_spinlock(%struct.ql3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_get_link_speed(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql3_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
