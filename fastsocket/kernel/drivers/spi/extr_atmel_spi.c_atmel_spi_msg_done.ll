; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_msg_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_msg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.atmel_spi = type { i64, i32, i32*, i32*, i32, i32 }
%struct.spi_message = type { i32, i32, i32 (i32)*, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"xfer complete: %u bytes transferred\0A\00", align 1
@PTCR = common dso_local global i32 0, align 4
@RXTDIS = common dso_local global i32 0, align 4
@TXTDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.atmel_spi*, %struct.spi_message*, i32, i32)* @atmel_spi_msg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_spi_msg_done(%struct.spi_master* %0, %struct.atmel_spi* %1, %struct.spi_message* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.atmel_spi*, align 8
  %8 = alloca %struct.spi_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %6, align 8
  store %struct.atmel_spi* %1, %struct.atmel_spi** %7, align 8
  store %struct.spi_message* %2, %struct.spi_message** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13, %5
  %17 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %18 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %19 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cs_deactivate(%struct.atmel_spi* %17, i32 %20)
  br label %28

22:                                               ; preds = %13
  %23 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %24 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %27 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %30 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %29, i32 0, i32 4
  %31 = call i32 @list_del(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %34 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %36 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %40 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %44 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %43, i32 0, i32 4
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %47 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %46, i32 0, i32 2
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %50 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %48(i32 %51)
  %53 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %54 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %53, i32 0, i32 4
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %57 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %59 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %61 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %60, i32 0, i32 1
  %62 = call i64 @list_empty(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %28
  %65 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %66 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64, %28
  %70 = load %struct.atmel_spi*, %struct.atmel_spi** %7, align 8
  %71 = load i32, i32* @PTCR, align 4
  %72 = load i32, i32* @RXTDIS, align 4
  %73 = call i32 @SPI_BIT(i32 %72)
  %74 = load i32, i32* @TXTDIS, align 4
  %75 = call i32 @SPI_BIT(i32 %74)
  %76 = or i32 %73, %75
  %77 = call i32 @spi_writel(%struct.atmel_spi* %70, i32 %71, i32 %76)
  br label %81

78:                                               ; preds = %64
  %79 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %80 = call i32 @atmel_spi_next_message(%struct.spi_master* %79)
  br label %81

81:                                               ; preds = %78, %69
  ret void
}

declare dso_local i32 @cs_deactivate(%struct.atmel_spi*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spi_writel(%struct.atmel_spi*, i32, i32) #1

declare dso_local i32 @SPI_BIT(i32) #1

declare dso_local i32 @atmel_spi_next_message(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
