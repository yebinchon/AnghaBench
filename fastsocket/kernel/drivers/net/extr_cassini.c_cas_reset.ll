; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32*, i64 }

@REG_TX_CFG = common dso_local global i64 0, align 8
@TX_CFG_DMA_EN = common dso_local global i32 0, align 4
@REG_RX_CFG = common dso_local global i64 0, align 8
@RX_CFG_DMA_EN = common dso_local global i32 0, align 4
@CAS_FLAG_TARGET_ABORT = common dso_local global i32 0, align 4
@CAS_HP_ALT_FIRMWARE = common dso_local global i64 0, align 8
@cas_prog_null = common dso_local global i64 0, align 8
@CAS_HP_FIRMWARE = common dso_local global i64 0, align 8
@N_TX_RINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32)* @cas_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_reset(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cas*, %struct.cas** %3, align 8
  %7 = call i32 @cas_mask_intr(%struct.cas* %6)
  %8 = load %struct.cas*, %struct.cas** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cas_global_reset(%struct.cas* %8, i32 %9)
  %11 = load %struct.cas*, %struct.cas** %3, align 8
  %12 = call i32 @cas_mac_reset(%struct.cas* %11)
  %13 = load %struct.cas*, %struct.cas** %3, align 8
  %14 = call i32 @cas_entropy_reset(%struct.cas* %13)
  %15 = load %struct.cas*, %struct.cas** %3, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_TX_CFG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @TX_CFG_DMA_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.cas*, %struct.cas** %3, align 8
  %27 = getelementptr inbounds %struct.cas, %struct.cas* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REG_TX_CFG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.cas*, %struct.cas** %3, align 8
  %33 = getelementptr inbounds %struct.cas, %struct.cas* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_RX_CFG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @RX_CFG_DMA_EN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.cas*, %struct.cas** %3, align 8
  %44 = getelementptr inbounds %struct.cas, %struct.cas* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @REG_RX_CFG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.cas*, %struct.cas** %3, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CAS_FLAG_TARGET_ABORT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %2
  %56 = load i64, i64* @CAS_HP_ALT_FIRMWARE, align 8
  %57 = load i64, i64* @cas_prog_null, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %2
  %60 = load %struct.cas*, %struct.cas** %3, align 8
  %61 = load i64, i64* @CAS_HP_FIRMWARE, align 8
  %62 = call i32 @cas_load_firmware(%struct.cas* %60, i64 %61)
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.cas*, %struct.cas** %3, align 8
  %65 = load i64, i64* @CAS_HP_ALT_FIRMWARE, align 8
  %66 = call i32 @cas_load_firmware(%struct.cas* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.cas*, %struct.cas** %3, align 8
  %69 = getelementptr inbounds %struct.cas, %struct.cas* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @N_TX_RINGS, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.cas*, %struct.cas** %3, align 8
  %75 = call i32 @cas_clear_mac_err(%struct.cas* %74)
  %76 = load %struct.cas*, %struct.cas** %3, align 8
  %77 = getelementptr inbounds %struct.cas, %struct.cas* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @N_TX_RINGS, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i32 @spin_unlock(i32* %80)
  ret void
}

declare dso_local i32 @cas_mask_intr(%struct.cas*) #1

declare dso_local i32 @cas_global_reset(%struct.cas*, i32) #1

declare dso_local i32 @cas_mac_reset(%struct.cas*) #1

declare dso_local i32 @cas_entropy_reset(%struct.cas*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cas_load_firmware(%struct.cas*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cas_clear_mac_err(%struct.cas*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
