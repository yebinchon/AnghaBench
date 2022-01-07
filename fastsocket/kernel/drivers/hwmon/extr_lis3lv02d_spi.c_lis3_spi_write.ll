; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d_spi.c_lis3_spi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d_spi.c_lis3_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { %struct.spi_device* }
%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3lv02d*, i32, i32)* @lis3_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3_spi_write(%struct.lis3lv02d* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lis3lv02d*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.spi_device*, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %14 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %13, i32 0, i32 0
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %8, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = call i32 @spi_write(%struct.spi_device* %16, i32* %17, i32 8)
  ret i32 %18
}

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
