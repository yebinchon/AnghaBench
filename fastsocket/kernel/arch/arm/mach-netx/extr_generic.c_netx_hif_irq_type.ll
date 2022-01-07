; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_generic.c_netx_hif_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_generic.c_netx_hif_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETX_DPMAS_IF_CONF1 = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rising edges\0A\00", align 1
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"falling edges\0A\00", align 1
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"low level\0A\00", align 1
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"high level\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @netx_hif_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netx_hif_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @NETX_DPMAS_IF_CONF1, align 4
  %8 = call i32 @readl(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @NETX_IRQ_HIF_CHAINED(i32 0)
  %11 = sub i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = call i32 @DEBUG_IRQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 67108864, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = call i32 @DEBUG_IRQ(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 67108864, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = call i32 @DEBUG_IRQ(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 67108864, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = call i32 @DEBUG_IRQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 67108864, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NETX_DPMAS_IF_CONF1, align 4
  %60 = call i32 @writel(i32 %58, i32 %59)
  ret i32 0
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @NETX_IRQ_HIF_CHAINED(i32) #1

declare dso_local i32 @DEBUG_IRQ(i8*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
