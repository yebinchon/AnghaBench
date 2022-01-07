; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_itd1000.c_itd1000_set_lpf_bw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_itd1000.c_itd1000_set_lpf_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.itd1000_state = type { i32 }

@CON1 = common dso_local global i32 0, align 4
@PLLFH = common dso_local global i32 0, align 4
@BBGVMIN = common dso_local global i32 0, align 4
@BW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"symbol_rate = %d\00", align 1
@itd1000_lpf_pga = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"symrate: index: %d pgaext: %x, bbgvmin: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.itd1000_state*, i64)* @itd1000_set_lpf_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itd1000_set_lpf_bw(%struct.itd1000_state* %0, i64 %1) #0 {
  %3 = alloca %struct.itd1000_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.itd1000_state* %0, %struct.itd1000_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %11 = load i32, i32* @CON1, align 4
  %12 = call i32 @itd1000_read_reg(%struct.itd1000_state* %10, i32 %11)
  %13 = and i32 %12, 253
  store i32 %13, i32* %6, align 4
  %14 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %15 = load i32, i32* @PLLFH, align 4
  %16 = call i32 @itd1000_read_reg(%struct.itd1000_state* %14, i32 %15)
  %17 = and i32 %16, 15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %19 = load i32, i32* @BBGVMIN, align 4
  %20 = call i32 @itd1000_read_reg(%struct.itd1000_state* %18, i32 %19)
  %21 = and i32 %20, 240
  store i32 %21, i32* %8, align 4
  %22 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %23 = load i32, i32* @BW, align 4
  %24 = call i32 @itd1000_read_reg(%struct.itd1000_state* %22, i32 %23)
  %25 = and i32 %24, 240
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, i32, ...) @deb(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %30 = load i32, i32* @CON1, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 2
  %33 = call i32 @itd1000_write_reg(%struct.itd1000_state* %29, i32 %30, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %94, %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_lpf_pga, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %34
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_lpf_pga, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %40, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_lpf_pga, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_lpf_pga, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @deb(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %55, i32 %61)
  %63 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %64 = load i32, i32* @PLLFH, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_lpf_pga, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %71, 4
  %73 = or i32 %65, %72
  %74 = call i32 @itd1000_write_reg(%struct.itd1000_state* %63, i32 %64, i32 %73)
  %75 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %76 = load i32, i32* @BBGVMIN, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_lpf_pga, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %77, %83
  %85 = call i32 @itd1000_write_reg(%struct.itd1000_state* %75, i32 %76, i32 %84)
  %86 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %87 = load i32, i32* @BW, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, 15
  %91 = or i32 %88, %90
  %92 = call i32 @itd1000_write_reg(%struct.itd1000_state* %86, i32 %87, i32 %91)
  br label %97

93:                                               ; preds = %39
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %34

97:                                               ; preds = %48, %34
  %98 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %99 = load i32, i32* @CON1, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @itd1000_write_reg(%struct.itd1000_state* %98, i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @itd1000_read_reg(%struct.itd1000_state*, i32) #1

declare dso_local i32 @deb(i8*, i32, ...) #1

declare dso_local i32 @itd1000_write_reg(%struct.itd1000_state*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
