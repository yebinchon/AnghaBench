; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bitbang.c_spi_bitbang_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bitbang.c_spi_bitbang_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.spi_bitbang_cs* }
%struct.spi_bitbang_cs = type { i32, i32 }
%struct.spi_transfer = type { i32, i32 }

@bitbang_txrx_8 = common dso_local global i32 0, align 4
@bitbang_txrx_16 = common dso_local global i32 0, align 4
@bitbang_txrx_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_UDELAY_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_bitbang_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_bitbang_cs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 2
  %11 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %10, align 8
  store %struct.spi_bitbang_cs* %11, %struct.spi_bitbang_cs** %6, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %13 = icmp ne %struct.spi_transfer* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 8
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @bitbang_txrx_8, align 4
  %34 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %35 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %55

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 16
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @bitbang_txrx_16, align 4
  %41 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %42 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 32
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @bitbang_txrx_32, align 4
  %48 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %49 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = sdiv i32 500000000, %66
  %68 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %69 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %71 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MAX_UDELAY_MS, align 4
  %74 = mul nsw i32 %73, 1000
  %75 = mul nsw i32 %74, 1000
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %62
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %77, %50
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
