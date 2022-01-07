; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c_spu_free_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c_spu_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i64* }

@NO_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu*)* @spu_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_free_irqs(%struct.spu* %0) #0 {
  %2 = alloca %struct.spu*, align 8
  store %struct.spu* %0, %struct.spu** %2, align 8
  %3 = load %struct.spu*, %struct.spu** %2, align 8
  %4 = getelementptr inbounds %struct.spu, %struct.spu* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NO_IRQ, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.spu*, %struct.spu** %2, align 8
  %12 = getelementptr inbounds %struct.spu, %struct.spu* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.spu*, %struct.spu** %2, align 8
  %17 = call i32 @free_irq(i64 %15, %struct.spu* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.spu*, %struct.spu** %2, align 8
  %20 = getelementptr inbounds %struct.spu, %struct.spu* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NO_IRQ, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.spu*, %struct.spu** %2, align 8
  %28 = getelementptr inbounds %struct.spu, %struct.spu* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.spu*, %struct.spu** %2, align 8
  %33 = call i32 @free_irq(i64 %31, %struct.spu* %32)
  br label %34

34:                                               ; preds = %26, %18
  %35 = load %struct.spu*, %struct.spu** %2, align 8
  %36 = getelementptr inbounds %struct.spu, %struct.spu* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NO_IRQ, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.spu*, %struct.spu** %2, align 8
  %44 = getelementptr inbounds %struct.spu, %struct.spu* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.spu*, %struct.spu** %2, align 8
  %49 = call i32 @free_irq(i64 %47, %struct.spu* %48)
  br label %50

50:                                               ; preds = %42, %34
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
