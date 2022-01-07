; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_intr_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@PL_WHOAMI = common dso_local global i32 0, align 4
@SGE_INT_ENABLE3 = common dso_local global i32 0, align 4
@ERR_CPL_EXCEED_IQE_SIZE = common dso_local global i32 0, align 4
@ERR_INVALID_CIDX_INC = common dso_local global i32 0, align 4
@ERR_CPL_OPCODE_0 = common dso_local global i32 0, align 4
@ERR_DROPPED_DB = common dso_local global i32 0, align 4
@ERR_DATA_CPL_ON_HIGH_QID1 = common dso_local global i32 0, align 4
@ERR_DATA_CPL_ON_HIGH_QID0 = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX3 = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX2 = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX1 = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX0 = common dso_local global i32 0, align 4
@ERR_ING_CTXT_PRIO = common dso_local global i32 0, align 4
@ERR_EGR_CTXT_PRIO = common dso_local global i32 0, align 4
@INGRESS_SIZE_ERR = common dso_local global i32 0, align 4
@F_DBFIFO_HP_INT = common dso_local global i32 0, align 4
@F_DBFIFO_LP_INT = common dso_local global i32 0, align 4
@EGRESS_SIZE_ERR = common dso_local global i32 0, align 4
@PL_PF_INT_ENABLE = common dso_local global i32 0, align 4
@PF_INTR_MASK = common dso_local global i32 0, align 4
@PL_INT_MAP0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_intr_enable(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = load i32, i32* @PL_WHOAMI, align 4
  %6 = call i32 @t4_read_reg(%struct.adapter* %4, i32 %5)
  %7 = call i32 @SOURCEPF_GET(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = load i32, i32* @SGE_INT_ENABLE3, align 4
  %10 = load i32, i32* @ERR_CPL_EXCEED_IQE_SIZE, align 4
  %11 = load i32, i32* @ERR_INVALID_CIDX_INC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ERR_CPL_OPCODE_0, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ERR_DROPPED_DB, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ERR_DATA_CPL_ON_HIGH_QID1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ERR_DATA_CPL_ON_HIGH_QID0, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ERR_BAD_DB_PIDX3, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ERR_BAD_DB_PIDX2, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ERR_BAD_DB_PIDX1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ERR_BAD_DB_PIDX0, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ERR_ING_CTXT_PRIO, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ERR_EGR_CTXT_PRIO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @INGRESS_SIZE_ERR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @F_DBFIFO_HP_INT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @F_DBFIFO_LP_INT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @EGRESS_SIZE_ERR, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @t4_write_reg(%struct.adapter* %8, i32 %9, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = load i32, i32* @PL_PF_INT_ENABLE, align 4
  %44 = call i32 @MYPF_REG(i32 %43)
  %45 = load i32, i32* @PF_INTR_MASK, align 4
  %46 = call i32 @t4_write_reg(%struct.adapter* %42, i32 %44, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = load i32, i32* @PL_INT_MAP0, align 4
  %49 = load i32, i32* %3, align 4
  %50 = shl i32 1, %49
  %51 = call i32 @t4_set_reg_field(%struct.adapter* %47, i32 %48, i32 0, i32 %50)
  ret void
}

declare dso_local i32 @SOURCEPF_GET(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
