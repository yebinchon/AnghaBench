; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz.c_spitz_card_pwr_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz.c_spitz_card_pwr_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@spitzscoop_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SCOOP_CPR = common dso_local global i32 0, align 4
@SPITZ_GPIO_CF_POWER = common dso_local global i32 0, align 4
@SPITZ_PWR_CF = common dso_local global i32 0, align 4
@SPITZ_PWR_SD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16)* @spitz_card_pwr_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spitz_card_pwr_ctrl(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %6 = load i32, i32* @SCOOP_CPR, align 4
  %7 = call zeroext i16 @read_scoop_reg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spitzscoop_device, i32 0, i32 0), i32 %6)
  store i16 %7, i16* %5, align 2
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load i32, i32* @SPITZ_GPIO_CF_POWER, align 4
  %14 = call i32 @gpio_set_value(i32 %13, i32 1)
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @mdelay(i32 5)
  br label %26

26:                                               ; preds = %24, %19, %12
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SPITZ_PWR_CF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %32, 2
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %5, align 2
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SPITZ_PWR_SD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i16, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %41, 4
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %5, align 2
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* @SCOOP_CPR, align 4
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* %4, align 2
  %49 = zext i16 %48 to i32
  %50 = or i32 %47, %49
  %51 = trunc i32 %50 to i16
  %52 = call i32 @write_scoop_reg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spitzscoop_device, i32 0, i32 0), i32 %45, i16 zeroext %51)
  br label %97

53:                                               ; preds = %2
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SPITZ_PWR_CF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i16, i16* %5, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, -3
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %5, align 2
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @SPITZ_PWR_SD, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i16, i16* %5, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, -5
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %5, align 2
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i16, i16* %5, align 2
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = load i16, i16* %5, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @SCOOP_CPR, align 4
  %83 = call i32 @write_scoop_reg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spitzscoop_device, i32 0, i32 0), i32 %82, i16 zeroext 0)
  %84 = call i32 @mdelay(i32 1)
  %85 = load i32, i32* @SPITZ_GPIO_CF_POWER, align 4
  %86 = call i32 @gpio_set_value(i32 %85, i32 0)
  br label %96

87:                                               ; preds = %76, %71
  %88 = load i32, i32* @SCOOP_CPR, align 4
  %89 = load i16, i16* %5, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* %4, align 2
  %92 = zext i16 %91 to i32
  %93 = or i32 %90, %92
  %94 = trunc i32 %93 to i16
  %95 = call i32 @write_scoop_reg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spitzscoop_device, i32 0, i32 0), i32 %88, i16 zeroext %94)
  br label %96

96:                                               ; preds = %87, %81
  br label %97

97:                                               ; preds = %96, %44
  ret void
}

declare dso_local zeroext i16 @read_scoop_reg(i32*, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_scoop_reg(i32*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
