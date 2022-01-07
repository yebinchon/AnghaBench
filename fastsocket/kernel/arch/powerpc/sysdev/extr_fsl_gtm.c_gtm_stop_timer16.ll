; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_gtm.c_gtm_stop_timer16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_gtm.c_gtm_stop_timer16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtm_timer = type { i32, i32, %struct.gtm* }
%struct.gtm = type { i32, %struct.gtm_timer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtm_stop_timer16(%struct.gtm_timer* %0) #0 {
  %2 = alloca %struct.gtm_timer*, align 8
  %3 = alloca %struct.gtm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.gtm_timer* %0, %struct.gtm_timer** %2, align 8
  %6 = load %struct.gtm_timer*, %struct.gtm_timer** %2, align 8
  %7 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %6, i32 0, i32 2
  %8 = load %struct.gtm*, %struct.gtm** %7, align 8
  store %struct.gtm* %8, %struct.gtm** %3, align 8
  %9 = load %struct.gtm_timer*, %struct.gtm_timer** %2, align 8
  %10 = load %struct.gtm*, %struct.gtm** %3, align 8
  %11 = getelementptr inbounds %struct.gtm, %struct.gtm* %10, i32 0, i32 1
  %12 = load %struct.gtm_timer*, %struct.gtm_timer** %11, align 8
  %13 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %12, i64 0
  %14 = ptrtoint %struct.gtm_timer* %9 to i64
  %15 = ptrtoint %struct.gtm_timer* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.gtm*, %struct.gtm** %3, align 8
  %20 = getelementptr inbounds %struct.gtm, %struct.gtm* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.gtm_timer*, %struct.gtm_timer** %2, align 8
  %24 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @GTCFR_STP(i32 %26)
  %28 = call i32 @setbits8(i32 %25, i32 %27)
  %29 = load %struct.gtm_timer*, %struct.gtm_timer** %2, align 8
  %30 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @out_be16(i32 %31, i32 65535)
  %33 = load %struct.gtm*, %struct.gtm** %3, align 8
  %34 = getelementptr inbounds %struct.gtm, %struct.gtm* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @setbits8(i32, i32) #1

declare dso_local i32 @GTCFR_STP(i32) #1

declare dso_local i32 @out_be16(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
