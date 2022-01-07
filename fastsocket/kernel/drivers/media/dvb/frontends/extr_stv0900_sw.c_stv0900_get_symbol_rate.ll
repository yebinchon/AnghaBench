; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_get_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_get_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@SYMB_FREQ3 = common dso_local global i32 0, align 4
@SYMB_FREQ2 = common dso_local global i32 0, align 4
@SYMB_FREQ1 = common dso_local global i32 0, align 4
@SYMB_FREQ0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"lock: srate=%d r0=0x%x r1=0x%x r2=0x%x r3=0x%x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0900_internal*, i32, i32)* @stv0900_get_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_get_symbol_rate(%struct.stv0900_internal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv0900_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %13 = load i32, i32* @SYMB_FREQ3, align 4
  %14 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %12, i32 %13)
  %15 = shl i32 %14, 24
  %16 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %17 = load i32, i32* @SYMB_FREQ2, align 4
  %18 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %16, i32 %17)
  %19 = shl i32 %18, 16
  %20 = add nsw i32 %15, %19
  %21 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %22 = load i32, i32* @SYMB_FREQ1, align 4
  %23 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %21, i32 %22)
  %24 = shl i32 %23, 8
  %25 = add nsw i32 %20, %24
  %26 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %27 = load i32, i32* @SYMB_FREQ0, align 4
  %28 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %26, i32 %27)
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %32 = load i32, i32* @SYMB_FREQ0, align 4
  %33 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %31, i32 %32)
  %34 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %35 = load i32, i32* @SYMB_FREQ1, align 4
  %36 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %34, i32 %35)
  %37 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %38 = load i32, i32* @SYMB_FREQ2, align 4
  %39 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %37, i32 %38)
  %40 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %41 = load i32, i32* @SYMB_FREQ3, align 4
  %42 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %40, i32 %41)
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 16
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = srem i32 %48, 65536
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = srem i32 %50, 65536
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %55, %56
  %58 = ashr i32 %57, 16
  %59 = add nsw i32 %54, %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %60, %61
  %63 = ashr i32 %62, 16
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
