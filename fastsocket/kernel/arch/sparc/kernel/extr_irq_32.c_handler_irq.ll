; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_handler_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_handler_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.irqaction* }
%struct.irqaction = type { %struct.irqaction*, i32, i32 (i32, i32)* }
%struct.pt_regs = type { i32 }
%struct.TYPE_4__ = type { i32* }

@sparc_irq = common dso_local global %struct.TYPE_3__* null, align 8
@SPARC_IRQ_INPROGRESS = common dso_local global i32 0, align 4
@sparc_cpu_model = common dso_local global i64 0, align 8
@sun4m = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handler_irq(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.irqaction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %11 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %10)
  store %struct.pt_regs* %11, %struct.pt_regs** %5, align 8
  %12 = call i32 (...) @irq_enter()
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @disable_pil_irq(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_irq, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.irqaction*, %struct.irqaction** %19, align 8
  store %struct.irqaction* %20, %struct.irqaction** %6, align 8
  %21 = load i32, i32* @SPARC_IRQ_INPROGRESS, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_irq, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %21
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32* @kstat_cpu(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* %30, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %63, %2
  %40 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %41 = icmp ne %struct.irqaction* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %44 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %43, i32 0, i32 2
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = icmp ne i32 (i32, i32)* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %50 = call i32 @unexpected_irq(i32 %48, i32* null, %struct.pt_regs* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %53 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %52, i32 0, i32 2
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %57 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %54(i32 %55, i32 %58)
  %60 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %61 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %60, i32 0, i32 0
  %62 = load %struct.irqaction*, %struct.irqaction** %61, align 8
  store %struct.irqaction* %62, %struct.irqaction** %6, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %65 = icmp ne %struct.irqaction* %64, null
  br i1 %65, label %39, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @SPARC_IRQ_INPROGRESS, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_irq, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %68
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @enable_pil_irq(i32 %76)
  %78 = call i32 (...) @irq_exit()
  %79 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %80 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %79)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @disable_pil_irq(i32) #1

declare dso_local i32* @kstat_cpu(i32) #1

declare dso_local i32 @unexpected_irq(i32, i32*, %struct.pt_regs*) #1

declare dso_local i32 @enable_pil_irq(i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
