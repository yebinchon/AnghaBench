; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_mpc8xxx_spi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_mpc8xxx_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.spi_mpc8xxx_cs*, i32 }
%struct.spi_mpc8xxx_cs = type { i32 }
%struct.mpc8xxx_spi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPMODE_CP_BEGIN_EDGECLK = common dso_local global i32 0, align 4
@SPMODE_CI_INACTIVEHIGH = common dso_local global i32 0, align 4
@SPMODE_REV = common dso_local global i32 0, align 4
@SPMODE_LOOP = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mpc8xxx_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xxx_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mpc8xxx_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_mpc8xxx_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %9, align 8
  store %struct.spi_mpc8xxx_cs* %10, %struct.spi_mpc8xxx_cs** %7, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %122

18:                                               ; preds = %1
  %19 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %20 = icmp ne %struct.spi_mpc8xxx_cs* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.spi_mpc8xxx_cs* @kzalloc(i32 4, i32 %22)
  store %struct.spi_mpc8xxx_cs* %23, %struct.spi_mpc8xxx_cs** %7, align 8
  %24 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %25 = icmp ne %struct.spi_mpc8xxx_cs* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %122

29:                                               ; preds = %21
  %30 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 2
  store %struct.spi_mpc8xxx_cs* %30, %struct.spi_mpc8xxx_cs** %32, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(i32 %36)
  store %struct.mpc8xxx_spi* %37, %struct.mpc8xxx_spi** %4, align 8
  %38 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %39 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %4, align 8
  %42 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mpc8xxx_spi_read_reg(i32* %44)
  %46 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %47 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SPMODE_CP_BEGIN_EDGECLK, align 4
  %49 = load i32, i32* @SPMODE_CI_INACTIVEHIGH, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SPMODE_REV, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SPMODE_LOOP, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %57 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SPI_CPHA, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %33
  %67 = load i32, i32* @SPMODE_CP_BEGIN_EDGECLK, align 4
  %68 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %69 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %33
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SPI_CPOL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @SPMODE_CI_INACTIVEHIGH, align 4
  %81 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %82 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SPI_LSB_FIRST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @SPMODE_REV, align 4
  %94 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %95 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SPI_LOOP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @SPMODE_LOOP, align 4
  %107 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %108 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = call i32 @mpc8xxx_spi_setup_transfer(%struct.spi_device* %112, i32* null)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %7, align 8
  %119 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %116, %26, %15
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.spi_mpc8xxx_cs* @kzalloc(i32, i32) #1

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @mpc8xxx_spi_read_reg(i32*) #1

declare dso_local i32 @mpc8xxx_spi_setup_transfer(%struct.spi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
