; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_efx_spi_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_efx_spi_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_mtd_partition = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.efx_mtd* }
%struct.efx_mtd = type { %struct.efx_nic*, %struct.efx_spi_device* }
%struct.efx_nic = type { i32 }
%struct.efx_spi_device = type { i64, i64 }

@EFX_SPI_VERIFY_BUF_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SPI_WREN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_mtd_partition*, i32, i64)* @efx_spi_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_spi_erase(%struct.efx_mtd_partition* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_mtd_partition*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.efx_mtd*, align 8
  %9 = alloca %struct.efx_spi_device*, align 8
  %10 = alloca %struct.efx_nic*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.efx_mtd_partition* %0, %struct.efx_mtd_partition** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %18 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %5, align 8
  %19 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.efx_mtd*, %struct.efx_mtd** %20, align 8
  store %struct.efx_mtd* %21, %struct.efx_mtd** %8, align 8
  %22 = load %struct.efx_mtd*, %struct.efx_mtd** %8, align 8
  %23 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %22, i32 0, i32 1
  %24 = load %struct.efx_spi_device*, %struct.efx_spi_device** %23, align 8
  store %struct.efx_spi_device* %24, %struct.efx_spi_device** %9, align 8
  %25 = load %struct.efx_mtd*, %struct.efx_mtd** %8, align 8
  %26 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %25, i32 0, i32 0
  %27 = load %struct.efx_nic*, %struct.efx_nic** %26, align 8
  store %struct.efx_nic* %27, %struct.efx_nic** %10, align 8
  %28 = load i32, i32* @EFX_SPI_VERIFY_BUF_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = load i32, i32* @EFX_SPI_VERIFY_BUF_LEN, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.efx_spi_device*, %struct.efx_spi_device** %9, align 8
  %37 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

43:                                               ; preds = %3
  %44 = load %struct.efx_spi_device*, %struct.efx_spi_device** %9, align 8
  %45 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

51:                                               ; preds = %43
  %52 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %53 = load %struct.efx_spi_device*, %struct.efx_spi_device** %9, align 8
  %54 = call i32 @efx_spi_unlock(%struct.efx_nic* %52, %struct.efx_spi_device* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

59:                                               ; preds = %51
  %60 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %61 = load %struct.efx_spi_device*, %struct.efx_spi_device** %9, align 8
  %62 = load i64, i64* @SPI_WREN, align 8
  %63 = call i32 @falcon_spi_cmd(%struct.efx_nic* %60, %struct.efx_spi_device* %61, i64 %62, i32 -1, i32* null, i32* null, i32 0)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

68:                                               ; preds = %59
  %69 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %70 = load %struct.efx_spi_device*, %struct.efx_spi_device** %9, align 8
  %71 = load %struct.efx_spi_device*, %struct.efx_spi_device** %9, align 8
  %72 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @falcon_spi_cmd(%struct.efx_nic* %69, %struct.efx_spi_device* %70, i64 %73, i32 %74, i32* null, i32* null, i32 0)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

80:                                               ; preds = %68
  %81 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %5, align 8
  %82 = call i32 @efx_spi_slow_wait(%struct.efx_mtd_partition* %81, i32 0)
  store i32 %82, i32* %16, align 4
  %83 = mul nuw i64 4, %29
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i32* %31, i32 255, i32 %84)
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %126, %80
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %7, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %86
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = sub i64 %92, %94
  %96 = mul nuw i64 4, %33
  %97 = trunc i64 %96 to i32
  %98 = call i32 @min(i64 %95, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %100 = load %struct.efx_spi_device*, %struct.efx_spi_device** %9, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %101, %102
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @falcon_spi_read(%struct.efx_nic* %99, %struct.efx_spi_device* %100, i32 %103, i32 %104, i32* null, i32* %34)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %91
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

110:                                              ; preds = %91
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @memcmp(i32* %31, i32* %34, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

117:                                              ; preds = %110
  %118 = call i32 (...) @cond_resched()
  %119 = load i32, i32* @current, align 4
  %120 = call i64 @signal_pending(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @EINTR, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %86

130:                                              ; preds = %86
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

132:                                              ; preds = %130, %122, %114, %108, %78, %66, %57, %48, %40
  %133 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @efx_spi_unlock(%struct.efx_nic*, %struct.efx_spi_device*) #2

declare dso_local i32 @falcon_spi_cmd(%struct.efx_nic*, %struct.efx_spi_device*, i64, i32, i32*, i32*, i32) #2

declare dso_local i32 @efx_spi_slow_wait(%struct.efx_mtd_partition*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @min(i64, i32) #2

declare dso_local i32 @falcon_spi_read(%struct.efx_nic*, %struct.efx_spi_device*, i32, i32, i32*, i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i64 @signal_pending(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
