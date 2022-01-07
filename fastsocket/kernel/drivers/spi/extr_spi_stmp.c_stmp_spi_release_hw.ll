; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_release_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_release_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp_spi = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmp_spi*)* @stmp_spi_release_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmp_spi_release_hw(%struct.stmp_spi* %0) #0 {
  %2 = alloca %struct.stmp_spi*, align 8
  %3 = alloca i8*, align 8
  store %struct.stmp_spi* %0, %struct.stmp_spi** %2, align 8
  %4 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %5 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %10 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %15 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IS_ERR(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %21 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @clk_disable(i64 %22)
  %24 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %25 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @clk_put(i64 %26)
  br label %28

28:                                               ; preds = %19, %13, %1
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %31 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @dev_name(%struct.TYPE_2__* %32)
  %34 = call i32 @stmp3xxx_release_pin_group(i8* %29, i32 %33)
  ret void
}

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @clk_disable(i64) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @stmp3xxx_release_pin_group(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
