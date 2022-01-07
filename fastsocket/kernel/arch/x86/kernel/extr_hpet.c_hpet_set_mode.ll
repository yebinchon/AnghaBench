; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_hpet.c_hpet_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_hpet.c_hpet_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32 }
%struct.hpet_dev = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HPET_COUNTER = common dso_local global i32 0, align 4
@HPET_TN_LEVEL = common dso_local global i64 0, align 8
@HPET_TN_ENABLE = common dso_local global i64 0, align 8
@HPET_TN_PERIODIC = common dso_local global i64 0, align 8
@HPET_TN_SETVAL = common dso_local global i64 0, align 8
@HPET_TN_32BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*, i32)* @hpet_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpet_set_mode(i32 %0, %struct.clock_event_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpet_dev*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %124 [
    i32 131, label %13
    i32 132, label %65
    i32 128, label %82
    i32 129, label %82
    i32 130, label %94
  ]

13:                                               ; preds = %3
  %14 = call i32 (...) @hpet_stop_counter()
  %15 = load i32, i32* @NSEC_PER_SEC, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = sdiv i32 %15, %16
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %19 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @HPET_COUNTER, align 4
  %28 = call i64 @hpet_readl(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @HPET_Tn_CFG(i32 %33)
  %35 = call i64 @hpet_readl(i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @HPET_TN_LEVEL, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* @HPET_TN_ENABLE, align 8
  %41 = load i64, i64* @HPET_TN_PERIODIC, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @HPET_TN_SETVAL, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @HPET_TN_32BIT, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @HPET_Tn_CFG(i32 %50)
  %52 = call i32 @hpet_writel(i64 %49, i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @HPET_Tn_CMP(i32 %54)
  %56 = call i32 @hpet_writel(i64 %53, i32 %55)
  %57 = call i32 @udelay(i32 1)
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @HPET_Tn_CMP(i32 %60)
  %62 = call i32 @hpet_writel(i64 %59, i32 %61)
  %63 = call i32 (...) @hpet_start_counter()
  %64 = call i32 (...) @hpet_print_config()
  br label %124

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @HPET_Tn_CFG(i32 %66)
  %68 = call i64 @hpet_readl(i32 %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* @HPET_TN_PERIODIC, align 8
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %7, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* @HPET_TN_ENABLE, align 8
  %74 = load i64, i64* @HPET_TN_32BIT, align 8
  %75 = or i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @HPET_Tn_CFG(i32 %79)
  %81 = call i32 @hpet_writel(i64 %78, i32 %80)
  br label %124

82:                                               ; preds = %3, %3
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @HPET_Tn_CFG(i32 %83)
  %85 = call i64 @hpet_readl(i32 %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* @HPET_TN_ENABLE, align 8
  %87 = xor i64 %86, -1
  %88 = load i64, i64* %7, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @HPET_Tn_CFG(i32 %91)
  %93 = call i32 @hpet_writel(i64 %90, i32 %92)
  br label %124

94:                                               ; preds = %3
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (...) @hpet_enable_legacy_int()
  br label %122

99:                                               ; preds = %94
  %100 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %101 = call %struct.hpet_dev* @EVT_TO_HPET_DEV(%struct.clock_event_device* %100)
  store %struct.hpet_dev* %101, %struct.hpet_dev** %11, align 8
  %102 = load %struct.hpet_dev*, %struct.hpet_dev** %11, align 8
  %103 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @hpet_setup_msi_irq(i32 %104)
  %106 = load %struct.hpet_dev*, %struct.hpet_dev** %11, align 8
  %107 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @disable_irq(i32 %108)
  %110 = load %struct.hpet_dev*, %struct.hpet_dev** %11, align 8
  %111 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hpet_dev*, %struct.hpet_dev** %11, align 8
  %114 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cpumask_of(i32 %115)
  %117 = call i32 @irq_set_affinity(i32 %112, i32 %116)
  %118 = load %struct.hpet_dev*, %struct.hpet_dev** %11, align 8
  %119 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @enable_irq(i32 %120)
  br label %122

122:                                              ; preds = %99, %97
  %123 = call i32 (...) @hpet_print_config()
  br label %124

124:                                              ; preds = %3, %122, %82, %65, %13
  ret void
}

declare dso_local i32 @hpet_stop_counter(...) #1

declare dso_local i64 @hpet_readl(i32) #1

declare dso_local i32 @HPET_Tn_CFG(i32) #1

declare dso_local i32 @hpet_writel(i64, i32) #1

declare dso_local i32 @HPET_Tn_CMP(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hpet_start_counter(...) #1

declare dso_local i32 @hpet_print_config(...) #1

declare dso_local i32 @hpet_enable_legacy_int(...) #1

declare dso_local %struct.hpet_dev* @EVT_TO_HPET_DEV(%struct.clock_event_device*) #1

declare dso_local i32 @hpet_setup_msi_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @irq_set_affinity(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
