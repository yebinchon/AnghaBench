; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_corerev_fifofixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_corerev_fifofixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i64*, %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@TXFIFO_START_BLK = common dso_local global i64 0, align 8
@NFIFO = common dso_local global i64 0, align 8
@TXFIFO_FIFOTOP_SHIFT = common dso_local global i64 0, align 8
@TXFIFOCMD_RESET_MASK = common dso_local global i64 0, align 8
@TXFIFOCMD_FIFOSEL_SHIFT = common dso_local global i64 0, align 8
@xmtfifocmd = common dso_local global i32 0, align 4
@xmtfifodef = common dso_local global i32 0, align 4
@xmtfifodef1 = common dso_local global i32 0, align 4
@M_FIFOSIZE0 = common dso_local global i32 0, align 4
@TX_AC_BE_FIFO = common dso_local global i64 0, align 8
@M_FIFOSIZE1 = common dso_local global i32 0, align 4
@TX_AC_VI_FIFO = common dso_local global i64 0, align 8
@M_FIFOSIZE2 = common dso_local global i32 0, align 4
@TX_AC_VO_FIFO = common dso_local global i64 0, align 8
@TX_AC_BK_FIFO = common dso_local global i64 0, align 8
@M_FIFOSIZE3 = common dso_local global i32 0, align 4
@TX_ATIM_FIFO = common dso_local global i64 0, align 8
@TX_BCMC_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_b_corerev_fifofixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_corerev_fifofixup(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 1
  %12 = load %struct.bcma_device*, %struct.bcma_device** %11, align 8
  store %struct.bcma_device* %12, %struct.bcma_device** %3, align 8
  %13 = load i64, i64* @TXFIFO_START_BLK, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @TXFIFO_START_BLK, align 8
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %79, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @NFIFO, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %20, %26
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, 255
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 1
  %32 = and i64 %31, 255
  %33 = load i64, i64* @TXFIFO_FIFOTOP_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = or i64 %29, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = lshr i64 %36, 8
  %38 = and i64 %37, 1
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, 1
  %41 = lshr i64 %40, 8
  %42 = and i64 %41, 1
  %43 = load i64, i64* @TXFIFO_FIFOTOP_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = or i64 %38, %44
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* @TXFIFOCMD_RESET_MASK, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @TXFIFOCMD_FIFOSEL_SHIFT, align 8
  %49 = shl i64 %47, %48
  %50 = or i64 %46, %49
  store i64 %50, i64* %9, align 8
  %51 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %52 = load i32, i32* @xmtfifocmd, align 4
  %53 = call i32 @D11REGOFFS(i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @bcma_write16(%struct.bcma_device* %51, i32 %53, i64 %54)
  %56 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %57 = load i32, i32* @xmtfifodef, align 4
  %58 = call i32 @D11REGOFFS(i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @bcma_write16(%struct.bcma_device* %56, i32 %58, i64 %59)
  %61 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %62 = load i32, i32* @xmtfifodef1, align 4
  %63 = call i32 @D11REGOFFS(i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @bcma_write16(%struct.bcma_device* %61, i32 %63, i64 %64)
  %66 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %67 = load i32, i32* @xmtfifocmd, align 4
  %68 = call i32 @D11REGOFFS(i32 %67)
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @bcma_write16(%struct.bcma_device* %66, i32 %68, i64 %69)
  %71 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %72 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %19
  %80 = load i64, i64* %4, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %4, align 8
  br label %15

82:                                               ; preds = %15
  %83 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %84 = load i32, i32* @M_FIFOSIZE0, align 4
  %85 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %86 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @TX_AC_BE_FIFO, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %83, i32 %84, i32 %91)
  %93 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %94 = load i32, i32* @M_FIFOSIZE1, align 4
  %95 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %96 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @TX_AC_VI_FIFO, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %93, i32 %94, i32 %101)
  %103 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %104 = load i32, i32* @M_FIFOSIZE2, align 4
  %105 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %106 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @TX_AC_VO_FIFO, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = shl i64 %110, 8
  %112 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %113 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @TX_AC_BK_FIFO, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = or i64 %111, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %103, i32 %104, i32 %119)
  %121 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %122 = load i32, i32* @M_FIFOSIZE3, align 4
  %123 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %124 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* @TX_ATIM_FIFO, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = shl i64 %128, 8
  %130 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %131 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @TX_BCMC_FIFO, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = or i64 %129, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %121, i32 %122, i32 %137)
  ret void
}

declare dso_local i32 @bcma_write16(%struct.bcma_device*, i32, i64) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @brcms_b_write_shm(%struct.brcms_hardware*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
