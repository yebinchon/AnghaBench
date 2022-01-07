; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_register_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_register_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_hardware_context = type { i32*, i32*, i32* }

@qlcnic_83xx_hw_ops = common dso_local global i32 0, align 4
@qlcnic_83xx_reg_tbl = common dso_local global i64 0, align 8
@qlcnic_83xx_ext_reg_tbl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_register_map(%struct.qlcnic_hardware_context* %0) #0 {
  %2 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_hardware_context* %0, %struct.qlcnic_hardware_context** %2, align 8
  %3 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %2, align 8
  %4 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %3, i32 0, i32 2
  store i32* @qlcnic_83xx_hw_ops, i32** %4, align 8
  %5 = load i64, i64* @qlcnic_83xx_reg_tbl, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %7, i32 0, i32 1
  store i32* %6, i32** %8, align 8
  %9 = load i64, i64* @qlcnic_83xx_ext_reg_tbl, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %2, align 8
  %12 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
