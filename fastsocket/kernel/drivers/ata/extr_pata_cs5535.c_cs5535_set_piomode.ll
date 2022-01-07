; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cs5535.c_cs5535_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cs5535.c_cs5535_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.ata_device = type { i32, i32 }

@cs5535_set_piomode.pio_timings = internal constant [5 x i32] [i32 63476, i32 21491, i32 5105, i32 20785, i32 4401], align 16
@cs5535_set_piomode.pio_cmd_timings = internal constant [5 x i32] [i32 63476, i32 21491, i32 5105, i32 20785, i32 4401], align 16
@XFER_PIO_0 = common dso_local global i32 0, align 4
@ATAC_CH0D0_PIO = common dso_local global i64 0, align 8
@ATAC_CH0D0_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @cs5535_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5535_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %11)
  store %struct.ata_device* %12, %struct.ata_device** %7, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XFER_PIO_0, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %20 = icmp ne %struct.ata_device* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %2
  %22 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XFER_PIO_0, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %21
  %34 = load i64, i64* @ATAC_CH0D0_PIO, align 8
  %35 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5535_set_piomode.pio_cmd_timings, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5535_set_piomode.pio_timings, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %45, %49
  %51 = call i32 @wrmsr(i64 %40, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %33, %21
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i64, i64* @ATAC_CH0D0_PIO, align 8
  %55 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 2, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %54, %59
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5535_set_piomode.pio_cmd_timings, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5535_set_piomode.pio_timings, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %65, %69
  %71 = call i32 @wrmsr(i64 %60, i32 %70, i32 0)
  %72 = load i64, i64* @ATAC_CH0D0_DMA, align 8
  %73 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %74 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 2, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %72, %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @rdmsr(i64 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @ATAC_CH0D0_DMA, align 8
  %83 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %84 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %82, %87
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = or i64 %90, 2147483648
  %92 = trunc i64 %91 to i32
  %93 = call i32 @wrmsr(i64 %88, i32 %92, i32 0)
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wrmsr(i64, i32, i32) #1

declare dso_local i32 @rdmsr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
