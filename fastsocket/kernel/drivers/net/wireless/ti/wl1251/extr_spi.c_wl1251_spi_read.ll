; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i32* }
%struct.spi_transfer = type { i64*, i32, i32* }
%struct.spi_message = type { i32 }

@WSPI_CMD_READ = common dso_local global i64 0, align 8
@WSPI_CMD_BYTE_LENGTH_OFFSET = common dso_local global i64 0, align 8
@WSPI_CMD_BYTE_LENGTH = common dso_local global i64 0, align 8
@WSPI_CMD_BYTE_ADDR = common dso_local global i32 0, align 4
@WL1251_BUSY_WORD_LEN = common dso_local global i32 0, align 4
@DEBUG_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"spi_read cmd -> \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"spi_read buf <- \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, i32, i8*, i64)* @wl1251_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_spi_read(%struct.wl1251* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x %struct.spi_transfer], align 16
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %14 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %13, i32 0, i32 0
  store i64* %14, i64** %12, align 8
  %15 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %16 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i64*, i64** %12, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* @WSPI_CMD_READ, align 8
  %20 = load i64*, i64** %12, align 8
  %21 = load i64, i64* %20, align 8
  %22 = or i64 %21, %19
  store i64 %22, i64* %20, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @WSPI_CMD_BYTE_LENGTH_OFFSET, align 8
  %25 = shl i64 %23, %24
  %26 = load i64, i64* @WSPI_CMD_BYTE_LENGTH, align 8
  %27 = and i64 %25, %26
  %28 = load i64*, i64** %12, align 8
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @WSPI_CMD_BYTE_ADDR, align 4
  %33 = and i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %12, align 8
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = call i32 @spi_message_init(%struct.spi_message* %10)
  %39 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %40 = call i32 @memset(%struct.spi_transfer* %39, i32 0, i32 72)
  %41 = load i64*, i64** %12, align 8
  %42 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 0
  store i64* %41, i64** %43, align 16
  %44 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 1
  store i32 4, i32* %45, align 8
  %46 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %47 = call i32 @spi_message_add_tail(%struct.spi_transfer* %46, %struct.spi_message* %10)
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 1
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* @WL1251_BUSY_WORD_LEN, align 4
  %52 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 1
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 1
  %55 = call i32 @spi_message_add_tail(%struct.spi_transfer* %54, %struct.spi_message* %10)
  %56 = load i8*, i8** %7, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 2
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 16
  %60 = load i64, i64* %8, align 8
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 2
  %63 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 2
  %65 = call i32 @spi_message_add_tail(%struct.spi_transfer* %64, %struct.spi_message* %10)
  %66 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %67 = call i32 @wl_to_spi(%struct.wl1251* %66)
  %68 = call i32 @spi_sync(i32 %67, %struct.spi_message* %10)
  %69 = load i32, i32* @DEBUG_SPI, align 4
  %70 = load i64*, i64** %12, align 8
  %71 = bitcast i64* %70 to i8*
  %72 = call i32 @wl1251_dump(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %71, i64 8)
  %73 = load i32, i32* @DEBUG_SPI, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @wl1251_dump(i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %74, i64 %75)
  ret void
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @wl_to_spi(%struct.wl1251*) #1

declare dso_local i32 @wl1251_dump(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
