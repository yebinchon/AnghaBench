; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap_uwire.c_uwire_chipselect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap_uwire.c_uwire_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.uwire_state* }
%struct.uwire_state = type { i32 }

@CSRB = common dso_local global i32 0, align 4
@UWIRE_CSR = common dso_local global i32 0, align 4
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@CS_CMD = common dso_local global i32 0, align 4
@BITBANG_CS_ACTIVE = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@UWIRE_SR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @uwire_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwire_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwire_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load %struct.uwire_state*, %struct.uwire_state** %9, align 8
  store %struct.uwire_state* %10, %struct.uwire_state** %5, align 8
  %11 = load i32, i32* @CSRB, align 4
  %12 = call i32 @wait_uwire_csr_flag(i32 %11, i32 0, i32 0)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* @UWIRE_CSR, align 4
  %15 = call i32 @uwire_read_reg(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 10
  %18 = and i32 %17, 3
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @CS_CMD, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @UWIRE_CSR, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @uwire_write_reg(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BITBANG_CS_ACTIVE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load %struct.uwire_state*, %struct.uwire_state** %5, align 8
  %42 = getelementptr inbounds %struct.uwire_state, %struct.uwire_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @uwire_set_clk1_div(i32 %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SPI_CPOL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @UWIRE_SR4, align 4
  %53 = call i32 @uwire_write_reg(i32 %52, i32 1)
  br label %57

54:                                               ; preds = %40
  %55 = load i32, i32* @UWIRE_SR4, align 4
  %56 = call i32 @uwire_write_reg(i32 %55, i32 0)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 10
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @CS_CMD, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @UWIRE_CSR, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @uwire_write_reg(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %36
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_uwire_csr_flag(i32, i32, i32) #1

declare dso_local i32 @uwire_read_reg(i32) #1

declare dso_local i32 @uwire_write_reg(i32, i32) #1

declare dso_local i32 @uwire_set_clk1_div(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
