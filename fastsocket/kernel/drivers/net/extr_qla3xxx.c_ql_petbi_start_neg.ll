; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_petbi_start_neg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_petbi_start_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32 }

@PETBI_TBI_CTRL = common dso_local global i32 0, align 4
@PETBI_TBI_AUTO_SENSE = common dso_local global i32 0, align 4
@PETBI_NEG_ADVER = common dso_local global i32 0, align 4
@PETBI_NEG_PAUSE = common dso_local global i32 0, align 4
@PETBI_NEG_DUPLEX = common dso_local global i32 0, align 4
@PETBI_CONTROL_REG = common dso_local global i32 0, align 4
@PETBI_CTRL_AUTO_NEG = common dso_local global i32 0, align 4
@PETBI_CTRL_RESTART_NEG = common dso_local global i32 0, align 4
@PETBI_CTRL_FULL_DUPLEX = common dso_local global i32 0, align 4
@PETBI_CTRL_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_petbi_start_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_petbi_start_neg(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %5 = load i32, i32* @PETBI_TBI_CTRL, align 4
  %6 = call i32 @ql_mii_read_reg(%struct.ql3_adapter* %4, i32 %5, i32* %3)
  %7 = load i32, i32* @PETBI_TBI_AUTO_SENSE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %11 = load i32, i32* @PETBI_TBI_CTRL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ql_mii_write_reg(%struct.ql3_adapter* %10, i32 %11, i32 %12)
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %15 = load i32, i32* @PETBI_NEG_ADVER, align 4
  %16 = load i32, i32* @PETBI_NEG_PAUSE, align 4
  %17 = load i32, i32* @PETBI_NEG_DUPLEX, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ql_mii_write_reg(%struct.ql3_adapter* %14, i32 %15, i32 %18)
  %20 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %21 = load i32, i32* @PETBI_CONTROL_REG, align 4
  %22 = load i32, i32* @PETBI_CTRL_AUTO_NEG, align 4
  %23 = load i32, i32* @PETBI_CTRL_RESTART_NEG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PETBI_CTRL_FULL_DUPLEX, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PETBI_CTRL_SPEED_1000, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ql_mii_write_reg(%struct.ql3_adapter* %20, i32 %21, i32 %28)
  ret void
}

declare dso_local i32 @ql_mii_read_reg(%struct.ql3_adapter*, i32, i32*) #1

declare dso_local i32 @ql_mii_write_reg(%struct.ql3_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
