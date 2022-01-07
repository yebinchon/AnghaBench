; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u16_cs_chg_reader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u16_cs_chg_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i64, %struct.chip_data* }
%struct.chip_data = type { i32 }

@BIT_STAT_RXS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @bfin_spi_u16_cs_chg_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_spi_u16_cs_chg_reader(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.chip_data*, align 8
  %4 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %5 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %6 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %5, i32 0, i32 2
  %7 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  store %struct.chip_data* %7, %struct.chip_data** %3, align 8
  %8 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %9 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %12 = call i32 @bfin_spi_dummy_read(%struct.driver_data* %11)
  br label %13

13:                                               ; preds = %37, %1
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %13
  %22 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %23 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %24 = call i32 @bfin_spi_cs_active(%struct.driver_data* %22, %struct.chip_data* %23)
  %25 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @write_TDBR(%struct.driver_data* %25, i32 %26)
  br label %28

28:                                               ; preds = %35, %21
  %29 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %30 = call i32 @read_STAT(%struct.driver_data* %29)
  %31 = load i32, i32* @BIT_STAT_RXS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 (...) @cpu_relax()
  br label %28

37:                                               ; preds = %28
  %38 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %39 = call i32 @read_RDBR(%struct.driver_data* %38)
  %40 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %41 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32 %39, i32* %43, align 4
  %44 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %45 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 2
  store i64 %47, i64* %45, align 8
  %48 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %49 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %50 = call i32 @bfin_spi_cs_deactive(%struct.driver_data* %48, %struct.chip_data* %49)
  br label %13

51:                                               ; preds = %13
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
