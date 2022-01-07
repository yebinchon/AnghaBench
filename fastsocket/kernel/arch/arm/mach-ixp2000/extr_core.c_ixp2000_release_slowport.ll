; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_release_slowport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_release_slowport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slowport_cfg = type { i32, i32, i32, i32, i32 }

@IXP2000_SLOWPORT_CCR = common dso_local global i32 0, align 4
@IXP2000_SLOWPORT_WTC2 = common dso_local global i32 0, align 4
@IXP2000_SLOWPORT_RTC2 = common dso_local global i32 0, align 4
@IXP2000_SLOWPORT_PCR = common dso_local global i32 0, align 4
@IXP2000_SLOWPORT_ADC = common dso_local global i32 0, align 4
@ixp2000_slowport_lock = common dso_local global i32 0, align 4
@ixp2000_slowport_irq_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixp2000_release_slowport(%struct.slowport_cfg* %0) #0 {
  %2 = alloca %struct.slowport_cfg*, align 8
  store %struct.slowport_cfg* %0, %struct.slowport_cfg** %2, align 8
  %3 = load i32, i32* @IXP2000_SLOWPORT_CCR, align 4
  %4 = load %struct.slowport_cfg*, %struct.slowport_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ixp2000_reg_write(i32 %3, i32 %6)
  %8 = load i32, i32* @IXP2000_SLOWPORT_WTC2, align 4
  %9 = load %struct.slowport_cfg*, %struct.slowport_cfg** %2, align 8
  %10 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ixp2000_reg_write(i32 %8, i32 %11)
  %13 = load i32, i32* @IXP2000_SLOWPORT_RTC2, align 4
  %14 = load %struct.slowport_cfg*, %struct.slowport_cfg** %2, align 8
  %15 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ixp2000_reg_write(i32 %13, i32 %16)
  %18 = load i32, i32* @IXP2000_SLOWPORT_PCR, align 4
  %19 = load %struct.slowport_cfg*, %struct.slowport_cfg** %2, align 8
  %20 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ixp2000_reg_write(i32 %18, i32 %21)
  %23 = load i32, i32* @IXP2000_SLOWPORT_ADC, align 4
  %24 = load %struct.slowport_cfg*, %struct.slowport_cfg** %2, align 8
  %25 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ixp2000_reg_wrb(i32 %23, i32 %26)
  %28 = load i32, i32* @ixp2000_slowport_irq_flags, align 4
  %29 = call i32 @spin_unlock_irqrestore(i32* @ixp2000_slowport_lock, i32 %28)
  ret void
}

declare dso_local i32 @ixp2000_reg_write(i32, i32) #1

declare dso_local i32 @ixp2000_reg_wrb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
