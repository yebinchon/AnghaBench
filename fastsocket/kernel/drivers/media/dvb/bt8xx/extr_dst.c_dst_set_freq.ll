; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i64, i32*, i32, i32 }

@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"set Frequency %u\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@DST_TYPE_HAS_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32)* @dst_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_freq(%struct.dst_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %8 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @verbose, align 4
  %10 = load i32, i32* @DST_INFO, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dprintk(i32 %9, i32 %10, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %14 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 950
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 2150
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %210

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 8
  %32 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %33 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %41 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %45 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32 1, i32* %47, align 4
  %48 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %49 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -5
  store i32 %53, i32* %51, align 4
  %54 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %55 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %29
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 1531
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %65 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, 4
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %63, %60
  br label %71

71:                                               ; preds = %70, %29
  br label %209

72:                                               ; preds = %2
  %73 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %74 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = sdiv i32 %79, 1000
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 137000
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 858000
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %210

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %94 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %101 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %109 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32 %107, i32* %111, align 4
  br label %208

112:                                              ; preds = %72
  %113 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %114 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %112
  %119 = load i32, i32* %5, align 4
  %120 = sdiv i32 %119, 1000
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = ashr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %125 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %5, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 255
  %131 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %132 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %140 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  store i32 %138, i32* %142, align 4
  br label %207

143:                                              ; preds = %112
  %144 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %145 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %203

149:                                              ; preds = %143
  %150 = load i32, i32* %5, align 4
  %151 = sdiv i32 %150, 1000
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp slt i32 %152, 51000
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %5, align 4
  %156 = icmp sgt i32 %155, 858000
  br i1 %156, label %157, label %160

157:                                              ; preds = %154, %149
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %210

160:                                              ; preds = %154
  %161 = load i32, i32* %5, align 4
  %162 = ashr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %165 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %5, align 4
  %169 = ashr i32 %168, 8
  %170 = and i32 %169, 255
  %171 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %172 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %180 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  store i32 %178, i32* %182, align 4
  %183 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %184 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 5
  store i32 0, i32* %186, align 4
  %187 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %188 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 6
  store i32 0, i32* %190, align 4
  %191 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %192 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @DST_TYPE_HAS_ANALOG, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %160
  %198 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %199 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 7
  store i32 0, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %160
  br label %206

203:                                              ; preds = %143
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %210

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %118
  br label %208

208:                                              ; preds = %207, %89
  br label %209

209:                                              ; preds = %208, %71
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %203, %157, %86, %26
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
