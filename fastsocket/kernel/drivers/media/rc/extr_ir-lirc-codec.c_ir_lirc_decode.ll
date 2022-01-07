; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-lirc-codec.c_ir_lirc_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-lirc-codec.c_ir_lirc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.lirc_codec }
%struct.lirc_codec = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ir_raw_event = type { i32, i64, i64, i32, i64, i64 }

@RC_TYPE_LIRC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"carrier report (freq: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"timeout report (duration: %d)\0A\00", align 1
@LIRC_VALUE_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"delivering %uus %s to lirc_dev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.ir_raw_event*)* @ir_lirc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_lirc_decode(%struct.rc_dev* %0, %struct.ir_raw_event* byval(%struct.ir_raw_event) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.lirc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store %struct.lirc_codec* %11, %struct.lirc_codec** %5, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RC_TYPE_LIRC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %180

21:                                               ; preds = %2
  %22 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %23 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29, %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %180

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %180

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @LIRC_FREQUENCY(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, i32, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %159

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  %62 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %63 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %180

67:                                               ; preds = %61
  %68 = call i32 (...) @ktime_get()
  %69 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %70 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %72 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %76 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %78 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %180

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %84, 1000
  %86 = call i32 @LIRC_TIMEOUT(i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i32, i8*, i32, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %158

89:                                               ; preds = %57
  %90 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %91 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %135

94:                                               ; preds = %89
  %95 = call i32 (...) @ktime_get()
  %96 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %97 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ktime_sub(i32 %95, i32 %98)
  %100 = call i64 @ktime_to_ns(i32 %99)
  %101 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %102 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %108 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @do_div(i32 %109, i32 1000)
  %111 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %112 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* @LIRC_VALUE_MASK, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @min(i32 %113, i32 %115)
  %117 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %118 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %120 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @LIRC_SPACE(i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %124 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = bitcast i32* %7 to i8*
  %132 = call i32 @lirc_buffer_write(%struct.TYPE_6__* %130, i8* %131)
  %133 = load %struct.lirc_codec*, %struct.lirc_codec** %5, align 8
  %134 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %94, %89
  %136 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 1000
  %143 = call i32 @LIRC_PULSE(i32 %142)
  br label %149

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %146, 1000
  %148 = call i32 @LIRC_SPACE(i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i32 [ %143, %139 ], [ %148, %144 ]
  store i32 %150, i32* %6, align 4
  %151 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @TO_US(i32 %152)
  %154 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @TO_STR(i64 %155)
  %157 = call i32 (i32, i8*, i32, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %149, %82
  br label %159

159:                                              ; preds = %158, %51
  %160 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %161 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = bitcast i32* %6 to i8*
  %169 = call i32 @lirc_buffer_write(%struct.TYPE_6__* %167, i8* %168)
  %170 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %171 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %170, i32 0, i32 0
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.lirc_codec, %struct.lirc_codec* %173, i32 0, i32 2
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = call i32 @wake_up(i32* %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %159, %81, %66, %46, %39, %20
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @LIRC_FREQUENCY(i32) #1

declare dso_local i32 @IR_dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @LIRC_TIMEOUT(i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @LIRC_SPACE(i32) #1

declare dso_local i32 @lirc_buffer_write(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @LIRC_PULSE(i32) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
