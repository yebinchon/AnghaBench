; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_intr_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_intr_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx_dev = type { %struct.mbcs_soft* }
%struct.mbcs_soft = type { %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx_dev*)* @mbcs_intr_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbcs_intr_dealloc(%struct.cx_dev* %0) #0 {
  %2 = alloca %struct.cx_dev*, align 8
  %3 = alloca %struct.mbcs_soft*, align 8
  store %struct.cx_dev* %0, %struct.cx_dev** %2, align 8
  %4 = load %struct.cx_dev*, %struct.cx_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %4, i32 0, i32 0
  %6 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  store %struct.mbcs_soft* %6, %struct.mbcs_soft** %3, align 8
  %7 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %8 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.mbcs_soft* %12)
  %14 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %15 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @tiocx_irq_free(%struct.TYPE_2__* %16)
  %18 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %19 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.mbcs_soft* %23)
  %25 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %26 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @tiocx_irq_free(%struct.TYPE_2__* %27)
  %29 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %30 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.mbcs_soft* %34)
  %36 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %37 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @tiocx_irq_free(%struct.TYPE_2__* %38)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.mbcs_soft*) #1

declare dso_local i32 @tiocx_irq_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
