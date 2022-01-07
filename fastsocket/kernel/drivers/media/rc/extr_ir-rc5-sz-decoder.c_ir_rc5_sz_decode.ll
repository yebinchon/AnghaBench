; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-rc5-sz-decoder.c_ir_rc5_sz_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-rc5-sz-decoder.c_ir_rc5_sz_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.rc5_sz_dec }
%struct.rc5_sz_dec = type { i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC_TYPE_RC5_SZ = common dso_local global i32 0, align 4
@RC5_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RC5-sz decode started at state %i (%uus %s)\0A\00", align 1
@RC5_SZ_NBITS = common dso_local global i32 0, align 4
@RC5_BIT_START = common dso_local global i32 0, align 4
@RC5_BIT_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RC5-sz scancode 0x%04x (toggle: %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"RC5-sz decode failed at state %i (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_rc5_sz_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rc5_sz_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rc5_sz_dec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %2, i64* %14, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %15 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %16 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store %struct.rc5_sz_dec* %18, %struct.rc5_sz_dec** %7, align 8
  %19 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RC_TYPE_RC5_SZ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %198

28:                                               ; preds = %3
  %29 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @is_timing_event(i64 %31, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %42 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %41, i32 0, i32 0
  store i32 128, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %36
  store i32 0, i32* %4, align 4
  br label %198

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RC5_UNIT, align 4
  %48 = load i32, i32* @RC5_UNIT, align 4
  %49 = sdiv i32 %48, 2
  %50 = call i32 @geq_margin(i32 %46, i32 %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %183

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %143, %82, %53
  %55 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %56 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @TO_US(i32 %59)
  %61 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @TO_STR(i32 %62)
  %64 = call i32 (i32, i8*, i32, i32, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  %65 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RC5_UNIT, align 4
  %68 = load i32, i32* @RC5_UNIT, align 4
  %69 = sdiv i32 %68, 2
  %70 = call i32 @geq_margin(i32 %66, i32 %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %198

73:                                               ; preds = %54
  %74 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %75 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %182 [
    i32 128, label %77
    i32 130, label %92
    i32 131, label %121
    i32 129, label %146
  ]

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %182

82:                                               ; preds = %77
  %83 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %84 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %83, i32 0, i32 0
  store i32 130, i32* %84, align 4
  %85 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %86 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* @RC5_SZ_NBITS, align 4
  %88 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %89 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @RC5_BIT_START, align 4
  %91 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %90)
  br label %54

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RC5_BIT_START, align 4
  %96 = load i32, i32* @RC5_UNIT, align 4
  %97 = sdiv i32 %96, 2
  %98 = call i32 @eq_margin(i32 %94, i32 %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  br label %182

101:                                              ; preds = %92
  %102 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %103 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %101
  %110 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %111 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %101
  %115 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %116 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %120 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %119, i32 0, i32 0
  store i32 131, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %198

121:                                              ; preds = %73
  %122 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %123 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = call i32 @is_transition(%struct.ir_raw_event* %5, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %182

129:                                              ; preds = %121
  %130 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %131 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %134 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %139 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %138, i32 0, i32 0
  store i32 129, i32* %139, align 4
  br label %143

140:                                              ; preds = %129
  %141 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %142 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %141, i32 0, i32 0
  store i32 130, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* @RC5_BIT_END, align 4
  %145 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %144)
  br label %54

146:                                              ; preds = %73
  %147 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %182

151:                                              ; preds = %146
  %152 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %153 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 63
  %156 = ashr i32 %155, 0
  store i32 %156, i32* %9, align 4
  %157 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %158 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 12224
  %161 = ashr i32 %160, 6
  store i32 %161, i32* %10, align 4
  %162 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %163 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 4096
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %10, align 4
  %170 = shl i32 %169, 6
  %171 = load i32, i32* %9, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 (i32, i8*, i32, i32, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @rc_keydown(%struct.rc_dev* %176, i32 %177, i32 %178)
  %180 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %181 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %180, i32 0, i32 0
  store i32 128, i32* %181, align 4
  store i32 0, i32* %4, align 4
  br label %198

182:                                              ; preds = %73, %150, %128, %100, %81
  br label %183

183:                                              ; preds = %182, %52
  %184 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %185 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @TO_US(i32 %188)
  %190 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @TO_STR(i32 %191)
  %193 = call i32 (i32, i8*, i32, i32, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %186, i32 %189, i32 %192)
  %194 = load %struct.rc5_sz_dec*, %struct.rc5_sz_dec** %7, align 8
  %195 = getelementptr inbounds %struct.rc5_sz_dec, %struct.rc5_sz_dec* %194, i32 0, i32 0
  store i32 128, i32* %195, align 4
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %183, %151, %114, %72, %43, %27
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i32 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @IR_dprintk(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @is_transition(%struct.ir_raw_event*, i32*) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
