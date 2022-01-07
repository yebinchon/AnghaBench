; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_tuna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_tuna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32, i64, i32*, i32, i32 }

@ATTEMPT_TUNE = common dso_local global i32 0, align 4
@HAS_LOCK = common dso_local global i32 0, align 4
@NO_DELAY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@FIXED_COMM = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"read not successful\00", align 1
@DST_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"checksum failure ? \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"checksum failure? \00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_get_tuna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_tuna(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %5 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %6 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ATTEMPT_TUNE, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %186

12:                                               ; preds = %1
  %13 = load i32, i32* @HAS_LOCK, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %16 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %20 = load i32, i32* @NO_DELAY, align 4
  %21 = call i32 @dst_wait_dst_ready(%struct.dst_state* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %186

26:                                               ; preds = %12
  %27 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %35 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %41 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %42 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @read_dst(%struct.dst_state* %40, i32* %43, i32 10)
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %33, %26
  %46 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %47 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %48 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* @FIXED_COMM, align 4
  %52 = call i32 @read_dst(%struct.dst_state* %46, i32* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %39
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @verbose, align 4
  %58 = load i32, i32* @DST_DEBUG, align 4
  %59 = call i32 @dprintk(i32 %57, i32 %58, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %186

61:                                               ; preds = %53
  %62 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %63 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %70 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %93, label %74

74:                                               ; preds = %68
  %75 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %76 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %81 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @dst_check_sum(i32* %83, i32 9)
  %85 = icmp ne i32 %79, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %74
  %87 = load i32, i32* @verbose, align 4
  %88 = load i32, i32* @DST_INFO, align 4
  %89 = call i32 @dprintk(i32 %87, i32 %88, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %186

92:                                               ; preds = %74
  br label %112

93:                                               ; preds = %68, %61
  %94 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %95 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 9
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %100 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = call i32 @dst_check_sum(i32* %102, i32 7)
  %104 = icmp ne i32 %98, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = load i32, i32* @verbose, align 4
  %107 = load i32, i32* @DST_INFO, align 4
  %108 = call i32 @dprintk(i32 %106, i32 %107, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %186

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %114 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %121 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %186

127:                                              ; preds = %119, %112
  %128 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %129 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %135 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 127
  %140 = shl i32 %139, 8
  %141 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %142 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %140, %145
  %147 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %148 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  br label %172

149:                                              ; preds = %127
  %150 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %151 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 127
  %156 = shl i32 %155, 16
  %157 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %158 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = add nsw i32 %156, %162
  %164 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %165 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %163, %168
  %170 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %171 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %149, %133
  %173 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %174 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %175, 1000
  %177 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %178 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %180 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %179, i32 0, i32 5
  store i32 1, i32* %180, align 4
  %181 = load i32, i32* @HAS_LOCK, align 4
  %182 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %183 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  store i32 1, i32* %2, align 4
  br label %186

186:                                              ; preds = %172, %126, %105, %86, %56, %23, %11
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @dst_wait_dst_ready(%struct.dst_state*, i32) #1

declare dso_local i32 @read_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
