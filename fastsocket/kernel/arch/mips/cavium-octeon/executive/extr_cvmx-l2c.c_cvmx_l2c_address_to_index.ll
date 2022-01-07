; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_address_to_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_address_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CVMX_L2C_IDX_ADDR_SHIFT = common dso_local global i32 0, align 4
@CVMX_L2C_CFG = common dso_local global i32 0, align 4
@CVMX_L2C_ALIAS_MASK = common dso_local global i32 0, align 4
@CVMX_L2C_TAG_ADDR_ALIAS_SHIFT = common dso_local global i32 0, align 4
@CVMX_L2C_IDX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_address_to_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_l2c_cfg, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CVMX_L2C_IDX_ADDR_SHIFT, align 4
  %7 = ashr i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @CVMX_L2C_CFG, align 4
  %9 = call i32 @cvmx_read_csr(i32 %8)
  %10 = bitcast %union.cvmx_l2c_cfg* %4 to i32*
  store i32 %9, i32* %10, align 8
  %11 = bitcast %union.cvmx_l2c_cfg* %4 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CVMX_L2C_ALIAS_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %1
  %24 = load i32, i32* @CVMX_L2C_IDX_MASK, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
