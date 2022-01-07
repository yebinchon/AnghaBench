; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, i32, %struct.omap2_mcspi_cs* }
%struct.omap2_mcspi_cs = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.omap2_mcspi = type { %struct.spi_master* }
%struct.spi_master = type { i32 }

@OMAP2_MCSPI_MAX_FREQ = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_IS = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_DPE1 = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_DPE0 = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_WL_MASK = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_EPOL = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_CLKD_MASK = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_POL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_PHA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"setup: speed %d, sample %s edge, clk %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"trailing\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"leading\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"inverted\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @omap2_mcspi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcspi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.omap2_mcspi_cs*, align 8
  %6 = alloca %struct.omap2_mcspi*, align 8
  %7 = alloca %struct.spi_master*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 5
  %13 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %12, align 8
  store %struct.omap2_mcspi_cs* %13, %struct.omap2_mcspi_cs** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %19)
  store %struct.omap2_mcspi* %20, %struct.omap2_mcspi** %6, align 8
  %21 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %6, align 8
  %22 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %21, i32 0, i32 0
  %23 = load %struct.spi_master*, %struct.spi_master** %22, align 8
  store %struct.spi_master* %23, %struct.spi_master** %7, align 8
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %25 = icmp ne %struct.spi_transfer* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %26, %2
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %38 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 15
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* @OMAP2_MCSPI_MAX_FREQ, align 4
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 1, %49
  %51 = sdiv i32 %48, %50
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br label %56

56:                                               ; preds = %47, %44
  %57 = phi i1 [ false, %44 ], [ %55, %47 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %44

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %35
  store i32 15, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = call i32 @mcspi_cached_chconf0(%struct.spi_device* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @OMAP2_MCSPI_CHCONF_IS, align 4
  %67 = load i32, i32* @OMAP2_MCSPI_CHCONF_DPE1, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @OMAP2_MCSPI_CHCONF_DPE0, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @OMAP2_MCSPI_CHCONF_WL_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 %80, 7
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SPI_CS_HIGH, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %63
  %91 = load i32, i32* @OMAP2_MCSPI_CHCONF_EPOL, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %99

94:                                               ; preds = %63
  %95 = load i32, i32* @OMAP2_MCSPI_CHCONF_EPOL, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* @OMAP2_MCSPI_CHCONF_CLKD_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 2
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %109 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SPI_CPOL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %99
  %115 = load i32, i32* @OMAP2_MCSPI_CHCONF_POL, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %123

118:                                              ; preds = %99
  %119 = load i32, i32* @OMAP2_MCSPI_CHCONF_POL, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SPI_CPHA, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* @OMAP2_MCSPI_CHCONF_PHA, align 4
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %139

134:                                              ; preds = %123
  %135 = load i32, i32* @OMAP2_MCSPI_CHCONF_PHA, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %134, %130
  %140 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @mcspi_write_chconf0(%struct.spi_device* %140, i32 %141)
  %143 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %144 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %143, i32 0, i32 3
  %145 = load i32, i32* @OMAP2_MCSPI_MAX_FREQ, align 4
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 1, %146
  %148 = sdiv i32 %145, %147
  %149 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %150 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SPI_CPHA, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %157 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %158 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SPI_CPOL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %165 = call i32 @dev_dbg(i32* %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %148, i8* %156, i8* %164)
  ret i32 0
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @mcspi_cached_chconf0(%struct.spi_device*) #1

declare dso_local i32 @mcspi_write_chconf0(%struct.spi_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
