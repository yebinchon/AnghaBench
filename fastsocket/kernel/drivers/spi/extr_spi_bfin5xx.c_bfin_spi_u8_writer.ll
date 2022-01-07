; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u8_writer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_u8_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i64 }

@BIT_STAT_RXS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @bfin_spi_u8_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_spi_u8_writer(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %3 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %4 = call i32 @bfin_spi_dummy_read(%struct.driver_data* %3)
  br label %5

5:                                                ; preds = %31, %1
  %6 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %10 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %5
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = inttoptr i64 %17 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @write_TDBR(%struct.driver_data* %14, i32 %20)
  br label %22

22:                                               ; preds = %29, %13
  %23 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %24 = call i32 @read_STAT(%struct.driver_data* %23)
  %25 = load i32, i32* @BIT_STAT_RXS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @cpu_relax()
  br label %22

31:                                               ; preds = %22
  %32 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %33 = call i32 @bfin_spi_dummy_read(%struct.driver_data* %32)
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bfin_spi_dummy_read(%struct.driver_data*) #1

declare dso_local i32 @write_TDBR(%struct.driver_data*, i32) #1

declare dso_local i32 @read_STAT(%struct.driver_data*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
