; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_tuner_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_tuner_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32*, i64, i32, i32, i32 }

@__const.dst_get_tuner_info.get_tuner_1 = private unnamed_addr constant [8 x i32] [i32 0, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@__const.dst_get_tuner_info.get_tuner_2 = private unnamed_addr constant [8 x i32] [i32 0, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@verbose = common dso_local global i32 0, align 4
@DST_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DST TYpe = MULTI FE\00", align 1
@DST_TYPE_HAS_MULTI_FE = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cmd=[0x13], Unsupported\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cmd=[0xb], Unsupported\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"DST type has TS=188\00", align 1
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@DST_TYPE_HAS_TS188 = common dso_local global i32 0, align 4
@DST_TYPE_HAS_NEWTUNE_2 = common dso_local global i32 0, align 4
@DST_TYPE_HAS_DBOARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"DST has Daughterboard\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DCT-CI\00", align 1
@DST_TYPE_HAS_TS204 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Forcing [%s] to TS188\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_get_tuner_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_tuner_info(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %6 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x i32]* @__const.dst_get_tuner_info.get_tuner_1 to i8*), i64 32, i1 false)
  %7 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.dst_get_tuner_info.get_tuner_2 to i8*), i64 32, i1 false)
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %9 = call i32 @dst_check_sum(i32* %8, i32 7)
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %12 = call i32 @dst_check_sum(i32* %11, i32 7)
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @verbose, align 4
  %15 = load i32, i32* @DST_ERROR, align 4
  %16 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %14, i32 %15, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %18 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DST_TYPE_HAS_MULTI_FE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %26 = call i64 @dst_command(%struct.dst_state* %24, i32* %25, i32 8)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @verbose, align 4
  %30 = load i32, i32* @DST_INFO, align 4
  %31 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %29, i32 %30, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %102

32:                                               ; preds = %23
  br label %43

33:                                               ; preds = %1
  %34 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %36 = call i64 @dst_command(%struct.dst_state* %34, i32* %35, i32 8)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @verbose, align 4
  %40 = load i32, i32* @DST_INFO, align 4
  %41 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %39, i32 %40, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %102

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %32
  %44 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %45 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %44, i32 0, i32 1
  %46 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %47 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %46, i32 0, i32 5
  %48 = call i32 @memcpy(i32** %45, i32* %47, i32 8)
  %49 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %50 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DST_TYPE_HAS_MULTI_FE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @verbose, align 4
  %57 = load i32, i32* @DST_ERROR, align 4
  %58 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %56, i32 %57, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %43
  %60 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %61 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 188
  br i1 %65, label %66, label %101

66:                                               ; preds = %59
  %67 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %68 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* @DST_TYPE_HAS_TS188, align 4
  %74 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %75 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %84

78:                                               ; preds = %66
  %79 = load i32, i32* @DST_TYPE_HAS_NEWTUNE_2, align 4
  %80 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %81 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %86 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load i32, i32* @DST_TYPE_HAS_DBOARD, align 4
  %93 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %94 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @verbose, align 4
  %98 = load i32, i32* @DST_ERROR, align 4
  %99 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %97, i32 %98, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %91, %84
  br label %101

101:                                              ; preds = %100, %59
  store i32 0, i32* %2, align 4
  br label %121

102:                                              ; preds = %38, %28
  %103 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %104 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @strncmp(i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %110 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %111 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @verbose, align 4
  %115 = load i32, i32* @DST_ERROR, align 4
  %116 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %117 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %114, i32 %115, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %108, %102
  store i32 -1, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %101
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #2

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #2

declare dso_local i64 @dst_command(%struct.dst_state*, i32*, i32) #2

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
