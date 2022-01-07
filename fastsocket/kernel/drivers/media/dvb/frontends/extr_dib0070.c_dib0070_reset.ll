; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0070_state* }
%struct.dib0070_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i64 }

@DIB0070S_P1A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Revision: %x\00", align 1
@DIB0070_P1D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Error: this driver is not to be used meant for P1D or earlier\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dib0070_p1f_defaults = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib0070_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib0070_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib0070_state*, %struct.dib0070_state** %9, align 8
  store %struct.dib0070_state* %10, %struct.dib0070_state** %4, align 8
  %11 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %12 = call i32 @HARD_RESET(%struct.dib0070_state* %11)
  %13 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %14 = call i32 @dib0070_read_reg(%struct.dib0070_state* %13, i32 34)
  %15 = ashr i32 %14, 9
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %20 = call i32 @dib0070_read_reg(%struct.dib0070_state* %19, i32 31)
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %24 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @DIB0070S_P1A, align 4
  %27 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %28 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %31 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %35 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DIB0070_P1D, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %164

43:                                               ; preds = %29
  %44 = load i64, i64* @dib0070_p1f_defaults, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  %48 = ptrtoint i32* %46 to i32
  %49 = call i32 @pgm_read_word(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %72, %43
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  %56 = ptrtoint i32* %54 to i32
  %57 = call i32 @pgm_read_word(i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %68, %53
  %59 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  %63 = ptrtoint i32* %61 to i32
  %64 = call i32 @pgm_read_word(i32 %63)
  %65 = call i32 @dib0070_write_reg(%struct.dib0070_state* %59, i32 %60, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %58, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %7, align 8
  %75 = ptrtoint i32* %73 to i32
  %76 = call i32 @pgm_read_word(i32 %75)
  store i32 %76, i32* %5, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %79 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %86 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %6, align 4
  br label %101

91:                                               ; preds = %77
  %92 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %93 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 24000
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 1, i32* %6, align 4
  br label %100

99:                                               ; preds = %91
  store i32 2, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %98
  br label %101

101:                                              ; preds = %100, %84
  %102 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %103 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 3
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @dib0070_write_reg(%struct.dib0070_state* %110, i32 16, i32 %111)
  %113 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %114 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %115 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, 15
  %120 = shl i32 %119, 5
  %121 = or i32 256, %120
  %122 = call i32 @dib0070_write_reg(%struct.dib0070_state* %113, i32 31, i32 %121)
  %123 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %124 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %101
  %130 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %131 = call i32 @dib0070_read_reg(%struct.dib0070_state* %130, i32 2)
  %132 = and i32 %131, 65503
  store i32 %132, i32* %6, align 4
  %133 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, 32
  %136 = call i32 @dib0070_write_reg(%struct.dib0070_state* %133, i32 2, i32 %135)
  br label %137

137:                                              ; preds = %129, %101
  %138 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %139 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @DIB0070S_P1A, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %145 = call i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend* %144, i32 2, i32 4, i32 3, i32 0)
  br label %159

146:                                              ; preds = %137
  %147 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %148 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %149 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %154 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend* %147, i32 5, i32 4, i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %146, %143
  %160 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %161 = call i32 @dib0070_write_reg(%struct.dib0070_state* %160, i32 1, i32 27848)
  %162 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %163 = call i32 @dib0070_wbd_offset_calibration(%struct.dib0070_state* %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %159, %39
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @HARD_RESET(%struct.dib0070_state*) #1

declare dso_local i32 @dib0070_read_reg(%struct.dib0070_state*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @pgm_read_word(i32) #1

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

declare dso_local i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend*, i32, i32, i32, i32) #1

declare dso_local i32 @dib0070_wbd_offset_calibration(%struct.dib0070_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
