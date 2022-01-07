; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u8_cs_chg_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u8_cs_chg_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i64, i32, %struct.chip_data* }
%struct.chip_data = type { i32 }

@BIT_STAT_RXS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @bfin_spi_u8_cs_chg_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_spi_u8_cs_chg_duplex(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.chip_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 3
  %6 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  store %struct.chip_data* %6, %struct.chip_data** %3, align 8
  %7 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %8 = call i32 @bfin_spi_dummy_read(%struct.driver_data* %7)
  br label %9

9:                                                ; preds = %39, %1
  %10 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %14 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %9
  %18 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %19 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %20 = call i32 @bfin_spi_cs_active(%struct.driver_data* %18, %struct.chip_data* %19)
  %21 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %22 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %23 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = sext i32 %24 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_TDBR(%struct.driver_data* %21, i32 %28)
  br label %30

30:                                               ; preds = %37, %17
  %31 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %32 = call i32 @read_STAT(%struct.driver_data* %31)
  %33 = load i32, i32* @BIT_STAT_RXS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (...) @cpu_relax()
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %41 = call i32 @read_RDBR(%struct.driver_data* %40)
  %42 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %43 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = inttoptr i64 %44 to i32*
  store i32 %41, i32* %46, align 4
  %47 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %48 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %49 = call i32 @bfin_spi_cs_deactive(%struct.driver_data* %47, %struct.chip_data* %48)
  br label %9

50:                                               ; preds = %9
  ret void
}

declare dso_local i32 @bfin_spi_dummy_read(%struct.driver_data*) #1

declare dso_local i32 @bfin_spi_cs_active(%struct.driver_data*, %struct.chip_data*) #1

declare dso_local i32 @write_TDBR(%struct.driver_data*, i32) #1

declare dso_local i32 @read_STAT(%struct.driver_data*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @read_RDBR(%struct.driver_data*) #1

declare dso_local i32 @bfin_spi_cs_deactive(%struct.driver_data*, %struct.chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
