; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u16_reader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u16_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BIT_STAT_RXS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @bfin_spi_u16_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_spi_u16_reader(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %10 = call i32 @bfin_spi_dummy_read(%struct.driver_data* %9)
  br label %11

11:                                               ; preds = %32, %1
  %12 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %11
  %20 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @write_TDBR(%struct.driver_data* %20, i32 %21)
  br label %23

23:                                               ; preds = %30, %19
  %24 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %25 = call i32 @read_STAT(%struct.driver_data* %24)
  %26 = load i32, i32* @BIT_STAT_RXS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (...) @cpu_relax()
  br label %23

32:                                               ; preds = %23
  %33 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %34 = call i32 @read_RDBR(%struct.driver_data* %33)
  %35 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %36 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32 %34, i32* %38, align 4
  %39 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %40 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 2
  store i64 %42, i64* %40, align 8
  br label %11

43:                                               ; preds = %11
  ret void
}

declare dso_local i32 @bfin_spi_dummy_read(%struct.driver_data*) #1

declare dso_local i32 @write_TDBR(%struct.driver_data*, i32) #1

declare dso_local i32 @read_STAT(%struct.driver_data*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @read_RDBR(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
