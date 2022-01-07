; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_itd1000.c_itd1000_set_lo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_itd1000.c_itd1000_set_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.itd1000_state = type { i32 }

@FREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"frequency: %dkHz (wanted) %dkHz (set), PLLF = %d, PLLN = %d\00", align 1
@PLLNH = common dso_local global i64 0, align 8
@PLLNL = common dso_local global i64 0, align 8
@PLLFH = common dso_local global i64 0, align 8
@PLLFM = common dso_local global i64 0, align 8
@PLLFL = common dso_local global i64 0, align 8
@itd1000_fre_values = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fre_values: %d\00", align 1
@RFTR = common dso_local global i64 0, align 8
@RFST1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.itd1000_state*, i32)* @itd1000_set_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itd1000_set_lo(%struct.itd1000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.itd1000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.itd1000_state* %0, %struct.itd1000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 1000
  %12 = sdiv i32 %11, 2
  %13 = load i32, i32* @FREF, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = srem i32 %15, 1000000
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 1000000
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 %19, 1048576
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @do_div(i32 %21, i32 1000000)
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = sdiv i32 %27, 1048576
  %29 = add nsw i32 %25, %28
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* @FREF, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %34 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %37 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i8*, i32, ...) @deb(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %43 = load i64, i64* @PLLNH, align 8
  %44 = call i32 @itd1000_write_reg(%struct.itd1000_state* %42, i64 %43, i32 128)
  %45 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %46 = load i64, i64* @PLLNL, align 8
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @itd1000_write_reg(%struct.itd1000_state* %45, i64 %46, i32 %48)
  %50 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %51 = load i64, i64* @PLLFH, align 8
  %52 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %53 = load i64, i64* @PLLFH, align 8
  %54 = call i32 @itd1000_read_reg(%struct.itd1000_state* %52, i64 %53)
  %55 = and i32 %54, 240
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 15
  %59 = or i32 %55, %58
  %60 = call i32 @itd1000_write_reg(%struct.itd1000_state* %50, i64 %51, i32 %59)
  %61 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %62 = load i64, i64* @PLLFM, align 8
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = call i32 @itd1000_write_reg(%struct.itd1000_state* %61, i64 %62, i32 %65)
  %67 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %68 = load i64, i64* @PLLFL, align 8
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 0
  %71 = and i32 %70, 255
  %72 = call i32 @itd1000_write_reg(%struct.itd1000_state* %67, i64 %68, i32 %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %127, %2
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_fre_values, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %130

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_fre_values, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %79, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i8*, i32, ...) @deb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %91 = load i64, i64* @RFTR, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_fre_values, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @itd1000_write_reg(%struct.itd1000_state* %90, i64 %91, i32 %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %122, %87
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 9
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %106 = load i64, i64* @RFST1, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @itd1000_fre_values, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @itd1000_write_reg(%struct.itd1000_state* %105, i64 %109, i32 %120)
  br label %122

122:                                              ; preds = %104
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %101

125:                                              ; preds = %101
  br label %130

126:                                              ; preds = %78
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %73

130:                                              ; preds = %125, %73
  %131 = load %struct.itd1000_state*, %struct.itd1000_state** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @itd1000_set_vco(%struct.itd1000_state* %131, i32 %132)
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @deb(i8*, i32, ...) #1

declare dso_local i32 @itd1000_write_reg(%struct.itd1000_state*, i64, i32) #1

declare dso_local i32 @itd1000_read_reg(%struct.itd1000_state*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @itd1000_set_vco(%struct.itd1000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
