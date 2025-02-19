; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst25l_flash = type { i32 }

@SST25L_CMD_RDSR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst25l_flash*, i32*)* @sst25l_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_status(%struct.sst25l_flash* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst25l_flash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.sst25l_flash* %0, %struct.sst25l_flash** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8, i8* @SST25L_CMD_RDSR, align 1
  store i8 %9, i8* %6, align 1
  %10 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %11 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @spi_write_then_read(i32 %12, i8* %6, i32 1, i8* %7, i32 1)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @spi_write_then_read(i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
