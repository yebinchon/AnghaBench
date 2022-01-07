; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_get_mem_chunk_cnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_get_mem_chunk_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_chunk = type { i64, i64 }

@MEMORY_CHUNKS = common dso_local global i32 0, align 4
@CHUNK_READ_WRITE = common dso_local global i64 0, align 8
@CHUNK_READ_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_mem_chunk_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mem_chunk_cnt() #0 {
  %1 = alloca %struct.mem_chunk*, align 8
  %2 = alloca %struct.mem_chunk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = call %struct.mem_chunk* (...) @get_memory_layout()
  store %struct.mem_chunk* %5, %struct.mem_chunk** %1, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %42, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MEMORY_CHUNKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.mem_chunk*, %struct.mem_chunk** %1, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %11, i64 %13
  store %struct.mem_chunk* %14, %struct.mem_chunk** %2, align 8
  %15 = load %struct.mem_chunk*, %struct.mem_chunk** %1, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %15, i64 %17
  %19 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHUNK_READ_WRITE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %10
  %24 = load %struct.mem_chunk*, %struct.mem_chunk** %1, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %24, i64 %26
  %28 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHUNK_READ_ONLY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %42

33:                                               ; preds = %23, %10
  %34 = load %struct.mem_chunk*, %struct.mem_chunk** %2, align 8
  %35 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %38, %32
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %6

45:                                               ; preds = %6
  %46 = load %struct.mem_chunk*, %struct.mem_chunk** %1, align 8
  %47 = call i32 @kfree(%struct.mem_chunk* %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.mem_chunk* @get_memory_layout(...) #1

declare dso_local i32 @kfree(%struct.mem_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
