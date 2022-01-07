; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Resetting I2C Controller Unit\0A\00", align 1
@ICR_UR = common dso_local global i32 0, align 4
@I2C_ISR_INIT = common dso_local global i32 0, align 4
@I2C_ICR_INIT = common dso_local global i32 0, align 4
@ICR_FM = common dso_local global i32 0, align 4
@ICR_IUE = common dso_local global i32 0, align 4
@ICR_ALDIE = common dso_local global i32 0, align 4
@ICR_SADIE = common dso_local global i32 0, align 4
@ICR_SSDIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_i2c*)* @i2c_pxa_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pxa_reset(%struct.pxa_i2c* %0) #0 {
  %2 = alloca %struct.pxa_i2c*, align 8
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %2, align 8
  %3 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %5 = call i32 @i2c_pxa_abort(%struct.pxa_i2c* %4)
  %6 = load i32, i32* @ICR_UR, align 4
  %7 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %8 = call i32 @_ICR(%struct.pxa_i2c* %7)
  %9 = call i32 @writel(i32 %6, i32 %8)
  %10 = load i32, i32* @I2C_ISR_INIT, align 4
  %11 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %12 = call i32 @_ISR(%struct.pxa_i2c* %11)
  %13 = call i32 @writel(i32 %10, i32 %12)
  %14 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %15 = call i32 @_ICR(%struct.pxa_i2c* %14)
  %16 = call i32 @readl(i32 %15)
  %17 = load i32, i32* @ICR_UR, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %21 = call i32 @_ICR(%struct.pxa_i2c* %20)
  %22 = call i32 @writel(i32 %19, i32 %21)
  %23 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %24 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %27 = call i32 @_ISAR(%struct.pxa_i2c* %26)
  %28 = call i32 @writel(i32 %25, i32 %27)
  %29 = load i32, i32* @I2C_ICR_INIT, align 4
  %30 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %31 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @ICR_FM, align 4
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %29, %38
  %40 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %41 = call i32 @_ICR(%struct.pxa_i2c* %40)
  %42 = call i32 @writel(i32 %39, i32 %41)
  %43 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %44 = call i32 @i2c_pxa_set_slave(%struct.pxa_i2c* %43, i32 0)
  %45 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %46 = call i32 @_ICR(%struct.pxa_i2c* %45)
  %47 = call i32 @readl(i32 %46)
  %48 = load i32, i32* @ICR_IUE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %51 = call i32 @_ICR(%struct.pxa_i2c* %50)
  %52 = call i32 @writel(i32 %49, i32 %51)
  %53 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @i2c_pxa_abort(%struct.pxa_i2c*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

declare dso_local i32 @_ISR(%struct.pxa_i2c*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ISAR(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_set_slave(%struct.pxa_i2c*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
