; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_esp_basic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_esp_basic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_MODE = common dso_local global i32 0, align 4
@ESP_STAT_NEVER_DMA = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@ESI_SET_IRQ = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@ESI_SET_ENH_IRQ = common dso_local global i32 0, align 4
@ESI_SET_ERR_MASK = common dso_local global i32 0, align 4
@ESI_SET_DMA_TMOUT = common dso_local global i32 0, align 4
@ESI_SET_TRIGGER = common dso_local global i32 0, align 4
@ESI_SET_PRESCALAR = common dso_local global i32 0, align 4
@ESPC_SCALE = common dso_local global i32 0, align 4
@ESI_SET_REINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*)* @esp_basic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_basic_init(%struct.esp_struct* %0) #0 {
  %2 = alloca %struct.esp_struct*, align 8
  store %struct.esp_struct* %0, %struct.esp_struct** %2, align 8
  %3 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %4 = load i32, i32* @UART_ESI_CMD1, align 4
  %5 = load i32, i32* @ESI_SET_MODE, align 4
  %6 = call i32 @serial_out(%struct.esp_struct* %3, i32 %4, i32 %5)
  %7 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %8 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ESP_STAT_NEVER_DMA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %15 = load i32, i32* @UART_ESI_CMD2, align 4
  %16 = call i32 @serial_out(%struct.esp_struct* %14, i32 %15, i32 1)
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %19 = load i32, i32* @UART_ESI_CMD2, align 4
  %20 = call i32 @serial_out(%struct.esp_struct* %18, i32 %19, i32 49)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %23 = load i32, i32* @UART_ESI_CMD1, align 4
  %24 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %25 = call i32 @serial_out(%struct.esp_struct* %22, i32 %23, i32 %24)
  %26 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %27 = load i32, i32* @UART_ESI_CMD2, align 4
  %28 = call i32 @serial_out(%struct.esp_struct* %26, i32 %27, i32 0)
  %29 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %30 = load i32, i32* @UART_ESI_CMD1, align 4
  %31 = load i32, i32* @ESI_SET_IRQ, align 4
  %32 = call i32 @serial_out(%struct.esp_struct* %29, i32 %30, i32 %31)
  %33 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %34 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ESP_STAT_NEVER_DMA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %21
  %40 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %41 = load i32, i32* @UART_ESI_CMD2, align 4
  %42 = call i32 @serial_out(%struct.esp_struct* %40, i32 %41, i32 1)
  br label %50

43:                                               ; preds = %21
  %44 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %45 = load i32, i32* @UART_ESI_CMD2, align 4
  %46 = load i32, i32* @dma, align 4
  %47 = shl i32 %46, 4
  %48 = or i32 %47, 1
  %49 = call i32 @serial_out(%struct.esp_struct* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %43, %39
  %51 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %52 = load i32, i32* @UART_ESI_CMD1, align 4
  %53 = load i32, i32* @ESI_SET_ENH_IRQ, align 4
  %54 = call i32 @serial_out(%struct.esp_struct* %51, i32 %52, i32 %53)
  %55 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %56 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %57, 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %62 = load i32, i32* @UART_ESI_CMD2, align 4
  %63 = call i32 @serial_out(%struct.esp_struct* %61, i32 %62, i32 13)
  br label %81

64:                                               ; preds = %50
  %65 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %66 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %71 = load i32, i32* @UART_ESI_CMD2, align 4
  %72 = call i32 @serial_out(%struct.esp_struct* %70, i32 %71, i32 2)
  br label %80

73:                                               ; preds = %64
  %74 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %75 = load i32, i32* @UART_ESI_CMD2, align 4
  %76 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %77 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @serial_out(%struct.esp_struct* %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %73, %69
  br label %81

81:                                               ; preds = %80, %60
  %82 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %83 = load i32, i32* @UART_ESI_CMD1, align 4
  %84 = load i32, i32* @ESI_SET_ERR_MASK, align 4
  %85 = call i32 @serial_out(%struct.esp_struct* %82, i32 %83, i32 %84)
  %86 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %87 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ESP_STAT_NEVER_DMA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %94 = load i32, i32* @UART_ESI_CMD2, align 4
  %95 = call i32 @serial_out(%struct.esp_struct* %93, i32 %94, i32 161)
  br label %100

96:                                               ; preds = %81
  %97 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %98 = load i32, i32* @UART_ESI_CMD2, align 4
  %99 = call i32 @serial_out(%struct.esp_struct* %97, i32 %98, i32 189)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %102 = load i32, i32* @UART_ESI_CMD2, align 4
  %103 = call i32 @serial_out(%struct.esp_struct* %101, i32 %102, i32 0)
  %104 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %105 = load i32, i32* @UART_ESI_CMD1, align 4
  %106 = load i32, i32* @ESI_SET_DMA_TMOUT, align 4
  %107 = call i32 @serial_out(%struct.esp_struct* %104, i32 %105, i32 %106)
  %108 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %109 = load i32, i32* @UART_ESI_CMD2, align 4
  %110 = call i32 @serial_out(%struct.esp_struct* %108, i32 %109, i32 255)
  %111 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %112 = load i32, i32* @UART_ESI_CMD1, align 4
  %113 = load i32, i32* @ESI_SET_TRIGGER, align 4
  %114 = call i32 @serial_out(%struct.esp_struct* %111, i32 %112, i32 %113)
  %115 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %116 = load i32, i32* @UART_ESI_CMD2, align 4
  %117 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %118 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 8
  %122 = call i32 @serial_out(%struct.esp_struct* %115, i32 %116, i32 %121)
  %123 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %124 = load i32, i32* @UART_ESI_CMD2, align 4
  %125 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %126 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @serial_out(%struct.esp_struct* %123, i32 %124, i32 %128)
  %130 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %131 = load i32, i32* @UART_ESI_CMD2, align 4
  %132 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %133 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 8
  %137 = call i32 @serial_out(%struct.esp_struct* %130, i32 %131, i32 %136)
  %138 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %139 = load i32, i32* @UART_ESI_CMD2, align 4
  %140 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %141 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @serial_out(%struct.esp_struct* %138, i32 %139, i32 %143)
  %145 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %146 = load i32, i32* @UART_ESI_CMD1, align 4
  %147 = load i32, i32* @ESI_SET_PRESCALAR, align 4
  %148 = call i32 @serial_out(%struct.esp_struct* %145, i32 %146, i32 %147)
  %149 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %150 = load i32, i32* @UART_ESI_CMD2, align 4
  %151 = load i32, i32* @ESPC_SCALE, align 4
  %152 = or i32 4, %151
  %153 = call i32 @serial_out(%struct.esp_struct* %149, i32 %150, i32 %152)
  %154 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %155 = load i32, i32* @UART_ESI_CMD1, align 4
  %156 = load i32, i32* @ESI_SET_REINTR, align 4
  %157 = call i32 @serial_out(%struct.esp_struct* %154, i32 %155, i32 %156)
  %158 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %159 = load i32, i32* @UART_ESI_CMD2, align 4
  %160 = call i32 @serial_out(%struct.esp_struct* %158, i32 %159, i32 255)
  ret void
}

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
