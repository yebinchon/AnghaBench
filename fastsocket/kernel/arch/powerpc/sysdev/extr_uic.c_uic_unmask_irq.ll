; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_uic.c_uic_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_uic.c_uic_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.uic = type { i32, i64 }

@IRQ_LEVEL = common dso_local global i32 0, align 4
@UIC_SR = common dso_local global i64 0, align 8
@UIC_ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @uic_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uic_unmask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.uic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.irq_desc* @get_irq_desc(i32 %9)
  store %struct.irq_desc* %10, %struct.irq_desc** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.uic* @get_irq_chip_data(i32 %11)
  store %struct.uic* %12, %struct.uic** %4, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @uic_irq_to_hw(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub i32 31, %15
  %17 = shl i32 1, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.uic*, %struct.uic** %4, align 8
  %19 = getelementptr inbounds %struct.uic, %struct.uic* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IRQ_LEVEL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.uic*, %struct.uic** %4, align 8
  %30 = getelementptr inbounds %struct.uic, %struct.uic* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UIC_SR, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mtdcr(i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %1
  %37 = load %struct.uic*, %struct.uic** %4, align 8
  %38 = getelementptr inbounds %struct.uic, %struct.uic* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UIC_ER, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @mfdcr(i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.uic*, %struct.uic** %4, align 8
  %47 = getelementptr inbounds %struct.uic, %struct.uic* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UIC_ER, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mtdcr(i64 %50, i32 %51)
  %53 = load %struct.uic*, %struct.uic** %4, align 8
  %54 = getelementptr inbounds %struct.uic, %struct.uic* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local %struct.irq_desc* @get_irq_desc(i32) #1

declare dso_local %struct.uic* @get_irq_chip_data(i32) #1

declare dso_local i32 @uic_irq_to_hw(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtdcr(i64, i32) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
