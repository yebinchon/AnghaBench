; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_ctx_note_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_ctx_note_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.spu_context = type { i32 }

@spufs_coredump_read = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"SPU/%d/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32)* @spufs_ctx_note_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_ctx_note_size(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %53, %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  %42 = call i64 @roundup(i32 %41, i32 4)
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @roundup(i32 %47, i32 4)
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %18
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %10

56:                                               ; preds = %10
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
