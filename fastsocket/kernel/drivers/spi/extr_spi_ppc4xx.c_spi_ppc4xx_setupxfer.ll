; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_ppc4xx.c_spi_ppc4xx_setupxfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_ppc4xx.c_spi_ppc4xx_setupxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, %struct.spi_ppc4xx_cs*, i32 }
%struct.spi_ppc4xx_cs = type { i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.ppc4xx_spi = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.spi_device*, i32)*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid bits-per-word (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid speed_hz (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"setting pre-scaler to %d (hz %d)\0A\00", align 1
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_ppc4xx_setupxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_ppc4xx_setupxfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.ppc4xx_spi*, align 8
  %7 = alloca %struct.spi_ppc4xx_cs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ppc4xx_spi* @spi_master_get_devdata(i32 %14)
  store %struct.ppc4xx_spi* %15, %struct.ppc4xx_spi** %6, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 3
  %18 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %17, align 8
  store %struct.spi_ppc4xx_cs* %18, %struct.spi_ppc4xx_cs** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %26 = icmp ne %struct.spi_transfer* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %2
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @min(i32 %44, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %41, %36
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 8
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 2
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %139

60:                                               ; preds = %50
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63, %60
  %70 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 2
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %139

76:                                               ; preds = %63
  %77 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %78 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %7, align 8
  %82 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @out_8(i32* %80, i32 %83)
  %85 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %86 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sdiv i32 %87, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @min(i32 %94, i32 255)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %76
  %97 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 2
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dev_dbg(i32* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %103 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @in_8(i32* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %111 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @out_8(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %96
  %117 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %118 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = call i32 @spin_lock(i32* %119)
  %121 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %122 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %116
  %127 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %128 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %129, align 8
  %131 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %132 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %133 = call i32 %130(%struct.spi_device* %131, i32 %132)
  br label %134

134:                                              ; preds = %126, %116
  %135 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %136 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 @spin_unlock(i32* %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %134, %69, %53
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.ppc4xx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
