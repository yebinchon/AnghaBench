; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_wait_bus_not_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_wait_bus_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32 }

@DEF_TIMEOUT = common dso_local global i32 0, align 4
@ISR_IBB = common dso_local global i32 0, align 4
@ISR_UB = common dso_local global i32 0, align 4
@ISR_SAD = common dso_local global i32 0, align 4
@I2C_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_i2c*)* @i2c_pxa_wait_bus_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_wait_bus_not_busy(%struct.pxa_i2c* %0) #0 {
  %2 = alloca %struct.pxa_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %2, align 8
  %4 = load i32, i32* @DEF_TIMEOUT, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %11 = call i32 @_ISR(%struct.pxa_i2c* %10)
  %12 = call i32 @readl(i32 %11)
  %13 = load i32, i32* @ISR_IBB, align 4
  %14 = load i32, i32* @ISR_UB, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i1 [ false, %5 ], [ %17, %9 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %22 = call i32 @_ISR(%struct.pxa_i2c* %21)
  %23 = call i32 @readl(i32 %22)
  %24 = load i32, i32* @ISR_SAD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = call i32 @msleep(i32 2)
  %32 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %33 = call i32 @show_state(%struct.pxa_i2c* %32)
  br label %5

34:                                               ; preds = %18
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %39 = call i32 @show_state(%struct.pxa_i2c* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @I2C_RETRY, align 4
  br label %46

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  ret i32 %47
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ISR(%struct.pxa_i2c*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @show_state(%struct.pxa_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
