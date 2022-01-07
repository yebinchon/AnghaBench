; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_erase_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_erase_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst25l_flash = type { i32 }

@SST25L_CMD_SECTOR_ERASE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst25l_flash*, i32)* @sst25l_erase_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_erase_sector(%struct.sst25l_flash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst25l_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.sst25l_flash* %0, %struct.sst25l_flash** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %9 = call i32 @sst25l_write_enable(%struct.sst25l_flash* %8, i32 1)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load i8, i8* @SST25L_CMD_SECTOR_ERASE, align 1
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %15, i8* %16, align 1
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 16
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %19, i8* %20, align 1
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %23, i8* %24, align 1
  %25 = load i32, i32* %5, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 %26, i8* %27, align 1
  %28 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %29 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %32 = call i32 @spi_write(i32 %30, i8* %31, i32 4)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %14
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %14
  %38 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %39 = call i32 @sst25l_wait_till_ready(%struct.sst25l_flash* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %46 = call i32 @sst25l_write_enable(%struct.sst25l_flash* %45, i32 0)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %42, %35, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @sst25l_write_enable(%struct.sst25l_flash*, i32) #1

declare dso_local i32 @spi_write(i32, i8*, i32) #1

declare dso_local i32 @sst25l_wait_till_ready(%struct.sst25l_flash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
