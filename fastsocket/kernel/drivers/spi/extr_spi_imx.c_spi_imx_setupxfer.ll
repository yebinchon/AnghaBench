; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_setupxfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_setupxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, i64, i32, i32 }
%struct.spi_transfer = type { i32, i64 }
%struct.spi_imx_data = type { i32 (%struct.spi_imx_data*, %struct.spi_imx_config*)*, i32, i32, i32* }
%struct.spi_imx_config = type opaque
%struct.spi_imx_config.0 = type { i32, i64, i32, i32 }

@spi_imx_buf_rx_u8 = common dso_local global i32 0, align 4
@spi_imx_buf_tx_u8 = common dso_local global i32 0, align 4
@spi_imx_buf_rx_u16 = common dso_local global i32 0, align 4
@spi_imx_buf_tx_u16 = common dso_local global i32 0, align 4
@spi_imx_buf_rx_u32 = common dso_local global i32 0, align 4
@spi_imx_buf_tx_u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_imx_setupxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_setupxfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.spi_imx_data*, align 8
  %6 = alloca %struct.spi_imx_config.0, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.spi_imx_data* @spi_master_get_devdata(i32 %9)
  store %struct.spi_imx_data* %10, %struct.spi_imx_data** %5, align 8
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %12 = icmp ne %struct.spi_transfer* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %16, %13 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %25 = icmp ne %struct.spi_transfer* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  %36 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %42 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %34
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %34
  %59 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %67
  %77 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %78, 8
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* @spi_imx_buf_rx_u8, align 4
  %82 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %83 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @spi_imx_buf_tx_u8, align 4
  %85 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %86 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %113

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %89, 16
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* @spi_imx_buf_rx_u16, align 4
  %93 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %94 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @spi_imx_buf_tx_u16, align 4
  %96 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %97 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %112

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.spi_imx_config.0, %struct.spi_imx_config.0* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %100, 32
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32, i32* @spi_imx_buf_rx_u32, align 4
  %104 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %105 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @spi_imx_buf_tx_u32, align 4
  %107 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %108 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  br label %111

109:                                              ; preds = %98
  %110 = call i32 (...) @BUG()
  br label %111

111:                                              ; preds = %109, %102
  br label %112

112:                                              ; preds = %111, %91
  br label %113

113:                                              ; preds = %112, %80
  %114 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %115 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %114, i32 0, i32 0
  %116 = load i32 (%struct.spi_imx_data*, %struct.spi_imx_config*)*, i32 (%struct.spi_imx_data*, %struct.spi_imx_config*)** %115, align 8
  %117 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %118 = bitcast %struct.spi_imx_config.0* %6 to %struct.spi_imx_config*
  %119 = call i32 %116(%struct.spi_imx_data* %117, %struct.spi_imx_config* %118)
  ret i32 0
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
