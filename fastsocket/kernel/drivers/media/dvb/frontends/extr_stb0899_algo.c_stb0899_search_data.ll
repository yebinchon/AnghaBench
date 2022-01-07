; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_search_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_search_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.TYPE_2__*, %struct.stb0899_params, %struct.stb0899_internal }
%struct.TYPE_2__ = type { i16 }
%struct.stb0899_params = type { i64 }
%struct.stb0899_internal = type { i64, i64, i16, i64, i32 }

@CARRIEROK = common dso_local global i64 0, align 8
@DATAOK = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Derot freq=%d, mclk=%d\00", align 1
@STB0899_CFD = common dso_local global i32 0, align 4
@CFD_ON = common dso_local global i32 0, align 4
@CFRM = common dso_local global i32 0, align 4
@CFRL = common dso_local global i32 0, align 4
@STB0899_CFRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"------> DATAOK ! Derot Freq=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_search_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search_data(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stb0899_internal*, align 8
  %11 = alloca %struct.stb0899_params*, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  store i16 3, i16* %6, align 2
  store i32 1, i32* %9, align 4
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %13 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %12, i32 0, i32 3
  store %struct.stb0899_internal* %13, %struct.stb0899_internal** %10, align 8
  %14 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %15 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %14, i32 0, i32 2
  store %struct.stb0899_params* %15, %struct.stb0899_params** %11, align 8
  %16 = load %struct.stb0899_params*, %struct.stb0899_params** %11, align 8
  %17 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sdiv i64 %18, 4
  %20 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %21 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sdiv i64 %19, %22
  %24 = trunc i64 %23 to i16
  store i16 %24, i16* %4, align 2
  %25 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %26 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sdiv i64 %27, 2
  %29 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %30 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sdiv i64 %28, %31
  %33 = trunc i64 %32 to i16
  store i16 %33, i16* %5, align 2
  %34 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %35 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %34, i32 0, i32 2
  %36 = load i16, i16* %35, align 8
  store i16 %36, i16* %3, align 2
  br label %37

37:                                               ; preds = %150, %1
  %38 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %39 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CARRIEROK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %45 = call i64 @stb0899_check_data(%struct.stb0899_state* %44)
  %46 = load i64, i64* @DATAOK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %133

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %51 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = load i16, i16* %4, align 2
  %55 = sext i16 %54 to i32
  %56 = mul nsw i32 %53, %55
  %57 = load i16, i16* %3, align 2
  %58 = sext i16 %57 to i32
  %59 = add nsw i32 %58, %56
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %3, align 2
  %61 = load i16, i16* %3, align 2
  %62 = call signext i16 @abs(i16 signext %61)
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* %5, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %48
  %68 = load i16, i16* %6, align 2
  %69 = add i16 %68, -1
  store i16 %69, i16* %6, align 2
  br label %70

70:                                               ; preds = %67, %48
  %71 = load i16, i16* %6, align 2
  %72 = icmp ne i16 %71, 0
  br i1 %72, label %73, label %132

73:                                               ; preds = %70
  %74 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %75 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FE_DEBUG, align 4
  %78 = load i16, i16* %3, align 2
  %79 = sext i16 %78 to i32
  %80 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %81 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %76, i32 %77, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %82)
  %84 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %85 = load i32, i32* @STB0899_CFD, align 4
  %86 = call i32 @stb0899_read_reg(%struct.stb0899_state* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @CFD_ON, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @STB0899_SETFIELD_VAL(i32 %87, i32 %88, i32 1)
  %90 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %91 = load i32, i32* @STB0899_CFD, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @stb0899_write_reg(%struct.stb0899_state* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @CFRM, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %98 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  %103 = load i16, i16* %3, align 2
  %104 = sext i16 %103 to i32
  %105 = mul nsw i32 %102, %104
  %106 = trunc i32 %105 to i16
  %107 = call i32 @MSB(i16 signext %106)
  %108 = call i32 @STB0899_SETFIELD_VAL(i32 %94, i32 %96, i32 %107)
  %109 = load i32, i32* @CFRL, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %113 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = load i16, i16* %3, align 2
  %119 = sext i16 %118 to i32
  %120 = mul nsw i32 %117, %119
  %121 = trunc i32 %120 to i16
  %122 = call i32 @LSB(i16 signext %121)
  %123 = call i32 @STB0899_SETFIELD_VAL(i32 %109, i32 %111, i32 %122)
  %124 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %125 = load i32, i32* @STB0899_CFRM, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %127 = call i32 @stb0899_write_regs(%struct.stb0899_state* %124, i32 %125, i32* %126, i32 2)
  %128 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %129 = call i32 @stb0899_check_carrier(%struct.stb0899_state* %128)
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %73, %70
  br label %133

133:                                              ; preds = %132, %43
  %134 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %135 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 0, %136
  %138 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %139 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %133
  %141 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %142 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @DATAOK, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i16, i16* %6, align 2
  %148 = sext i16 %147 to i32
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %146, %140
  %151 = phi i1 [ false, %140 ], [ %149, %146 ]
  br i1 %151, label %37, label %152

152:                                              ; preds = %150
  %153 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %154 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DATAOK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %152
  %159 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %160 = load i32, i32* @STB0899_CFRM, align 4
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %162 = call i32 @stb0899_read_regs(%struct.stb0899_state* %159, i32 %160, i32* %161, i32 2)
  %163 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %164 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i32
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @MAKEWORD16(i32 %170, i32 %172)
  %174 = mul nsw i32 %168, %173
  %175 = trunc i32 %174 to i16
  %176 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %177 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %176, i32 0, i32 2
  store i16 %175, i16* %177, align 8
  %178 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %179 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @FE_DEBUG, align 4
  %182 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %183 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %182, i32 0, i32 2
  %184 = load i16, i16* %183, align 8
  %185 = sext i16 %184 to i32
  %186 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %180, i32 %181, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %158, %152
  %188 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %189 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  ret i32 %191
}

declare dso_local i64 @stb0899_check_data(%struct.stb0899_state*) #1

declare dso_local signext i16 @abs(i16 signext) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @MSB(i16 signext) #1

declare dso_local i32 @LSB(i16 signext) #1

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_check_carrier(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
