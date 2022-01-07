; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_check_timing_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_check_timing_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@CFR_AUTOSCAN = common dso_local global i32 0, align 4
@RTC = common dso_local global i32 0, align 4
@RTCS2 = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@TMGLOCK_QUALITY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0900_internal*, i32)* @stv0900_check_timing_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_check_timing_lock(%struct.stv0900_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %13 = load i32, i32* @CARFREQ, align 4
  %14 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %16 = load i32, i32* @TMGTHRISE, align 4
  %17 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %19 = load i32, i32* @TMGTHFALL, align 4
  %20 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %22 = load i32, i32* @TMGTHRISE, align 4
  %23 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %21, i32 %22, i32 32)
  %24 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %25 = load i32, i32* @TMGTHFALL, align 4
  %26 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %24, i32 %25, i32 0)
  %27 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %28 = load i32, i32* @CFR_AUTOSCAN, align 4
  %29 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %27, i32 %28, i32 0)
  %30 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %31 = load i32, i32* @RTC, align 4
  %32 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %30, i32 %31, i32 128)
  %33 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %34 = load i32, i32* @RTCS2, align 4
  %35 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %33, i32 %34, i32 64)
  %36 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %37 = load i32, i32* @CARFREQ, align 4
  %38 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %36, i32 %37, i32 0)
  %39 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %40 = load i32, i32* @CFRINIT1, align 4
  %41 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %39, i32 %40, i32 0)
  %42 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %43 = load i32, i32* @CFRINIT0, align 4
  %44 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %42, i32 %43, i32 0)
  %45 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %46 = load i32, i32* @AGC2REF, align 4
  %47 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %45, i32 %46, i32 101)
  %48 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %49 = load i32, i32* @DMDISTATE, align 4
  %50 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %48, i32 %49, i32 24)
  %51 = call i32 @msleep(i32 7)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %65, %2
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %57 = load i32, i32* @TMGLOCK_QUALITY, align 4
  %58 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %56, i32 %57)
  %59 = icmp sge i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = call i32 @msleep(i32 1)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %69, 3
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %75 = load i32, i32* @AGC2REF, align 4
  %76 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %74, i32 %75, i32 56)
  %77 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %78 = load i32, i32* @RTC, align 4
  %79 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %77, i32 %78, i32 136)
  %80 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %81 = load i32, i32* @RTCS2, align 4
  %82 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %80, i32 %81, i32 104)
  %83 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %84 = load i32, i32* @CARFREQ, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %83, i32 %84, i32 %85)
  %87 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %88 = load i32, i32* @TMGTHRISE, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %87, i32 %88, i32 %89)
  %91 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %92 = load i32, i32* @TMGTHFALL, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
