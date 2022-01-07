; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_mpxed_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_mpxed_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SCxSR = common dso_local global i32 0, align 4
@SCSCR = common dso_local global i32 0, align 4
@SCI_CTRL_FLAGS_REIE = common dso_local global i16 0, align 2
@SCI_CTRL_FLAGS_RIE = common dso_local global i16 0, align 2
@SCI_CTRL_FLAGS_TIE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sci_mpxed_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_mpxed_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.uart_port*
  store %struct.uart_port* %11, %struct.uart_port** %8, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %14 = load i32, i32* @SCxSR, align 4
  %15 = call zeroext i16 @sci_in(%struct.uart_port* %13, i32 %14)
  store i16 %15, i16* %5, align 2
  %16 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %17 = load i32, i32* @SCSCR, align 4
  %18 = call zeroext i16 @sci_in(%struct.uart_port* %16, i32 %17)
  store i16 %18, i16* %6, align 2
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @SCI_CTRL_FLAGS_REIE, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @SCI_CTRL_FLAGS_RIE, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %22, %24
  %26 = and i32 %20, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %7, align 2
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %31 = call zeroext i16 @SCxSR_TDxE(%struct.uart_port* %30)
  %32 = zext i16 %31 to i32
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @SCI_CTRL_FLAGS_TIE, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @sci_tx_interrupt(i32 %43, i8* %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %35, %2
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %50 = call zeroext i16 @SCxSR_RDxF(%struct.uart_port* %49)
  %51 = zext i16 %50 to i32
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @SCI_CTRL_FLAGS_RIE, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @sci_rx_interrupt(i32 %62, i8* %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %54, %46
  %66 = load i16, i16* %5, align 2
  %67 = zext i16 %66 to i32
  %68 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %69 = call zeroext i16 @SCxSR_ERRORS(%struct.uart_port* %68)
  %70 = zext i16 %69 to i32
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i16, i16* %7, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @sci_er_interrupt(i32 %78, i8* %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %73, %65
  %82 = load i16, i16* %5, align 2
  %83 = zext i16 %82 to i32
  %84 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %85 = call zeroext i16 @SCxSR_BRK(%struct.uart_port* %84)
  %86 = zext i16 %85 to i32
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load i16, i16* %7, align 2
  %91 = zext i16 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @sci_br_interrupt(i32 %94, i8* %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %89, %81
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local zeroext i16 @sci_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @SCxSR_TDxE(%struct.uart_port*) #1

declare dso_local i32 @sci_tx_interrupt(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_RDxF(%struct.uart_port*) #1

declare dso_local i32 @sci_rx_interrupt(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_ERRORS(%struct.uart_port*) #1

declare dso_local i32 @sci_er_interrupt(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_BRK(%struct.uart_port*) #1

declare dso_local i32 @sci_br_interrupt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
