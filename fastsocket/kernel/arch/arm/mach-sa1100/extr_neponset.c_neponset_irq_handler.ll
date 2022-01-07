; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_neponset.c_neponset_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_neponset.c_neponset_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)* }

@IRR = common dso_local global i32 0, align 4
@IRR_ETHERNET = common dso_local global i32 0, align 4
@IRR_USAR = common dso_local global i32 0, align 4
@IRR_SA1111 = common dso_local global i32 0, align 4
@IRQ_NEPONSET_SMC9196 = common dso_local global i32 0, align 4
@IRQ_NEPONSET_USAR = common dso_local global i32 0, align 4
@IRQ_NEPONSET_SA1111 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @neponset_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neponset_irq_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  br label %6

6:                                                ; preds = %2, %81
  %7 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 %11(i32 %12)
  %14 = load i32, i32* @IRR, align 4
  %15 = load i32, i32* @IRR_ETHERNET, align 4
  %16 = load i32, i32* @IRR_USAR, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IRR_ETHERNET, align 4
  %21 = load i32, i32* @IRR_USAR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IRR_SA1111, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %82

28:                                               ; preds = %6
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IRR_ETHERNET, align 4
  %31 = load i32, i32* @IRR_USAR, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %28
  %36 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %37 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 %40(i32 %41)
  %43 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %44 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 %47(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @IRR_ETHERNET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i32, i32* @IRQ_NEPONSET_SMC9196, align 4
  %56 = call i32 @generic_handle_irq(i32 %55)
  br label %57

57:                                               ; preds = %54, %35
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @IRR_USAR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @IRQ_NEPONSET_USAR, align 4
  %64 = call i32 @generic_handle_irq(i32 %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %67 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 %70(i32 %71)
  br label %73

73:                                               ; preds = %65, %28
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IRR_SA1111, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @IRQ_NEPONSET_SA1111, align 4
  %80 = call i32 @generic_handle_irq(i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %6

82:                                               ; preds = %27
  ret void
}

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
