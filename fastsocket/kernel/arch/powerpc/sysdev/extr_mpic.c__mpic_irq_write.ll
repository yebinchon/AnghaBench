; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c__mpic_irq_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c__mpic_irq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32, i32, i32*, i32*, i32 }

@IRQ_STRIDE = common dso_local global i32 0, align 4
@MPIC_VECPRI_ACTIVITY = common dso_local global i32 0, align 4
@MPIC_VECPRI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpic*, i32, i32, i32)* @_mpic_irq_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mpic_irq_write(%struct.mpic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mpic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mpic*, %struct.mpic** %5, align 8
  %13 = getelementptr inbounds %struct.mpic, %struct.mpic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = lshr i32 %11, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.mpic*, %struct.mpic** %5, align 8
  %18 = getelementptr inbounds %struct.mpic, %struct.mpic* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.mpic*, %struct.mpic** %5, align 8
  %22 = getelementptr inbounds %struct.mpic, %struct.mpic* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mpic*, %struct.mpic** %5, align 8
  %25 = getelementptr inbounds %struct.mpic, %struct.mpic* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @IRQ_STRIDE, align 4
  %33 = call i32 @MPIC_INFO(i32 %32)
  %34 = mul i32 %31, %33
  %35 = add i32 %30, %34
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @_mpic_write(i32 %23, i32* %29, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @_mpic_write(i32, i32*, i32, i32) #1

declare dso_local i32 @MPIC_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
