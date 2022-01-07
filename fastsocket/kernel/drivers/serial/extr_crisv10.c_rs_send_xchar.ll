; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_send_xchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i64 }
%struct.e100_serial = type { i8, i32, i32*, i64 }

@R_DMA_CH6_CMD = common dso_local global i32 0, align 4
@cmd = common dso_local global i32 0, align 4
@hold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rs_send_xchar 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @rs_send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.e100_serial*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.e100_serial*
  store %struct.e100_serial* %10, %struct.e100_serial** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %14 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i32, i32* @R_DMA_CH6_CMD, align 4
  %19 = load i32, i32* @cmd, align 4
  %20 = load i32, i32* @hold, align 4
  %21 = call i32 @IO_STATE(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %23 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %38, %17
  %26 = load i32, i32* @R_DMA_CH6_CMD, align 4
  %27 = load i32, i32* @cmd, align 4
  %28 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %29 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IO_EXTRACT(i32 %26, i32 %27, i32 %31)
  %33 = load i32, i32* @R_DMA_CH6_CMD, align 4
  %34 = load i32, i32* @cmd, align 4
  %35 = load i32, i32* @hold, align 4
  %36 = call i64 @IO_STATE_VALUE(i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %25

39:                                               ; preds = %25
  %40 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %41 = call i32 @e100_disable_txdma_channel(%struct.e100_serial* %40)
  br label %42

42:                                               ; preds = %39, %2
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = call i32 @rs_start(%struct.tty_struct* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %52 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8, i8* %4, align 1
  %55 = call i32 @DEBUG_LOG(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 signext %54)
  %56 = call i32 @DFLOW(i32 %55)
  %57 = load i8, i8* %4, align 1
  %58 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %59 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %58, i32 0, i32 0
  store i8 %57, i8* %59, align 8
  %60 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %61 = call i32 @e100_enable_serial_tx_ready_irq(%struct.e100_serial* %60)
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @IO_STATE(i32, i32, i32) #1

declare dso_local i64 @IO_EXTRACT(i32, i32, i32) #1

declare dso_local i64 @IO_STATE_VALUE(i32, i32, i32) #1

declare dso_local i32 @e100_disable_txdma_channel(%struct.e100_serial*) #1

declare dso_local i32 @rs_start(%struct.tty_struct*) #1

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i32, i8*, i8 signext) #1

declare dso_local i32 @e100_enable_serial_tx_ready_irq(%struct.e100_serial*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
