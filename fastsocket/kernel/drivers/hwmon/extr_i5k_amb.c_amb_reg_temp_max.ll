; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_i5k_amb.c_amb_reg_temp_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_i5k_amb.c_amb_reg_temp_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMB_FUNC_3_OFFSET = common dso_local global i64 0, align 8
@AMB_REG_TEMP_MAX_ADDR = common dso_local global i64 0, align 8
@AMB_CONFIG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @amb_reg_temp_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amb_reg_temp_max(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @AMB_FUNC_3_OFFSET, align 8
  %4 = load i64, i64* @AMB_REG_TEMP_MAX_ADDR, align 8
  %5 = add i64 %3, %4
  %6 = load i32, i32* @AMB_CONFIG_SIZE, align 4
  %7 = load i32, i32* %2, align 4
  %8 = mul i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = add i64 %5, %9
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
