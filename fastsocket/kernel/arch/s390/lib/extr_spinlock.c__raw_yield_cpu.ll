; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_spinlock.c__raw_yield_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_spinlock.c__raw_yield_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHINE_HAS_DIAG9C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_raw_yield_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_raw_yield_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @MACHINE_HAS_DIAG9C, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @cpu_logical_map to i32 (i32, ...)*)(i32 %6)
  call void asm sideeffect "diag $0,0,0x9c", "{dx},~{dirflag},~{fpsr},~{flags}"(i32 %7) #2, !srcloc !2
  br label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @_raw_yield()
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

declare dso_local i32 @cpu_logical_map(...) #1

declare dso_local i32 @_raw_yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 295}
