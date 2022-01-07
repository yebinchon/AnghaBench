; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_hw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { i64 }

@ENTER = common dso_local global i32 0, align 4
@regCLKPLL = common dso_local global i32 0, align 4
@CLKPLL_SFTRST = common dso_local global i32 0, align 4
@CLKPLL_LKD = common dso_local global i32 0, align 4
@regRXD_CFG0_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tehuti: HW reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*)* @bdx_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_hw_reset(%struct.bdx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  %6 = load i32, i32* @ENTER, align 4
  %7 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %8 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %13 = load i32, i32* @regCLKPLL, align 4
  %14 = call i32 @READ_REG(%struct.bdx_priv* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %16 = load i32, i32* @regCLKPLL, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CLKPLL_SFTRST, align 4
  %19 = or i32 %17, %18
  %20 = add nsw i32 %19, 8
  %21 = call i32 @WRITE_REG(%struct.bdx_priv* %15, i32 %16, i32 %20)
  %22 = call i32 @udelay(i32 50)
  %23 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %24 = load i32, i32* @regCLKPLL, align 4
  %25 = call i32 @READ_REG(%struct.bdx_priv* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %27 = load i32, i32* @regCLKPLL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CLKPLL_SFTRST, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @WRITE_REG(%struct.bdx_priv* %26, i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %11, %1
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 70
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %39 = load i32, i32* @regCLKPLL, align 4
  %40 = call i32 @READ_REG(%struct.bdx_priv* %38, i32 %39)
  %41 = load i32, i32* @CLKPLL_LKD, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @CLKPLL_LKD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %47 = load i32, i32* @regRXD_CFG0_0, align 4
  %48 = call i32 @READ_REG(%struct.bdx_priv* %46, i32 %47)
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = call i32 @mdelay(i32 10)
  br label %34

54:                                               ; preds = %34
  %55 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %45
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
