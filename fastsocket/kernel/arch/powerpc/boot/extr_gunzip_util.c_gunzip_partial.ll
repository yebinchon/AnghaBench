; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_gunzip_util.c_gunzip_partial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_gunzip_util.c_gunzip_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gunzip_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i64 }

@Z_FULL_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"inflate returned %d msg: %s\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gunzip_partial(%struct.gunzip_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gunzip_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gunzip_state* %0, %struct.gunzip_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %10 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %17 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %21 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %24 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %23, i32 0, i32 0
  %25 = load i32, i32* @Z_FULL_FLUSH, align 4
  %26 = call i32 @zlib_inflate(%struct.TYPE_2__* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @Z_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %14
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @Z_STREAM_END, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %37 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %30, %14
  %42 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %43 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %77

51:                                               ; preds = %3
  %52 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %53 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %60 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @memcpy(i8* %58, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %67 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %73 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %51, %41
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @zlib_inflate(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @fatal(i8*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
