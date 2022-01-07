; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_ser_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_ser_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i32 }

@ser_interrupt.tx_started = internal global i32 0, align 4
@ser_interrupt.reentered_ready_mask = internal global i64 0, align 8
@R_IRQ_MASK1_RD = common dso_local global i64* null, align 8
@rs_table = common dso_local global %struct.e100_serial* null, align 8
@e100_ser_int_mask = common dso_local global i64 0, align 8
@NR_PORTS = common dso_local global i32 0, align 4
@ser0_ready = common dso_local global i32 0, align 4
@ser1_ready = common dso_local global i32 0, align 4
@ser2_ready = common dso_local global i32 0, align 4
@ser3_ready = common dso_local global i32 0, align 4
@R_IRQ_MASK1_CLR = common dso_local global i64* null, align 8
@R_VECT_MASK_SET = common dso_local global i32* null, align 8
@serial = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@SERIAL_DEBUG_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ser_int reentered with TX %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ser_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ser_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.e100_serial*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i64 256, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.e100_serial*, %struct.e100_serial** @rs_table, align 8
  store %struct.e100_serial* %18, %struct.e100_serial** %5, align 8
  %19 = load i64, i64* @e100_ser_int_mask, align 8
  %20 = load i64, i64* %8, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %39, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NR_PORTS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  %32 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %33 = call i32 @handle_ser_rx_interrupt(%struct.e100_serial* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %36 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %35, i64 1
  store %struct.e100_serial* %36, %struct.e100_serial** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = shl i64 %37, 2
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load volatile i32, i32* @ser_interrupt.tx_started, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %101, label %45

45:                                               ; preds = %42
  store i64 1, i64* %12, align 8
  %46 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %47 = load i32, i32* @ser0_ready, align 4
  %48 = call i64 @IO_MASK(i64* %46, i32 %47)
  %49 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %50 = load i32, i32* @ser1_ready, align 4
  %51 = call i64 @IO_MASK(i64* %49, i32 %50)
  %52 = or i64 %48, %51
  %53 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %54 = load i32, i32* @ser2_ready, align 4
  %55 = call i64 @IO_MASK(i64* %53, i32 %54)
  %56 = or i64 %52, %55
  %57 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %58 = load i32, i32* @ser3_ready, align 4
  %59 = call i64 @IO_MASK(i64* %57, i32 %58)
  %60 = or i64 %56, %59
  %61 = load i64, i64* %8, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %96, %45
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load i64*, i64** @R_IRQ_MASK1_CLR, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32*, i32** @R_VECT_MASK_SET, align 8
  %70 = load i32, i32* @serial, align 4
  %71 = load i32, i32* @set, align 4
  %72 = call i32 @IO_STATE(i32* %69, i32 %70, i32 %71)
  %73 = load i32*, i32** @R_VECT_MASK_SET, align 8
  store i32 %72, i32* %73, align 4
  %74 = call i32 (...) @local_irq_enable()
  store i64 512, i64* %11, align 8
  %75 = load %struct.e100_serial*, %struct.e100_serial** @rs_table, align 8
  store %struct.e100_serial* %75, %struct.e100_serial** %5, align 8
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %93, %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @NR_PORTS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %11, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  store i32 1, i32* %10, align 4
  %86 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %87 = call i32 @handle_ser_tx_interrupt(%struct.e100_serial* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %90 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %89, i64 1
  store %struct.e100_serial* %90, %struct.e100_serial** %5, align 8
  %91 = load i64, i64* %11, align 8
  %92 = shl i64 %91, 2
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %76

96:                                               ; preds = %76
  %97 = call i32 (...) @local_irq_disable()
  %98 = load volatile i64, i64* @ser_interrupt.reentered_ready_mask, align 8
  store i64 %98, i64* %8, align 8
  br label %63

99:                                               ; preds = %63
  %100 = call i32 (...) @local_irq_disable()
  store i64 0, i64* %12, align 8
  br label %132

101:                                              ; preds = %42
  %102 = load i64, i64* %8, align 8
  %103 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %104 = load i32, i32* @ser0_ready, align 4
  %105 = call i64 @IO_MASK(i64* %103, i32 %104)
  %106 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %107 = load i32, i32* @ser1_ready, align 4
  %108 = call i64 @IO_MASK(i64* %106, i32 %107)
  %109 = or i64 %105, %108
  %110 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %111 = load i32, i32* @ser2_ready, align 4
  %112 = call i64 @IO_MASK(i64* %110, i32 %111)
  %113 = or i64 %109, %112
  %114 = load i64*, i64** @R_IRQ_MASK1_RD, align 8
  %115 = load i32, i32* @ser3_ready, align 4
  %116 = call i64 @IO_MASK(i64* %114, i32 %115)
  %117 = or i64 %113, %116
  %118 = and i64 %102, %117
  store i64 %118, i64* %13, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %101
  %122 = load i64, i64* %13, align 8
  %123 = load volatile i64, i64* @ser_interrupt.reentered_ready_mask, align 8
  %124 = or i64 %123, %122
  store volatile i64 %124, i64* @ser_interrupt.reentered_ready_mask, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i64*, i64** @R_IRQ_MASK1_CLR, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i32, i32* @SERIAL_DEBUG_LINE, align 4
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @DEBUG_LOG(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = call i32 @DFLOW(i32 %129)
  br label %131

131:                                              ; preds = %121, %101
  br label %132

132:                                              ; preds = %131, %99
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @local_irq_restore(i64 %133)
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @IRQ_RETVAL(i32 %135)
  ret i32 %136
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @handle_ser_rx_interrupt(%struct.e100_serial*) #1

declare dso_local i64 @IO_MASK(i64*, i32) #1

declare dso_local i32 @IO_STATE(i32*, i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @handle_ser_tx_interrupt(%struct.e100_serial*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i32, i8*, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
