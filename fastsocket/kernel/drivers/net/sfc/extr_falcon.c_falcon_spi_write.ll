; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_spi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_spi_device = type { i32 }

@FALCON_SPI_MAX_LEN = common dso_local global i32 0, align 4
@SPI_WREN = common dso_local global i32 0, align 4
@SPI_WRITE = common dso_local global i32 0, align 4
@SPI_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_spi_write(%struct.efx_nic* %0, %struct.efx_spi_device* %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca %struct.efx_spi_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %7, align 8
  store %struct.efx_spi_device* %1, %struct.efx_spi_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @FALCON_SPI_MAX_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %107, %6
  %24 = load i64, i64* %16, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %108

27:                                               ; preds = %23
  %28 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %29 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %30 = load i32, i32* @SPI_WREN, align 4
  %31 = call i32 @falcon_spi_cmd(%struct.efx_nic* %28, %struct.efx_spi_device* %29, i32 %30, i64 -1, i32* null, i32* null, i64 0)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %108

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %16, align 8
  %38 = sub i64 %36, %37
  %39 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %16, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @falcon_spi_write_limit(%struct.efx_spi_device* %39, i64 %42)
  %44 = call i64 @min(i64 %38, i32 %43)
  store i64 %44, i64* %15, align 8
  %45 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %46 = load i32, i32* @SPI_WRITE, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %16, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @efx_spi_munge_command(%struct.efx_spi_device* %45, i32 %46, i64 %49)
  store i32 %50, i32* %17, align 4
  %51 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %52 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %16, align 8
  %56 = add i64 %54, %55
  %57 = load i32*, i32** %12, align 8
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @falcon_spi_cmd(%struct.efx_nic* %51, %struct.efx_spi_device* %52, i32 %53, i64 %56, i32* %59, i32* null, i64 %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %35
  br label %108

65:                                               ; preds = %35
  %66 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %67 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %68 = call i32 @falcon_spi_wait_write(%struct.efx_nic* %66, %struct.efx_spi_device* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %108

72:                                               ; preds = %65
  %73 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %74 = load i32, i32* @SPI_READ, align 4
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %16, align 8
  %77 = add i64 %75, %76
  %78 = call i32 @efx_spi_munge_command(%struct.efx_spi_device* %73, i32 %74, i64 %77)
  store i32 %78, i32* %17, align 4
  %79 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %80 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %16, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @falcon_spi_cmd(%struct.efx_nic* %79, %struct.efx_spi_device* %80, i32 %81, i64 %84, i32* null, i32* %22, i64 %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i64, i64* %15, align 8
  %91 = call i64 @memcmp(i32* %22, i32* %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %72
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %18, align 4
  br label %108

96:                                               ; preds = %72
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %16, align 8
  %100 = call i32 (...) @cond_resched()
  %101 = load i32, i32* @current, align 4
  %102 = call i64 @signal_pending(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @EINTR, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %18, align 4
  br label %108

107:                                              ; preds = %96
  br label %23

108:                                              ; preds = %104, %93, %71, %64, %34, %23
  %109 = load i64*, i64** %11, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i64, i64* %16, align 8
  %113 = load i64*, i64** %11, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %18, align 4
  %116 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %116)
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @falcon_spi_cmd(%struct.efx_nic*, %struct.efx_spi_device*, i32, i64, i32*, i32*, i64) #2

declare dso_local i64 @min(i64, i32) #2

declare dso_local i32 @falcon_spi_write_limit(%struct.efx_spi_device*, i64) #2

declare dso_local i32 @efx_spi_munge_command(%struct.efx_spi_device*, i32, i64) #2

declare dso_local i32 @falcon_spi_wait_write(%struct.efx_nic*, %struct.efx_spi_device*) #2

declare dso_local i64 @memcmp(i32*, i32*, i64) #2

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
