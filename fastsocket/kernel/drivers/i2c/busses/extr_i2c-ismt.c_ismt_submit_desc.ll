; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_submit_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_submit_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_priv = type { i32, i64 }

@ISMT_DESC_ENTRIES = common dso_local global i32 0, align 4
@ISMT_MSTR_MCTRL = common dso_local global i64 0, align 8
@ISMT_MCTRL_FMHP = common dso_local global i32 0, align 4
@ISMT_MCTRL_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ismt_priv*)* @ismt_submit_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ismt_submit_desc(%struct.ismt_priv* %0) #0 {
  %2 = alloca %struct.ismt_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ismt_priv* %0, %struct.ismt_priv** %2, align 8
  %5 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %6 = call i32 @ismt_desc_dump(%struct.ismt_priv* %5)
  %7 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %8 = call i32 @ismt_gen_reg_dump(%struct.ismt_priv* %7)
  %9 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %10 = call i32 @ismt_mstr_reg_dump(%struct.ismt_priv* %9)
  %11 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* @ISMT_DESC_ENTRIES, align 4
  %16 = srem i32 %14, %15
  %17 = shl i32 %16, 16
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ISMT_MSTR_MCTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ISMT_MCTRL_FMHP, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ISMT_MSTR_MCTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %37 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ISMT_MSTR_MCTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ISMT_MCTRL_SS, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %46 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ISMT_MSTR_MCTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  ret void
}

declare dso_local i32 @ismt_desc_dump(%struct.ismt_priv*) #1

declare dso_local i32 @ismt_gen_reg_dump(%struct.ismt_priv*) #1

declare dso_local i32 @ismt_mstr_reg_dump(%struct.ismt_priv*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
