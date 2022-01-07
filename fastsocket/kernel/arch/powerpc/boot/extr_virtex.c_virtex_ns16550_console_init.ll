; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_virtex.c_virtex_ns16550_console_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_virtex.c_virtex_ns16550_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"reg-offset\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @virtex_ns16550_console_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtex_ns16550_console_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @dt_get_virtual_reg(i8* %11, i8** %4, i32 1)
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %110

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i32* %6 to i8*
  %18 = call i32 @getprop(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17, i32 4)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i32* %5 to i8*
  %30 = call i32 @getprop(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 4)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i8*, i8** %3, align 8
  %37 = bitcast i32* %8 to i8*
  %38 = call i32 @getprop(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 4)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 4
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 9600, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i8*, i8** %3, align 8
  %45 = bitcast i32* %7 to i8*
  %46 = call i32 @getprop(i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 4)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %110

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 16, %53
  %55 = sdiv i32 %52, %54
  store i32 %55, i32* %9, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* @UART_LCR, align 4
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load i32, i32* @UART_LCR_DLAB, align 4
  %63 = call i32 @out_8(i8* %61, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @UART_DLL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  %72 = call i32 @out_8(i8* %69, i32 %71)
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @UART_DLM, align 4
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 8
  %81 = call i32 @out_8(i8* %78, i32 %80)
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* @UART_LCR, align 4
  %84 = load i32, i32* %5, align 4
  %85 = shl i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = load i32, i32* @UART_LCR_WLEN8, align 4
  %89 = call i32 @out_8(i8* %87, i32 %88)
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* @UART_MCR, align 4
  %92 = load i32, i32* %5, align 4
  %93 = shl i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  %96 = load i32, i32* @UART_MCR_RTS, align 4
  %97 = load i32, i32* @UART_MCR_DTR, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @out_8(i8* %95, i32 %98)
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* @UART_FCR, align 4
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %107 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @out_8(i8* %105, i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %51, %50, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @dt_get_virtual_reg(i8*, i8**, i32) #1

declare dso_local i32 @getprop(i8*, i8*, i8*, i32) #1

declare dso_local i32 @out_8(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
