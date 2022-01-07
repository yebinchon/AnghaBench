; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_debugfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ttm_page_pool* }
%struct.ttm_page_pool = type { i8*, i8*, i8*, i8* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"refills\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pages freed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@__const.ttm_page_alloc_debugfs.h = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@_manager = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"No pool allocator running.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%6s %12s %13s %8s\0A\00", align 1
@NUM_POOLS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"%6s %12ld %13ld %8d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_page_alloc_debugfs(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ttm_page_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8*], align 16
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast [4 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i8*]* @__const.ttm_page_alloc_debugfs.h to i8*), i64 32, i1 false)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %18 = load i8*, i8** %17, align 16
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 2
  %22 = load i8*, i8** %21, align 16
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %18, i8* %20, i8* %22, i8* %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %51, %15
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NUM_POOLS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %33, i64 %35
  store %struct.ttm_page_pool* %36, %struct.ttm_page_pool** %6, align 8
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %39 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %42 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %45 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %48 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %40, i8* %43, i8* %46, i8* %49)
  br label %51

51:                                               ; preds = %30
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %26

54:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
