; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_xilinx_ps2.c_xps2_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_xilinx_ps2.c_xps2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xps2data = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@XPS2_IPISR_OFFSET = common dso_local global i64 0, align 8
@XPS2_IPIXR_RX_OVF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"receive overrun error\0A\00", align 1
@XPS2_IPIXR_RX_ERR = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@XPS2_IPIXR_TX_NOACK = common dso_local global i32 0, align 4
@XPS2_IPIXR_WDT_TOUT = common dso_local global i32 0, align 4
@SERIO_TIMEOUT = common dso_local global i32 0, align 4
@XPS2_IPIXR_RX_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"wrong rcvd byte count (%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xps2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xps2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xps2data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.xps2data*
  store %struct.xps2data* %10, %struct.xps2data** %5, align 8
  %11 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %12 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XPS2_IPISR_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @in_be32(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %18 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XPS2_IPISR_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @out_be32(i64 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @XPS2_IPIXR_RX_OVF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %30 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @XPS2_IPIXR_RX_ERR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @SERIO_PARITY, align 4
  %42 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %43 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @XPS2_IPIXR_TX_NOACK, align 4
  %49 = load i32, i32* @XPS2_IPIXR_WDT_TOUT, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @SERIO_TIMEOUT, align 4
  %55 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %56 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @XPS2_IPIXR_RX_FULL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %66 = call i32 @xps2_recv(%struct.xps2data* %65, i32* %7)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %71 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %87

77:                                               ; preds = %64
  %78 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %79 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %78, i32 0, i32 1
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %82 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @serio_interrupt(%struct.TYPE_4__* %79, i32 %80, i32 %83)
  %85 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %86 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %77, %69
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %89
}

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @xps2_recv(%struct.xps2data*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @serio_interrupt(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
