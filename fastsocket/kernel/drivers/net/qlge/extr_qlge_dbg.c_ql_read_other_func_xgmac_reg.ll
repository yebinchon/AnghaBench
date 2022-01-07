; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_read_other_func_xgmac_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_read_other_func_xgmac_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@XGMAC_ADDR = common dso_local global i32 0, align 4
@XGMAC_ADDR_RDY = common dso_local global i32 0, align 4
@XGMAC_ADDR_XME = common dso_local global i32 0, align 4
@XGMAC_ADDR_R = common dso_local global i32 0, align 4
@XGMAC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32, i32*)* @ql_read_other_func_xgmac_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_read_other_func_xgmac_reg(%struct.ql_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %9 = load i32, i32* @XGMAC_ADDR, align 4
  %10 = sdiv i32 %9, 4
  %11 = load i32, i32* @XGMAC_ADDR_RDY, align 4
  %12 = load i32, i32* @XGMAC_ADDR_XME, align 4
  %13 = call i32 @ql_wait_other_func_reg_rdy(%struct.ql_adapter* %8, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %19 = load i32, i32* @XGMAC_ADDR, align 4
  %20 = sdiv i32 %19, 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @XGMAC_ADDR_R, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ql_write_other_func_reg(%struct.ql_adapter* %18, i32 %20, i32 %23)
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = load i32, i32* @XGMAC_ADDR, align 4
  %27 = sdiv i32 %26, 4
  %28 = load i32, i32* @XGMAC_ADDR_RDY, align 4
  %29 = load i32, i32* @XGMAC_ADDR_XME, align 4
  %30 = call i32 @ql_wait_other_func_reg_rdy(%struct.ql_adapter* %25, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %40

34:                                               ; preds = %17
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %36 = load i32, i32* @XGMAC_DATA, align 4
  %37 = sdiv i32 %36, 4
  %38 = call i32 @ql_read_other_func_reg(%struct.ql_adapter* %35, i32 %37)
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %33, %16
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @ql_wait_other_func_reg_rdy(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @ql_write_other_func_reg(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read_other_func_reg(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
