; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_irq.c_nuc900_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_irq.c_nuc900_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_irq = type { i32 }

@REG_AIC_MECR = common dso_local global i32 0, align 4
@group_nirq0 = common dso_local global %struct.group_irq zeroinitializer, align 4
@group_nirq1 = common dso_local global %struct.group_irq zeroinitializer, align 4
@group_usbh = common dso_local global %struct.group_irq zeroinitializer, align 4
@group_ottimer = common dso_local global %struct.group_irq zeroinitializer, align 4
@group_gdma = common dso_local global %struct.group_irq zeroinitializer, align 4
@group_sc = common dso_local global %struct.group_irq zeroinitializer, align 4
@group_i2c = common dso_local global %struct.group_irq zeroinitializer, align 4
@group_ps2 = common dso_local global %struct.group_irq zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nuc900_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuc900_irq_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.group_irq*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.group_irq* null, %struct.group_irq** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = shl i32 1, %4
  %6 = load i32, i32* @REG_AIC_MECR, align 4
  %7 = call i32 @__raw_writel(i32 %5, i32 %6)
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %17 [
    i32 134, label %9
    i32 133, label %10
    i32 128, label %11
    i32 129, label %12
    i32 135, label %13
    i32 130, label %14
    i32 132, label %15
    i32 131, label %16
  ]

9:                                                ; preds = %1
  store %struct.group_irq* @group_nirq0, %struct.group_irq** %3, align 8
  br label %17

10:                                               ; preds = %1
  store %struct.group_irq* @group_nirq1, %struct.group_irq** %3, align 8
  br label %17

11:                                               ; preds = %1
  store %struct.group_irq* @group_usbh, %struct.group_irq** %3, align 8
  br label %17

12:                                               ; preds = %1
  store %struct.group_irq* @group_ottimer, %struct.group_irq** %3, align 8
  br label %17

13:                                               ; preds = %1
  store %struct.group_irq* @group_gdma, %struct.group_irq** %3, align 8
  br label %17

14:                                               ; preds = %1
  store %struct.group_irq* @group_sc, %struct.group_irq** %3, align 8
  br label %17

15:                                               ; preds = %1
  store %struct.group_irq* @group_i2c, %struct.group_irq** %3, align 8
  br label %17

16:                                               ; preds = %1
  store %struct.group_irq* @group_ps2, %struct.group_irq** %3, align 8
  br label %17

17:                                               ; preds = %1, %16, %15, %14, %13, %12, %11, %10, %9
  %18 = load %struct.group_irq*, %struct.group_irq** %3, align 8
  %19 = icmp ne %struct.group_irq* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.group_irq*, %struct.group_irq** %3, align 8
  %22 = call i32 @group_irq_enable(%struct.group_irq* %21)
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @group_irq_enable(%struct.group_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
