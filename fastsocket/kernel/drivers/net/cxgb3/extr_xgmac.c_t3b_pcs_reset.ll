; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_xgmac.c_t3b_pcs_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_xgmac.c_t3b_pcs_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, i32 }

@A_XGM_RESET_CTRL = common dso_local global i64 0, align 8
@F_PCS_RESET_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3b_pcs_reset(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %3 = load %struct.cmac*, %struct.cmac** %2, align 8
  %4 = getelementptr inbounds %struct.cmac, %struct.cmac* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %7 = load %struct.cmac*, %struct.cmac** %2, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = load i32, i32* @F_PCS_RESET_, align 4
  %12 = call i32 @t3_set_reg_field(i32 %5, i64 %10, i32 %11, i32 0)
  %13 = call i32 @udelay(i32 20)
  %14 = load %struct.cmac*, %struct.cmac** %2, align 8
  %15 = getelementptr inbounds %struct.cmac, %struct.cmac* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %18 = load %struct.cmac*, %struct.cmac** %2, align 8
  %19 = getelementptr inbounds %struct.cmac, %struct.cmac* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* @F_PCS_RESET_, align 4
  %23 = call i32 @t3_set_reg_field(i32 %16, i64 %21, i32 0, i32 %22)
  ret void
}

declare dso_local i32 @t3_set_reg_field(i32, i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
