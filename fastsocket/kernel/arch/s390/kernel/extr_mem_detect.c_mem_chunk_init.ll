; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_mem_chunk_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_mem_chunk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_chunk = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_chunk*, i64, i64, i32)* @mem_chunk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_chunk_init(%struct.mem_chunk* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_chunk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mem_chunk* %0, %struct.mem_chunk** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %11 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %17 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
