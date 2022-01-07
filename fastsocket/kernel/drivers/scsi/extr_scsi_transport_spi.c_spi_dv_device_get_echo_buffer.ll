; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_get_echo_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_get_echo_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@TEST_UNIT_READY = common dso_local global i8 0, align 1
@READ_BUFFER = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32*)* @spi_dv_device_get_echo_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_dv_device_get_echo_buffer(%struct.scsi_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca [10 x i8], align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %11 = load i8, i8* @TEST_UNIT_READY, align 1
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %18 = load i32, i32* @READ_BUFFER, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 11, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 4, i8* %27, align 1
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %28, align 1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %43, %2
  %30 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* @DMA_NONE, align 4
  %33 = call i32 @spi_execute(%struct.scsi_device* %30, i8* %31, i32 %32, i32* null, i32 0, i32* null)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %65

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %29
  br label %46

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %29

46:                                               ; preds = %41
  %47 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @spi_execute(%struct.scsi_device* %47, i8* %48, i32 %49, i32* %50, i32 4, i32* null)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %65

55:                                               ; preds = %46
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 31
  %63 = shl i32 %62, 8
  %64 = add nsw i32 %58, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %54, %39
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @spi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
