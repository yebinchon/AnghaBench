; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_cch_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_cch_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gru_state = type { i32, i32, %struct.gru_thread_state** }
%struct.gru_thread_state = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"UPM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INTR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"OS_POLL\00", align 1
@__const.cch_seq_show.mode = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [27 x i8] c"#%5s%5s%6s%7s%9s%6s%8s%8s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bid\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ctx#\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"asid\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"cbrs\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"dsbytes\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@GRU_NUM_CCH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c" %5d%5d%6d%7d%9d%6d%8d%8s\0A\00", align 1
@GRU_CBR_AU_SIZE = common dso_local global i32 0, align 4
@GRU_DSR_AU_BYTES = common dso_local global i32 0, align 4
@GRU_OPT_MISS_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cch_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cch_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gru_state*, align 8
  %8 = alloca %struct.gru_thread_state*, align 8
  %9 = alloca [4 x i8*], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.gru_state* @GID_TO_GRU(i64 %13)
  store %struct.gru_state* %14, %struct.gru_state** %7, align 8
  %15 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i8*]* @__const.cch_seq_show.mode to i8*), i64 32, i1 false)
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.gru_state*, %struct.gru_state** %7, align 8
  %23 = icmp ne %struct.gru_state* %22, null
  br i1 %23, label %24, label %101

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %97, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @GRU_NUM_CCH, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %25
  %30 = load %struct.gru_state*, %struct.gru_state** %7, align 8
  %31 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %30, i32 0, i32 2
  %32 = load %struct.gru_thread_state**, %struct.gru_thread_state*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gru_thread_state*, %struct.gru_thread_state** %32, i64 %34
  %36 = load %struct.gru_thread_state*, %struct.gru_thread_state** %35, align 8
  store %struct.gru_thread_state* %36, %struct.gru_thread_state** %8, align 8
  %37 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %38 = icmp ne %struct.gru_thread_state* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %97

40:                                               ; preds = %29
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.gru_state*, %struct.gru_state** %7, align 8
  %43 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.gru_state*, %struct.gru_state** %7, align 8
  %48 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %54 = call i64 @is_kernel_context(%struct.gru_thread_state* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %67

57:                                               ; preds = %40
  %58 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %59 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %57, %56
  %68 = phi i32 [ 0, %56 ], [ %66, %57 ]
  %69 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %70 = call i64 @is_kernel_context(%struct.gru_thread_state* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %77

73:                                               ; preds = %67
  %74 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %75 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = phi i32 [ 0, %72 ], [ %76, %73 ]
  %79 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %80 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @GRU_CBR_AU_SIZE, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %85 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GRU_DSR_AU_BYTES, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %90 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @GRU_OPT_MISS_MASK, align 8
  %93 = and i64 %91, %92
  %94 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %46, i8* %51, i32 %52, i32 %68, i32 %78, i32 %83, i32 %88, i8* %95)
  br label %97

97:                                               ; preds = %77, %39
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %25

100:                                              ; preds = %25
  br label %101

101:                                              ; preds = %100, %21
  ret i32 0
}

declare dso_local %struct.gru_state* @GID_TO_GRU(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @is_kernel_context(%struct.gru_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
