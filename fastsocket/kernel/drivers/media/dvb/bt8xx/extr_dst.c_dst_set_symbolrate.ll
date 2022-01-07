; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i64, i32, i32*, i32 }

@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"set symrate %u\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_SYMDIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"set symcalc %u\00", align 1
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@DST_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DCTNEW\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DCT-CI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32)* @dst_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_symbolrate(%struct.dst_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %171

19:                                               ; preds = %2
  %20 = load i32, i32* @verbose, align 4
  %21 = load i32, i32* @DST_INFO, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dprintk(i32 %20, i32 %21, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 1000
  store i32 %25, i32* %5, align 4
  %26 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %27 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %111

31:                                               ; preds = %19
  %32 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %33 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 20
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @do_div(i32 %42, i32 88000)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @verbose, align 4
  %46 = load i32, i32* @DST_INFO, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dprintk(i32 %45, i32 %46, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 12
  %51 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %52 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 4
  %57 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %58 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %61, 4
  %63 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %64 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  store i32 %62, i32* %66, align 4
  br label %86

67:                                               ; preds = %31
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 127
  %71 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %72 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = ashr i32 %75, 8
  %77 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %78 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %83 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %67, %38
  %87 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %88 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, -33
  store i32 %92, i32* %90, align 4
  %93 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %94 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load i32, i32* %5, align 4
  %101 = icmp sgt i32 %100, 8000
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %104 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 32
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %102, %99
  br label %110

110:                                              ; preds = %109, %86
  br label %170

111:                                              ; preds = %19
  %112 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %113 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %169

117:                                              ; preds = %111
  %118 = load i32, i32* @verbose, align 4
  %119 = load i32, i32* @DST_DEBUG, align 4
  %120 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %121 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dprintk(i32 %118, i32 %119, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %125 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @strncmp(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %5, align 4
  %131 = ashr i32 %130, 8
  %132 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %133 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 5
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %138 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 6
  store i32 %136, i32* %140, align 4
  %141 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %142 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  store i32 0, i32* %144, align 4
  br label %168

145:                                              ; preds = %117
  %146 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %147 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @strncmp(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %145
  %152 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %153 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 5
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  %157 = ashr i32 %156, 8
  %158 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %159 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %164 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 7
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %151, %145
  br label %168

168:                                              ; preds = %167, %129
  br label %169

169:                                              ; preds = %168, %111
  br label %170

170:                                              ; preds = %169, %110
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %16
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
