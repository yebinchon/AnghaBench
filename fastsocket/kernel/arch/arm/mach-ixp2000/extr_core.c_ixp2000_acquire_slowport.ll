; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_acquire_slowport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_acquire_slowport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slowport_cfg = type { i32, i8*, i8*, i8*, i8* }

@ixp2000_slowport_lock = common dso_local global i32 0, align 4
@ixp2000_slowport_irq_flags = common dso_local global i32 0, align 4
@IXP2000_SLOWPORT_CCR = common dso_local global i8** null, align 8
@IXP2000_SLOWPORT_WTC2 = common dso_local global i8** null, align 8
@IXP2000_SLOWPORT_RTC2 = common dso_local global i8** null, align 8
@IXP2000_SLOWPORT_PCR = common dso_local global i8** null, align 8
@IXP2000_SLOWPORT_ADC = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixp2000_acquire_slowport(%struct.slowport_cfg* %0, %struct.slowport_cfg* %1) #0 {
  %3 = alloca %struct.slowport_cfg*, align 8
  %4 = alloca %struct.slowport_cfg*, align 8
  store %struct.slowport_cfg* %0, %struct.slowport_cfg** %3, align 8
  store %struct.slowport_cfg* %1, %struct.slowport_cfg** %4, align 8
  %5 = load i32, i32* @ixp2000_slowport_irq_flags, align 4
  %6 = call i32 @spin_lock_irqsave(i32* @ixp2000_slowport_lock, i32 %5)
  %7 = load i8**, i8*** @IXP2000_SLOWPORT_CCR, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.slowport_cfg*, %struct.slowport_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %9, i32 0, i32 4
  store i8* %8, i8** %10, align 8
  %11 = load i8**, i8*** @IXP2000_SLOWPORT_WTC2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.slowport_cfg*, %struct.slowport_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i8**, i8*** @IXP2000_SLOWPORT_RTC2, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.slowport_cfg*, %struct.slowport_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i8**, i8*** @IXP2000_SLOWPORT_PCR, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.slowport_cfg*, %struct.slowport_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** @IXP2000_SLOWPORT_ADC, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.slowport_cfg*, %struct.slowport_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i8**, i8*** @IXP2000_SLOWPORT_CCR, align 8
  %28 = load %struct.slowport_cfg*, %struct.slowport_cfg** %3, align 8
  %29 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @ixp2000_reg_write(i8** %27, i8* %30)
  %32 = load i8**, i8*** @IXP2000_SLOWPORT_WTC2, align 8
  %33 = load %struct.slowport_cfg*, %struct.slowport_cfg** %3, align 8
  %34 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @ixp2000_reg_write(i8** %32, i8* %35)
  %37 = load i8**, i8*** @IXP2000_SLOWPORT_RTC2, align 8
  %38 = load %struct.slowport_cfg*, %struct.slowport_cfg** %3, align 8
  %39 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @ixp2000_reg_write(i8** %37, i8* %40)
  %42 = load i8**, i8*** @IXP2000_SLOWPORT_PCR, align 8
  %43 = load %struct.slowport_cfg*, %struct.slowport_cfg** %3, align 8
  %44 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @ixp2000_reg_write(i8** %42, i8* %45)
  %47 = load i32*, i32** @IXP2000_SLOWPORT_ADC, align 8
  %48 = load %struct.slowport_cfg*, %struct.slowport_cfg** %3, align 8
  %49 = getelementptr inbounds %struct.slowport_cfg, %struct.slowport_cfg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ixp2000_reg_wrb(i32* %47, i32 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @ixp2000_reg_write(i8**, i8*) #1

declare dso_local i32 @ixp2000_reg_wrb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
