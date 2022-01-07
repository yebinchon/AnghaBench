; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sih_agent = type { i32, i32, i32 }
%struct.irq_desc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"twl4030: Invalid IRQ: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@sih_agent_lock = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @twl4030_sih_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_sih_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sih_agent*, align 8
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.sih_agent* @get_irq_chip_data(i32 %9)
  store %struct.sih_agent* %10, %struct.sih_agent** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.irq_desc* @irq_to_desc(i32 %11)
  store %struct.irq_desc* %12, %struct.irq_desc** %7, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %14 = icmp ne %struct.irq_desc* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %23 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %20
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* @sih_agent_lock, i64 %32)
  %34 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %35 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %31
  %42 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %45 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %50 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %55 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %53, %56
  %58 = call i32 @BIT(i32 %57)
  %59 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %60 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @wq, align 4
  %64 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %65 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %64, i32 0, i32 1
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %41, %31
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* @sih_agent_lock, i64 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %28, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.sih_agent* @get_irq_chip_data(i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
