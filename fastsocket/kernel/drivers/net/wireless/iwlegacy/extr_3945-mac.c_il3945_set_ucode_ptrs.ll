; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_set_ucode_ptrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_set_ucode_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BSM_DRAM_INST_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_DRAM_INST_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_DRAM_INST_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Runtime uCode pointers are set.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_set_ucode_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_set_ucode_ptrs(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %14 = load i32, i32* @BSM_DRAM_INST_PTR_REG, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @il_wr_prph(%struct.il_priv* %13, i32 %14, i32 %15)
  %17 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %18 = load i32, i32* @BSM_DRAM_DATA_PTR_REG, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @il_wr_prph(%struct.il_priv* %17, i32 %18, i32 %19)
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = load i32, i32* @BSM_DRAM_DATA_BYTECOUNT_REG, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @il_wr_prph(%struct.il_priv* %21, i32 %22, i32 %26)
  %28 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %29 = load i32, i32* @BSM_DRAM_INST_BYTECOUNT_REG, align 4
  %30 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BSM_DRAM_INST_LOAD, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @il_wr_prph(%struct.il_priv* %28, i32 %29, i32 %35)
  %37 = call i32 @D_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @D_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
