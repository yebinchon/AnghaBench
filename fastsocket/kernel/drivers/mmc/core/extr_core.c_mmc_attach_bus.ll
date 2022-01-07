; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_attach_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_attach_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i64, i32 }
%struct.mmc_bus_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_attach_bus(%struct.mmc_host* %0, %struct.mmc_bus_ops* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_bus_ops*, align 8
  %5 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_bus_ops* %1, %struct.mmc_bus_ops** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = icmp ne %struct.mmc_host* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %4, align 8
  %12 = icmp ne %struct.mmc_bus_ops* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 2
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %4, align 8
  %36 = ptrtoint %struct.mmc_bus_ops* %35 to i32
  %37 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
