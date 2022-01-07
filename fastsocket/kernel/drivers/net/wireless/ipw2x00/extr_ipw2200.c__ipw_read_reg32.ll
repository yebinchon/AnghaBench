; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c__ipw_read_reg32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c__ipw_read_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%p : reg = 0x%08x\0A\00", align 1
@IPW_INDIRECT_ADDR = common dso_local global i32 0, align 4
@IPW_INDIRECT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c" reg = 0x%4X : value = 0x%4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipw_priv* (%struct.ipw_priv*, %struct.ipw_priv*)* @_ipw_read_reg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipw_priv* @_ipw_read_reg32(%struct.ipw_priv* %0, %struct.ipw_priv* %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store %struct.ipw_priv* %1, %struct.ipw_priv** %4, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %8 = call i32 @IPW_DEBUG_IO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.ipw_priv* %6, %struct.ipw_priv* %7)
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %10 = load i32, i32* @IPW_INDIRECT_ADDR, align 4
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %12 = call i32 @_ipw_write32(%struct.ipw_priv* %9, i32 %10, %struct.ipw_priv* %11)
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %14 = load i32, i32* @IPW_INDIRECT_DATA, align 4
  %15 = call %struct.ipw_priv* @_ipw_read32(%struct.ipw_priv* %13, i32 %14)
  store %struct.ipw_priv* %15, %struct.ipw_priv** %5, align 8
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %18 = call i32 @IPW_DEBUG_IO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.ipw_priv* %16, %struct.ipw_priv* %17)
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  ret %struct.ipw_priv* %19
}

declare dso_local i32 @IPW_DEBUG_IO(i8*, %struct.ipw_priv*, %struct.ipw_priv*) #1

declare dso_local i32 @_ipw_write32(%struct.ipw_priv*, i32, %struct.ipw_priv*) #1

declare dso_local %struct.ipw_priv* @_ipw_read32(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
