; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_make_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_make_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i16, i16, i64, i32*, i64, i64, i64, %struct.write_sccb* }
%struct.write_sccb = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EVTYP_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sclp_buffer* @sclp_make_buffer(i8* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.sclp_buffer*, align 8
  %8 = alloca %struct.write_sccb*, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.write_sccb*
  store %struct.write_sccb* %10, %struct.write_sccb** %8, align 8
  %11 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %12 = ptrtoint %struct.write_sccb* %11 to i64
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = add nsw i64 %12, %13
  %15 = inttoptr i64 %14 to %struct.sclp_buffer*
  %16 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %15, i64 -1
  store %struct.sclp_buffer* %16, %struct.sclp_buffer** %7, align 8
  %17 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %18 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %18, i32 0, i32 7
  store %struct.write_sccb* %17, %struct.write_sccb** %19, align 8
  %20 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i16, i16* %5, align 2
  %31 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %31, i32 0, i32 0
  store i16 %30, i16* %32, align 8
  %33 = load i16, i16* %6, align 2
  %34 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %34, i32 0, i32 1
  store i16 %33, i16* %35, align 2
  %36 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %37 = call i32 @memset(%struct.write_sccb* %36, i32 0, i32 36)
  %38 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %39 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 36, i32* %40, align 4
  %41 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %42 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 4
  %45 = load i32, i32* @EVTYP_MSG, align 4
  %46 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %47 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %51 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 4
  %55 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %56 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %61 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i32 -725302720, i32* %64, align 4
  %65 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %66 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %71 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 4, i32* %74, align 4
  %75 = load %struct.write_sccb*, %struct.write_sccb** %8, align 8
  %76 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  ret %struct.sclp_buffer* %80
}

declare dso_local i32 @memset(%struct.write_sccb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
