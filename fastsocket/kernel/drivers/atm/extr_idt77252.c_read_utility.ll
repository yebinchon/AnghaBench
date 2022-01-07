; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_read_utility.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_read_utility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Error: No such device.\0A\00", align 1
@SAR_CMD_READ_UTILITY = common dso_local global i64 0, align 8
@SAR_REG_CMD = common dso_local global i32 0, align 4
@SAR_REG_DR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @read_utility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_utility(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.idt77252_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.idt77252_dev*
  store %struct.idt77252_dev* %10, %struct.idt77252_dev** %6, align 8
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %12 = icmp ne %struct.idt77252_dev* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %17 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i64, i64* @SAR_CMD_READ_UTILITY, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %20, %21
  %23 = load i32, i32* @SAR_REG_CMD, align 4
  %24 = call i32 @writel(i64 %22, i32 %23)
  %25 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %26 = call i32 @waitfor_idle(%struct.idt77252_dev* %25)
  %27 = load i32, i32* @SAR_REG_DR0, align 4
  %28 = call i32 @readl(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %15, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @waitfor_idle(%struct.idt77252_dev*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
