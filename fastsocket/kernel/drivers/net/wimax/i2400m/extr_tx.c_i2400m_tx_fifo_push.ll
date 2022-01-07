; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_fifo_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_fifo_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64, i64, i8* }
%struct.device = type { i32 }

@I2400M_TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fifo push %zu/%zu: no space\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"fifo push %zu/%zu: tail full\0A\00", align 1
@TAIL_FULL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"fifo push %zu/%zu: no head space\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"fifo push %zu/%zu: at @%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.i2400m*, i64, i64)* @i2400m_tx_fifo_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i2400m_tx_fifo_push(%struct.i2400m* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %14 = call %struct.device* @i2400m_dev(%struct.i2400m* %13)
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %21 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %24 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  %27 = sub i64 %19, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  store i8* null, i8** %4, align 8
  br label %94

36:                                               ; preds = %3
  %37 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %38 = call i64 @__i2400m_tx_tail_room(%struct.i2400m* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %44 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = urem i64 %45, %47
  %49 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %50 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = urem i64 %51, %53
  %55 = icmp ult i64 %48, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i8*, i8** @TAIL_FULL, align 8
  store i8* %61, i8** %4, align 8
  br label %94

62:                                               ; preds = %42
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %64, i64 %65)
  store i8* null, i8** %4, align 8
  br label %94

67:                                               ; preds = %36
  %68 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %69 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %72 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = urem i64 %73, %75
  %77 = getelementptr i8, i8* %70, i64 %76
  store i8* %77, i8** %12, align 8
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %82 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = urem i64 %83, %85
  %87 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %79, i64 %80, i64 %86)
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %90 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i8*, i8** %12, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %67, %62, %56, %31
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64, i64, ...) #1

declare dso_local i64 @__i2400m_tx_tail_room(%struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
