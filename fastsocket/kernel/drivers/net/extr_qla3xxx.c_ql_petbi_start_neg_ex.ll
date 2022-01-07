; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_petbi_start_neg_ex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_petbi_start_neg_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64 }

@PETBI_TBI_CTRL = common dso_local global i32 0, align 4
@PHYAddr = common dso_local global i32* null, align 8
@PETBI_TBI_AUTO_SENSE = common dso_local global i32 0, align 4
@PETBI_NEG_ADVER = common dso_local global i32 0, align 4
@PETBI_NEG_PAUSE = common dso_local global i32 0, align 4
@PETBI_NEG_DUPLEX = common dso_local global i32 0, align 4
@PETBI_CONTROL_REG = common dso_local global i32 0, align 4
@PETBI_CTRL_AUTO_NEG = common dso_local global i32 0, align 4
@PETBI_CTRL_RESTART_NEG = common dso_local global i32 0, align 4
@PETBI_CTRL_FULL_DUPLEX = common dso_local global i32 0, align 4
@PETBI_CTRL_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_petbi_start_neg_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_petbi_start_neg_ex(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %5 = load i32, i32* @PETBI_TBI_CTRL, align 4
  %6 = load i32*, i32** @PHYAddr, align 8
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ql_mii_read_reg_ex(%struct.ql3_adapter* %4, i32 %5, i32* %3, i32 %11)
  %13 = load i32, i32* @PETBI_TBI_AUTO_SENSE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %17 = load i32, i32* @PETBI_TBI_CTRL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** @PHYAddr, align 8
  %20 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %16, i32 %17, i32 %18, i32 %24)
  %26 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %27 = load i32, i32* @PETBI_NEG_ADVER, align 4
  %28 = load i32, i32* @PETBI_NEG_PAUSE, align 4
  %29 = load i32, i32* @PETBI_NEG_DUPLEX, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** @PHYAddr, align 8
  %32 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %26, i32 %27, i32 %30, i32 %36)
  %38 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %39 = load i32, i32* @PETBI_CONTROL_REG, align 4
  %40 = load i32, i32* @PETBI_CTRL_AUTO_NEG, align 4
  %41 = load i32, i32* @PETBI_CTRL_RESTART_NEG, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PETBI_CTRL_FULL_DUPLEX, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PETBI_CTRL_SPEED_1000, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** @PHYAddr, align 8
  %48 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %38, i32 %39, i32 %46, i32 %52)
  ret void
}

declare dso_local i32 @ql_mii_read_reg_ex(%struct.ql3_adapter*, i32, i32*, i32) #1

declare dso_local i32 @ql_mii_write_reg_ex(%struct.ql3_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
