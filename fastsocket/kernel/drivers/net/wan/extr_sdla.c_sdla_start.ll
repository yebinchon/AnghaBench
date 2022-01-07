; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.frad_local = type { i32, i32 }

@SDLA_S502A_NMI = common dso_local global i32 0, align 4
@SDLA_REG_CONTROL = common dso_local global i64 0, align 8
@SDLA_S502A_START = common dso_local global i32 0, align 4
@SDLA_S502E_CPUEN = common dso_local global i32 0, align 4
@SDLA_REG_Z80_CONTROL = common dso_local global i64 0, align 8
@SDLA_CPUEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sdla_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdla_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.frad_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.frad_local* @netdev_priv(%struct.net_device* %4)
  store %struct.frad_local* %5, %struct.frad_local** %3, align 8
  %6 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %7 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %73 [
    i32 131, label %9
    i32 130, label %27
    i32 129, label %43
    i32 128, label %58
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @SDLA_S502A_NMI, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb(i32 %10, i64 %15)
  %17 = load i32, i32* @SDLA_S502A_START, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %17, i64 %22)
  %24 = load i32, i32* @SDLA_S502A_START, align 4
  %25 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %26 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %73

27:                                               ; preds = %1
  %28 = load i32, i32* @SDLA_S502E_CPUEN, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SDLA_REG_Z80_CONTROL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 %28, i64 %33)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 0, i64 %39)
  %41 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %42 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %73

43:                                               ; preds = %1
  %44 = load i32, i32* @SDLA_CPUEN, align 4
  %45 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %46 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %50 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %51, i64 %56)
  br label %73

58:                                               ; preds = %1
  %59 = load i32, i32* @SDLA_CPUEN, align 4
  %60 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %61 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %65 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %1, %58, %43, %27, %9
  ret void
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
