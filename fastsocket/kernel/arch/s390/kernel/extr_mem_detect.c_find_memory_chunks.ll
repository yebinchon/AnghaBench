; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_find_memory_chunks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_find_memory_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_chunk = type { i64, i64, i32 }

@CHUNK_READ_WRITE = common dso_local global i32 0, align 4
@CHUNK_READ_ONLY = common dso_local global i32 0, align 4
@MEMORY_CHUNKS = common dso_local global i32 0, align 4
@ADDR2G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_chunk*)* @find_memory_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_memory_chunks(%struct.mem_chunk* %0) #0 {
  %2 = alloca %struct.mem_chunk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_chunk* %0, %struct.mem_chunk** %2, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = call i64 (...) @sclp_get_rzm()
  store i64 %10, i64* %5, align 8
  %11 = call i64 (...) @sclp_get_rnmax()
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = mul i64 %12, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i64 131072, i64* %5, align 8
  br label %18

18:                                               ; preds = %17, %1
  br label %19

19:                                               ; preds = %84, %18
  store i64 0, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @tprot(i64 %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %36, %19
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %3, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %28, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @tprot(i64 %40)
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %22, label %43

43:                                               ; preds = %36, %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @CHUNK_READ_WRITE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @CHUNK_READ_ONLY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47, %43
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.mem_chunk*, %struct.mem_chunk** %2, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %53, i64 %55
  %57 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.mem_chunk*, %struct.mem_chunk** %2, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %59, i64 %61
  %63 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %62, i32 0, i32 1
  store i64 %58, i64* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.mem_chunk*, %struct.mem_chunk** %2, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %65, i64 %67
  %69 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %68, i32 0, i32 2
  store i32 %64, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %51, %47
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %3, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @MEMORY_CHUNKS, align 4
  %83 = icmp slt i32 %81, %82
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %19, label %86

86:                                               ; preds = %84
  ret void
}

declare dso_local i64 @sclp_get_rzm(...) #1

declare dso_local i64 @sclp_get_rnmax(...) #1

declare dso_local i32 @tprot(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
