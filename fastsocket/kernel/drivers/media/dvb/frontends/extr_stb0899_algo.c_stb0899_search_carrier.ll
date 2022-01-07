; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_search_carrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_search_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.TYPE_2__*, %struct.stb0899_internal }
%struct.TYPE_2__ = type { i16 }
%struct.stb0899_internal = type { i64, i64, i64, i16, i32, i32 }

@NOCARRIER = common dso_local global i64 0, align 8
@STB0899_CFD = common dso_local global i32 0, align 4
@CFD_ON = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Derot Freq=%d, mclk=%d\00", align 1
@CFRM = common dso_local global i32 0, align 4
@CFRL = common dso_local global i32 0, align 4
@STB0899_CFRM = common dso_local global i32 0, align 4
@CARRIEROK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"----> CARRIER OK !, Derot Freq=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_search_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search_carrier(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %12 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %11, i32 0, i32 2
  store %struct.stb0899_internal* %12, %struct.stb0899_internal** %3, align 8
  store i16 0, i16* %4, align 2
  store i16 0, i16* %5, align 2
  store i16 3, i16* %7, align 2
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* @NOCARRIER, align 8
  %14 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %15 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %17 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sdiv i64 %18, 2
  %20 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %21 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sdiv i64 %19, %22
  %24 = trunc i64 %23 to i16
  store i16 %24, i16* %6, align 2
  %25 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %26 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %25, i32 0, i32 3
  %27 = load i16, i16* %26, align 8
  store i16 %27, i16* %4, align 2
  %28 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %29 = load i32, i32* @STB0899_CFD, align 4
  %30 = call i32 @stb0899_read_reg(%struct.stb0899_state* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @CFD_ON, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @STB0899_SETFIELD_VAL(i32 %31, i32 %32, i32 1)
  %34 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %35 = load i32, i32* @STB0899_CFD, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @stb0899_write_reg(%struct.stb0899_state* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %145, %1
  %39 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %40 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FE_DEBUG, align 4
  %43 = load i16, i16* %4, align 2
  %44 = sext i16 %43 to i32
  %45 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %46 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %41, i32 %42, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47)
  %49 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %50 = call i64 @stb0899_check_carrier(%struct.stb0899_state* %49)
  %51 = load i64, i64* @NOCARRIER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %128

53:                                               ; preds = %38
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i16, i16* %4, align 2
  store i16 %56, i16* %5, align 2
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %59 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %63 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = load i16, i16* %4, align 2
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, %65
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %4, align 2
  %70 = load i16, i16* %4, align 2
  %71 = call signext i16 @abs(i16 signext %70)
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* %6, align 2
  %74 = sext i16 %73 to i32
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %53
  %77 = load i16, i16* %7, align 2
  %78 = add i16 %77, -1
  store i16 %78, i16* %7, align 2
  br label %79

79:                                               ; preds = %76, %53
  %80 = load i16, i16* %7, align 2
  %81 = icmp ne i16 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %84 = load i32, i32* @STB0899_CFD, align 4
  %85 = call i32 @stb0899_read_reg(%struct.stb0899_state* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @CFD_ON, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @STB0899_SETFIELD_VAL(i32 %86, i32 %87, i32 1)
  %89 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %90 = load i32, i32* @STB0899_CFD, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @stb0899_write_reg(%struct.stb0899_state* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @CFRM, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %97 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  %102 = load i16, i16* %4, align 2
  %103 = sext i16 %102 to i32
  %104 = mul nsw i32 %101, %103
  %105 = trunc i32 %104 to i16
  %106 = call i32 @MSB(i16 signext %105)
  %107 = call i32 @STB0899_SETFIELD_VAL(i32 %93, i32 %95, i32 %106)
  %108 = load i32, i32* @CFRL, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %112 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i32
  %117 = load i16, i16* %4, align 2
  %118 = sext i16 %117 to i32
  %119 = mul nsw i32 %116, %118
  %120 = trunc i32 %119 to i16
  %121 = call i32 @LSB(i16 signext %120)
  %122 = call i32 @STB0899_SETFIELD_VAL(i32 %108, i32 %110, i32 %121)
  %123 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %124 = load i32, i32* @STB0899_CFRM, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %126 = call i32 @stb0899_write_regs(%struct.stb0899_state* %123, i32 %124, i32* %125, i32 2)
  br label %127

127:                                              ; preds = %82, %79
  br label %128

128:                                              ; preds = %127, %38
  %129 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %130 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 0, %131
  %133 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %134 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %128
  %136 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %137 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CARRIEROK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i16, i16* %7, align 2
  %143 = sext i16 %142 to i32
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %141, %135
  %146 = phi i1 [ false, %135 ], [ %144, %141 ]
  br i1 %146, label %38, label %147

147:                                              ; preds = %145
  %148 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %149 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CARRIEROK, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %182

153:                                              ; preds = %147
  %154 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %155 = load i32, i32* @STB0899_CFRM, align 4
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %157 = call i32 @stb0899_read_regs(%struct.stb0899_state* %154, i32 %155, i32* %156, i32 2)
  %158 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %159 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i16, i16* %161, align 2
  %163 = sext i16 %162 to i32
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @MAKEWORD16(i32 %165, i32 %167)
  %169 = mul nsw i32 %163, %168
  %170 = trunc i32 %169 to i16
  %171 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %172 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %171, i32 0, i32 3
  store i16 %170, i16* %172, align 8
  %173 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %174 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @FE_DEBUG, align 4
  %177 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %178 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %177, i32 0, i32 3
  %179 = load i16, i16* %178, align 8
  %180 = sext i16 %179 to i32
  %181 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %175, i32 %176, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  br label %186

182:                                              ; preds = %147
  %183 = load i16, i16* %5, align 2
  %184 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %185 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %184, i32 0, i32 3
  store i16 %183, i16* %185, align 8
  br label %186

186:                                              ; preds = %182, %153
  %187 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %188 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  ret i32 %190
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @stb0899_check_carrier(%struct.stb0899_state*) #1

declare dso_local signext i16 @abs(i16 signext) #1

declare dso_local i32 @MSB(i16 signext) #1

declare dso_local i32 @LSB(i16 signext) #1

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
