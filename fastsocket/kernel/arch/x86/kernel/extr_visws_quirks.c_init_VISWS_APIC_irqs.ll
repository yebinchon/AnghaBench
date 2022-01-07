; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_visws_quirks.c_init_VISWS_APIC_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_visws_quirks.c_init_VISWS_APIC_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32*, i64, i32 }

@CO_IRQ_APIC0 = common dso_local global i32 0, align 4
@CO_APIC_LAST = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@cobalt_irq_type = common dso_local global i32 0, align 4
@CO_IRQ_IDE0 = common dso_local global i32 0, align 4
@CO_IRQ_IDE1 = common dso_local global i32 0, align 4
@CO_IRQ_8259 = common dso_local global i32 0, align 4
@piix4_master_irq_type = common dso_local global i32 0, align 4
@piix4_virtual_irq_type = common dso_local global i32 0, align 4
@master_action = common dso_local global i32 0, align 4
@cascade_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_VISWS_APIC_irqs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.irq_desc*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %66, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @CO_IRQ_APIC0, align 4
  %6 = load i32, i32* @CO_APIC_LAST, align 4
  %7 = add nsw i32 %5, %6
  %8 = add nsw i32 %7, 1
  %9 = icmp slt i32 %4, %8
  br i1 %9, label %10, label %69

10:                                               ; preds = %3
  %11 = load i32, i32* %1, align 4
  %12 = call %struct.irq_desc* @irq_to_desc(i32 %11)
  store %struct.irq_desc* %12, %struct.irq_desc** %2, align 8
  %13 = load i32, i32* @IRQ_DISABLED, align 4
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 1
  store i32* @cobalt_irq_type, i32** %24, align 8
  br label %65

25:                                               ; preds = %10
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @CO_IRQ_IDE0, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %31 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %30, i32 0, i32 1
  store i32* @cobalt_irq_type, i32** %31, align 8
  br label %64

32:                                               ; preds = %25
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @CO_IRQ_IDE1, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 1
  store i32* @cobalt_irq_type, i32** %38, align 8
  br label %63

39:                                               ; preds = %32
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @CO_IRQ_8259, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %45 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %44, i32 0, i32 1
  store i32* @piix4_master_irq_type, i32** %45, align 8
  br label %62

46:                                               ; preds = %39
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @CO_IRQ_APIC0, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %52 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %51, i32 0, i32 1
  store i32* @piix4_virtual_irq_type, i32** %52, align 8
  br label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %1, align 4
  %55 = call i64 @IS_CO_APIC(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %59 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %58, i32 0, i32 1
  store i32* @cobalt_irq_type, i32** %59, align 8
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %36
  br label %64

64:                                               ; preds = %63, %29
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %3

69:                                               ; preds = %3
  %70 = load i32, i32* @CO_IRQ_8259, align 4
  %71 = call i32 @setup_irq(i32 %70, i32* @master_action)
  %72 = call i32 @setup_irq(i32 2, i32* @cascade_action)
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @IS_CO_APIC(i32) #1

declare dso_local i32 @setup_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
