; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_submit_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.dm_buffer*)* }

@WRITE = common dso_local global i32 0, align 4
@DM_BUFIO_INLINE_VECS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DATA_MODE_VMALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, i32, i32, i32*)* @submit_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_io(%struct.dm_buffer* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dm_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @WRITE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.dm_buffer*)*, i32 (%struct.dm_buffer*)** %16, align 8
  %18 = icmp ne i32 (%struct.dm_buffer*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.dm_buffer*)*, i32 (%struct.dm_buffer*)** %23, align 8
  %25 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %26 = call i32 %24(%struct.dm_buffer* %25)
  br label %27

27:                                               ; preds = %19, %12, %4
  %28 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DM_BUFIO_INLINE_VECS, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %27
  %38 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DATA_MODE_VMALLOC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @use_inline_bio(%struct.dm_buffer* %44, i32 %45, i32 %46, i32* %47)
  br label %55

49:                                               ; preds = %37, %27
  %50 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @use_dmio(%struct.dm_buffer* %50, i32 %51, i32 %52, i32* %53)
  br label %55

55:                                               ; preds = %49, %43
  ret void
}

declare dso_local i32 @use_inline_bio(%struct.dm_buffer*, i32, i32, i32*) #1

declare dso_local i32 @use_dmio(%struct.dm_buffer*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
