; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_tx_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_tx_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.nvt_dev* }
%struct.nvt_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i64, i32 }

@TX_BUF_LEN = common dso_local global i8* null, align 8
@CIR_IREN = common dso_local global i32 0, align 4
@CIR_IREN_TFU = common dso_local global i32 0, align 4
@CIR_IREN_TTR = common dso_local global i32 0, align 4
@ST_TX_REPLY = common dso_local global i64 0, align 8
@CIR_FIFOCON_TX_TRIGGER_LEV_8 = common dso_local global i32 0, align 4
@CIR_FIFOCON_RXFIFOCLR = common dso_local global i32 0, align 4
@CIR_FIFOCON = common dso_local global i32 0, align 4
@CIR_STXFIFO = common dso_local global i32 0, align 4
@ST_TX_REQUEST = common dso_local global i64 0, align 8
@ST_TX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i8*)* @nvt_tx_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_tx_ir(%struct.rc_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvt_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 0
  %15 = load %struct.nvt_dev*, %struct.nvt_dev** %14, align 8
  store %struct.nvt_dev* %15, %struct.nvt_dev** %7, align 8
  %16 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %17 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** @TX_BUF_LEN, align 8
  %23 = icmp uge i8* %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i8*, i8** @TX_BUF_LEN, align 8
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %28 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i8*, i8** @TX_BUF_LEN, align 8
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %12, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %36 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %42 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %47 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memcpy(i32 %44, i32* %45, i64 %49)
  %51 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %52 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %55 = load i32, i32* @CIR_IREN, align 4
  %56 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %58 = load i32, i32* @CIR_IREN_TFU, align 4
  %59 = load i32, i32* @CIR_IREN_TTR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CIR_IREN, align 4
  %62 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %57, i32 %60, i32 %61)
  %63 = load i64, i64* @ST_TX_REPLY, align 8
  %64 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %65 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %68 = load i32, i32* @CIR_FIFOCON_TX_TRIGGER_LEV_8, align 4
  %69 = load i32, i32* @CIR_FIFOCON_RXFIFOCLR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CIR_FIFOCON, align 4
  %72 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %67, i32 %70, i32 %71)
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %80, %40
  %74 = load i32, i32* %10, align 4
  %75 = icmp ult i32 %74, 9
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %78 = load i32, i32* @CIR_STXFIFO, align 4
  %79 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %77, i32 1, i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %85 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %90 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %94 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ST_TX_REQUEST, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @wait_event(i32 %92, i32 %99)
  %101 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %102 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load i64, i64* @ST_TX_NONE, align 8
  %107 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %108 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %111 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load %struct.nvt_dev*, %struct.nvt_dev** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @CIR_IREN, align 4
  %118 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @nvt_cir_reg_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_cir_reg_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
