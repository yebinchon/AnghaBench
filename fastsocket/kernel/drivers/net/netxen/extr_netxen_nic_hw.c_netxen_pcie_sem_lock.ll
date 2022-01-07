; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_pcie_sem_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_pcie_sem_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@NETXEN_PCIE_SEM_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_pcie_sem_lock(%struct.netxen_adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @PCIE_SEM_LOCK(i32 %16)
  %18 = call i32 @NETXEN_PCIE_REG(i32 %17)
  %19 = call i32 @NXRD32(%struct.netxen_adapter* %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %33

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @NETXEN_PCIE_SEM_TIMEOUT, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %23
  %32 = call i32 @msleep(i32 1)
  br label %10

33:                                               ; preds = %22, %10
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NXWR32(%struct.netxen_adapter* %37, i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %33
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NETXEN_PCIE_REG(i32) #1

declare dso_local i32 @PCIE_SEM_LOCK(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
