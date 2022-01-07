; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_open_init_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_open_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran_fh = type { %struct.TYPE_8__, i32, i32, i8*, %struct.TYPE_5__, %struct.zoran* }
%struct.TYPE_8__ = type { i8*, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.zoran = type { i32, i32, %struct.TYPE_5__ }

@ZORAN_FREE = common dso_local global i8* null, align 8
@MAX_FRAME = common dso_local global i32 0, align 4
@BUZ_STATE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran_fh*)* @zoran_open_init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zoran_open_init_session(%struct.zoran_fh* %0) #0 {
  %2 = alloca %struct.zoran_fh*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zoran*, align 8
  store %struct.zoran_fh* %0, %struct.zoran_fh** %2, align 8
  %5 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %6 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %5, i32 0, i32 5
  %7 = load %struct.zoran*, %struct.zoran** %6, align 8
  store %struct.zoran* %7, %struct.zoran** %4, align 8
  %8 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %9 = call i32 @map_mode_raw(%struct.zoran_fh* %8)
  %10 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %11 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %10, i32 0, i32 4
  %12 = load %struct.zoran*, %struct.zoran** %4, align 8
  %13 = getelementptr inbounds %struct.zoran, %struct.zoran* %12, i32 0, i32 2
  %14 = bitcast %struct.TYPE_5__* %11 to i8*
  %15 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %17 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.zoran*, %struct.zoran** %4, align 8
  %20 = getelementptr inbounds %struct.zoran, %struct.zoran* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %24 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i8*, i8** @ZORAN_FREE, align 8
  %27 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %28 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.zoran*, %struct.zoran** %4, align 8
  %30 = getelementptr inbounds %struct.zoran, %struct.zoran* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %33 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.zoran*, %struct.zoran** %4, align 8
  %35 = getelementptr inbounds %struct.zoran, %struct.zoran* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %38 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %40 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %39, i32 0, i32 0
  %41 = call i32 @memset(%struct.TYPE_8__* %40, i32 0, i32 24)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %66, %1
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MAX_FRAME, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i32, i32* @BUZ_STATE_USER, align 4
  %48 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %49 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %47, i32* %55, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %58 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %56, i32* %65, align 4
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %42

69:                                               ; preds = %42
  %70 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %71 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** @ZORAN_FREE, align 8
  %74 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %75 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  ret void
}

declare dso_local i32 @map_mode_raw(%struct.zoran_fh*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
