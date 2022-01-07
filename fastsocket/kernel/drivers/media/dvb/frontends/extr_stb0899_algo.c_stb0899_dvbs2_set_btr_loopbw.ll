; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_set_btr_loopbw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_set_btr_loopbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_config*, %struct.stb0899_internal }
%struct.stb0899_config = type { i32, i32 }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@BTR_LOOP_GAIN = common dso_local global i32 0, align 4
@KBTR0_RSHFT = common dso_local global i32 0, align 4
@KBTR0 = common dso_local global i32 0, align 4
@KBTR1_RSHFT = common dso_local global i32 0, align 4
@KBTR1 = common dso_local global i32 0, align 4
@KBTR2_RSHFT = common dso_local global i32 0, align 4
@STB0899_BASE_BTR_LOOP_GAIN = common dso_local global i32 0, align 4
@STB0899_OFF0_BTR_LOOP_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_dvbs2_set_btr_loopbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_set_btr_loopbw(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %23 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %24 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %23, i32 0, i32 1
  store %struct.stb0899_internal* %24, %struct.stb0899_internal** %3, align 8
  %25 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %26 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %25, i32 0, i32 0
  %27 = load %struct.stb0899_config*, %struct.stb0899_config** %26, align 8
  store %struct.stb0899_config* %27, %struct.stb0899_config** %4, align 8
  store i32 23, i32* %5, align 4
  store i32 707, i32* %6, align 4
  store i32 60, i32* %7, align 4
  %28 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %29 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 2
  %32 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %33 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 5, %34
  %36 = sdiv i32 %31, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 1, %39 ], [ %41, %40 ]
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @Log2Int(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 1, %46
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 576000
  store i32 %49, i32* %5, align 4
  %50 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %51 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %55 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 1000
  %58 = sdiv i32 %53, %57
  store i32 %58, i32* %18, align 4
  %59 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %60 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 1000000
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %18, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %169

69:                                               ; preds = %42
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 4, %73
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %76, 1000000
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 1000
  %80 = mul nsw i32 2, %79
  %81 = mul nsw i32 %80, 40
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %19, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %18, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %19, align 4
  %93 = mul nsw i32 2, %92
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %18, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = mul nsw i32 %98, 100
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @Log2Int(i32 %100)
  %102 = call i32 @Log2Int(i32 10000)
  %103 = sub nsw i32 %101, %102
  %104 = sub nsw i32 %103, 2
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = mul nsw i32 -1, %105
  %107 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %108 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %15, align 4
  %113 = shl i32 1, %112
  %114 = sdiv i32 %111, %113
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sdiv i32 %115, 10000
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, 15
  %119 = call i32 @Log2Int(i32 %118)
  %120 = sub nsw i32 %119, 20
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = mul nsw i32 -1, %121
  %123 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %124 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %16, align 4
  %129 = sub nsw i32 0, %128
  %130 = shl i32 1, %129
  %131 = mul nsw i32 %127, %130
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sdiv i32 %132, 1000000
  store i32 %133, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %134, 15
  br i1 %135, label %136, label %139

136:                                              ; preds = %69
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %137, 15
  store i32 %138, i32* %14, align 4
  store i32 15, i32* %12, align 4
  br label %139

139:                                              ; preds = %136, %69
  %140 = load i32, i32* @STB0899_S2DEMOD, align 4
  %141 = load i32, i32* @BTR_LOOP_GAIN, align 4
  %142 = call i32 @STB0899_READ_S2REG(i32 %140, i32 %141)
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* @KBTR0_RSHFT, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @STB0899_SETFIELD_VAL(i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* @KBTR0, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @STB0899_SETFIELD_VAL(i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* @KBTR1_RSHFT, align 4
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @STB0899_SETFIELD_VAL(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* @KBTR1, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @STB0899_SETFIELD_VAL(i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* @KBTR2_RSHFT, align 4
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @STB0899_SETFIELD_VAL(i32 %159, i32 %160, i32 %161)
  %163 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %164 = load i32, i32* @STB0899_S2DEMOD, align 4
  %165 = load i32, i32* @STB0899_BASE_BTR_LOOP_GAIN, align 4
  %166 = load i32, i32* @STB0899_OFF0_BTR_LOOP_GAIN, align 4
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %163, i32 %164, i32 %165, i32 %166, i32 %167)
  br label %175

169:                                              ; preds = %42
  %170 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %171 = load i32, i32* @STB0899_S2DEMOD, align 4
  %172 = load i32, i32* @STB0899_BASE_BTR_LOOP_GAIN, align 4
  %173 = load i32, i32* @STB0899_OFF0_BTR_LOOP_GAIN, align 4
  %174 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %170, i32 %171, i32 %172, i32 %173, i32 805967)
  br label %175

175:                                              ; preds = %169, %139
  ret void
}

declare dso_local i32 @Log2Int(i32) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
