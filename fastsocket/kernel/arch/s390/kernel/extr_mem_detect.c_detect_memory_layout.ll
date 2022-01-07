; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_detect_memory_layout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_detect_memory_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_chunk = type { i32 }

@MEMORY_CHUNKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_memory_layout(%struct.mem_chunk* %0) #0 {
  %2 = alloca %struct.mem_chunk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.mem_chunk* %0, %struct.mem_chunk** %2, align 8
  %5 = load %struct.mem_chunk*, %struct.mem_chunk** %2, align 8
  %6 = load i32, i32* @MEMORY_CHUNKS, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i32 @memset(%struct.mem_chunk* %5, i32 0, i32 %9)
  %11 = call i64 @__raw_local_irq_stnsm(i32 248)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @__ctl_store(i64 %12, i32 0, i32 0)
  %14 = call i32 @__ctl_clear_bit(i32 0, i32 28)
  %15 = load %struct.mem_chunk*, %struct.mem_chunk** %2, align 8
  %16 = call i32 @find_memory_chunks(%struct.mem_chunk* %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @__ctl_load(i64 %17, i32 0, i32 0)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @__raw_local_irq_ssm(i64 %19)
  ret void
}

declare dso_local i32 @memset(%struct.mem_chunk*, i32, i32) #1

declare dso_local i64 @__raw_local_irq_stnsm(i32) #1

declare dso_local i32 @__ctl_store(i64, i32, i32) #1

declare dso_local i32 @__ctl_clear_bit(i32, i32) #1

declare dso_local i32 @find_memory_chunks(%struct.mem_chunk*) #1

declare dso_local i32 @__ctl_load(i64, i32, i32) #1

declare dso_local i32 @__raw_local_irq_ssm(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
