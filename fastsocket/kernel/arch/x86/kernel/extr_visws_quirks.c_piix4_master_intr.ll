; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_visws_quirks.c_piix4_master_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_visws_quirks.c_piix4_master_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32* }

@i8259A_lock = common dso_local global i32 0, align 4
@cached_irq_mask = common dso_local global i32 0, align 4
@cached_slave_mask = common dso_local global i32 0, align 4
@cached_master_mask = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @piix4_master_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_master_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @i8259A_lock, i64 %9)
  %11 = call i32 @outb(i32 12, i32 32)
  %12 = call i32 @inb(i32 32)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %103

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 2
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = call i32 @outb(i32 12, i32 160)
  %31 = call i32 @inb(i32 160)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %103

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 7
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %21
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* @cached_irq_mask, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @cached_irq_mask, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 7
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = call i32 @inb(i32 161)
  %56 = load i32, i32* @cached_slave_mask, align 4
  %57 = call i32 @outb(i32 %56, i32 161)
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 7
  %60 = add nsw i32 96, %59
  %61 = call i32 @outb(i32 %60, i32 160)
  %62 = call i32 @outb(i32 98, i32 32)
  br label %70

63:                                               ; preds = %44
  %64 = call i32 @inb(i32 33)
  %65 = load i32, i32* @cached_master_mask, align 4
  %66 = call i32 @outb(i32 %65, i32 33)
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 96, %67
  %69 = call i32 @outb(i32 %68, i32 32)
  br label %70

70:                                               ; preds = %63, %54
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* @i8259A_lock, i64 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.irq_desc* @irq_to_desc(i32 %73)
  store %struct.irq_desc* %74, %struct.irq_desc** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %77 = call i32 @kstat_incr_irqs_this_cpu(i32 %75, %struct.irq_desc* %76)
  %78 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %79 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i64 @likely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %70
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %88 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @handle_IRQ_event(i32 %86, i32* %89)
  br label %91

91:                                               ; preds = %85, %70
  %92 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %93 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IRQ_DISABLED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @enable_8259A_irq(i32 %99)
  br label %101

101:                                              ; preds = %98, %91
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; preds = %39, %20
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* @i8259A_lock, i64 %104)
  %106 = load i32, i32* @IRQ_NONE, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %101
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(i32, %struct.irq_desc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @handle_IRQ_event(i32, i32*) #1

declare dso_local i32 @enable_8259A_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
