; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_gpio.c_gpio_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_gpio.c_gpio_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.gpiomtd = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @gpio_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_nand_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpiomtd*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = call %struct.gpiomtd* @gpio_nand_getpriv(%struct.mtd_info* %8)
  store %struct.gpiomtd* %9, %struct.gpiomtd** %7, align 8
  %10 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %11 = call i32 @gpio_nand_dosync(%struct.gpiomtd* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %3
  %17 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %18 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NAND_NCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @gpio_set_value(i32 %20, i32 %26)
  %28 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %29 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NAND_CLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @gpio_set_value(i32 %31, i32 %38)
  %40 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %41 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NAND_ALE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @gpio_set_value(i32 %43, i32 %50)
  %52 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %53 = call i32 @gpio_nand_dosync(%struct.gpiomtd* %52)
  br label %54

54:                                               ; preds = %16, %3
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @NAND_CMD_NONE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %68

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %62 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @writeb(i32 %60, i32 %64)
  %66 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %67 = call i32 @gpio_nand_dosync(%struct.gpiomtd* %66)
  br label %68

68:                                               ; preds = %59, %58
  ret void
}

declare dso_local %struct.gpiomtd* @gpio_nand_getpriv(%struct.mtd_info*) #1

declare dso_local i32 @gpio_nand_dosync(%struct.gpiomtd*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
