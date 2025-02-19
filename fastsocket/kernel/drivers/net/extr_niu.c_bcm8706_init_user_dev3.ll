; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_bcm8706_init_user_dev3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_bcm8706_init_user_dev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@BCM8704_USER_DEV3_ADDR = common dso_local global i32 0, align 4
@BCM8704_USER_OPT_DIGITAL_CTRL = common dso_local global i32 0, align 4
@USER_ODIG_CTRL_GPIOS = common dso_local global i32 0, align 4
@USER_ODIG_CTRL_GPIOS_SHIFT = common dso_local global i32 0, align 4
@USER_ODIG_CTRL_RESV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @bcm8706_init_user_dev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm8706_init_user_dev3(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %5 = load %struct.niu*, %struct.niu** %3, align 8
  %6 = load %struct.niu*, %struct.niu** %3, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %10 = load i32, i32* @BCM8704_USER_OPT_DIGITAL_CTRL, align 4
  %11 = call i32 @mdio_read(%struct.niu* %5, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load i32, i32* @USER_ODIG_CTRL_GPIOS, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @USER_ODIG_CTRL_GPIOS_SHIFT, align 4
  %22 = shl i32 3, %21
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @USER_ODIG_CTRL_RESV2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.niu*, %struct.niu** %3, align 8
  %29 = load %struct.niu*, %struct.niu** %3, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %33 = load i32, i32* @BCM8704_USER_OPT_DIGITAL_CTRL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mdio_write(%struct.niu* %28, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %16
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %16
  %41 = call i32 @mdelay(i32 1000)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.niu*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
