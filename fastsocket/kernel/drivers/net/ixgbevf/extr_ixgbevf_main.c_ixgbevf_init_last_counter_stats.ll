; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_init_last_counter_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_init_last_counter_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_2__, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFGPRC = common dso_local global i32 0, align 4
@IXGBE_VFGORC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGORC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFGPTC = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFMPRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_init_last_counter_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_init_last_counter_stats(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %4 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %4, i32 0, i32 1
  store %struct.ixgbe_hw* %5, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_VFGPRC, align 4
  %8 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %6, i32 %7)
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 8
  store i8* %8, i8** %11, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = load i32, i32* @IXGBE_VFGORC_LSB, align 4
  %14 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = load i32, i32* @IXGBE_VFGORC_MSB, align 4
  %21 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = shl i32 %22, 32
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = load i32, i32* @IXGBE_VFGPTC, align 4
  %31 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %30)
  %32 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i8* %31, i8** %34, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = load i32, i32* @IXGBE_VFGOTC_LSB, align 4
  %37 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = load i32, i32* @IXGBE_VFGOTC_MSB, align 4
  %44 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = shl i32 %45, 32
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = load i32, i32* @IXGBE_VFMPRC, align 4
  %54 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %52, i32 %53)
  %55 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i8* %54, i8** %57, align 8
  %58 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 8
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 9
  store i8* %61, i8** %64, align 8
  %65 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 7
  store i8* %75, i8** %78, align 8
  %79 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  store i8* %89, i8** %92, align 8
  ret void
}

declare dso_local i8* @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
