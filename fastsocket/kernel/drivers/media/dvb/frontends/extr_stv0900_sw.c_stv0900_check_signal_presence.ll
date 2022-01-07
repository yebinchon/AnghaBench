; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_check_signal_presence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_check_signal_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@AGC2I1 = common dso_local global i32 0, align 4
@AGC2I0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv0900_check_signal_presence(%struct.stv0900_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %11 = load i32, i32* @CFR2, align 4
  %12 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %10, i32 %11)
  %13 = shl i32 %12, 8
  %14 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %15 = load i32, i32* @CFR1, align 4
  %16 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %14, i32 %15)
  %17 = or i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ge2comp(i32 %18, i32 16)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %21 = load i32, i32* @AGC2I1, align 4
  %22 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %20, i32 %21)
  %23 = shl i32 %22, 8
  %24 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %25 = load i32, i32* @AGC2I0, align 4
  %26 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %24, i32 %25)
  %27 = or i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %29 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 1000
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 10
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sdiv i32 %40, 2
  %42 = mul nsw i32 65536, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %44 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 1000
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 16384
  br i1 %50, label %51, label %52

51:                                               ; preds = %2
  store i32 16384, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 8192
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 2, %57
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 -2, %62
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %55, %52
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @ge2comp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
