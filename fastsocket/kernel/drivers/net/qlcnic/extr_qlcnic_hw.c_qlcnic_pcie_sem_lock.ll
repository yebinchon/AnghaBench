; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_pcie_sem_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_pcie_sem_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_PCIE_SEM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to acquire sem=%d lock; holdby=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_pcie_sem_lock(%struct.qlcnic_adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @PCIE_SEM_LOCK(i32 %16)
  %18 = call i64 @QLCNIC_PCIE_REG(i32 %17)
  %19 = call i32 @QLCRD32(%struct.qlcnic_adapter* %15, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %48

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @QLCNIC_PCIE_SEM_TIMEOUT, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @QLCRD32(%struct.qlcnic_adapter* %37, i64 %38)
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ -1, %40 ]
  %43 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %23
  %47 = call i32 @msleep(i32 1)
  br label %10

48:                                               ; preds = %22, %10
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @QLCWR32(%struct.qlcnic_adapter* %52, i64 %53, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i64) #1

declare dso_local i64 @QLCNIC_PCIE_REG(i32) #1

declare dso_local i32 @PCIE_SEM_LOCK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
