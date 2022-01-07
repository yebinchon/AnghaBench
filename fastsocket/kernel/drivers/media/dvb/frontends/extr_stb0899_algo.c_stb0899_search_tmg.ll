; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_search_tmg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_search_tmg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.TYPE_2__*, %struct.stb0899_params, %struct.stb0899_internal }
%struct.TYPE_2__ = type { i16 }
%struct.stb0899_params = type { i64 }
%struct.stb0899_internal = type { i64, i64, i64, i32, i32 }

@NOTIMING = common dso_local global i64 0, align 8
@TIMINGOK = common dso_local global i64 0, align 8
@CFRM = common dso_local global i32 0, align 4
@CFRL = common dso_local global i32 0, align 4
@STB0899_CFRM = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"------->TIMING OK ! Derot Freq = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_search_tmg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search_tmg(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_params*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %12 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %11, i32 0, i32 3
  store %struct.stb0899_internal* %12, %struct.stb0899_internal** %3, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 2
  store %struct.stb0899_params* %14, %struct.stb0899_params** %4, align 8
  store i16 0, i16* %6, align 2
  store i16 3, i16* %8, align 2
  store i32 0, i32* %9, align 4
  %15 = load i64, i64* @NOTIMING, align 8
  %16 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %17 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %19 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sdiv i64 %20, 2
  %22 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %23 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sdiv i64 %21, %24
  %26 = trunc i64 %25 to i16
  store i16 %26, i16* %7, align 2
  %27 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %28 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sdiv i64 %29, 2
  %31 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %32 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sdiv i64 %30, %33
  %35 = trunc i64 %34 to i16
  store i16 %35, i16* %5, align 2
  br label %36

36:                                               ; preds = %109, %1
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %38 = call i64 @stb0899_check_tmg(%struct.stb0899_state* %37)
  %39 = load i64, i64* @TIMINGOK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i16, i16* %8, align 2
  %43 = sext i16 %42 to i32
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  br i1 %46, label %47, label %116

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %52 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load i16, i16* %5, align 2
  %56 = sext i16 %55 to i32
  %57 = mul nsw i32 %54, %56
  %58 = load i16, i16* %6, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %6, align 2
  %62 = load i16, i16* %6, align 2
  %63 = call signext i16 @abs(i16 signext %62)
  %64 = sext i16 %63 to i32
  %65 = load i16, i16* %7, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load i16, i16* %8, align 2
  %70 = add i16 %69, -1
  store i16 %70, i16* %8, align 2
  br label %71

71:                                               ; preds = %68, %47
  %72 = load i16, i16* %8, align 2
  %73 = icmp ne i16 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %71
  %75 = load i32, i32* @CFRM, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %79 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = load i16, i16* %6, align 2
  %85 = sext i16 %84 to i32
  %86 = mul nsw i32 %83, %85
  %87 = trunc i32 %86 to i16
  %88 = call i32 @MSB(i16 signext %87)
  %89 = call i32 @STB0899_SETFIELD_VAL(i32 %75, i32 %77, i32 %88)
  %90 = load i32, i32* @CFRL, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %94 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = load i16, i16* %6, align 2
  %100 = sext i16 %99 to i32
  %101 = mul nsw i32 %98, %100
  %102 = trunc i32 %101 to i16
  %103 = call i32 @LSB(i16 signext %102)
  %104 = call i32 @STB0899_SETFIELD_VAL(i32 %90, i32 %92, i32 %103)
  %105 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %106 = load i32, i32* @STB0899_CFRM, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %108 = call i32 @stb0899_write_regs(%struct.stb0899_state* %105, i32 %106, i32* %107, i32 2)
  br label %109

109:                                              ; preds = %74, %71
  %110 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %111 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 0, %112
  %114 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %115 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  br label %36

116:                                              ; preds = %45
  %117 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %118 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TIMINGOK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %116
  %123 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %124 = load i32, i32* @STB0899_CFRM, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %126 = call i32 @stb0899_read_regs(%struct.stb0899_state* %123, i32 %124, i32* %125, i32 2)
  %127 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %128 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @MAKEWORD16(i32 %134, i32 %136)
  %138 = mul nsw i32 %132, %137
  %139 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %140 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %142 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @FE_DEBUG, align 4
  %145 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %146 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dprintk(i32 %143, i32 %144, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %122, %116
  %150 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %151 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  ret i32 %153
}

declare dso_local i64 @stb0899_check_tmg(%struct.stb0899_state*) #1

declare dso_local signext i16 @abs(i16 signext) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @MSB(i16 signext) #1

declare dso_local i32 @LSB(i16 signext) #1

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
