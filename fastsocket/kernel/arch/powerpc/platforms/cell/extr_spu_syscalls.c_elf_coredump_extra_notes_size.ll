; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_syscalls.c_elf_coredump_extra_notes_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_syscalls.c_elf_coredump_extra_notes_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spufs_calls = type { i32 (...)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_coredump_extra_notes_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.spufs_calls*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.spufs_calls* (...) @spufs_calls_get()
  store %struct.spufs_calls* %4, %struct.spufs_calls** %2, align 8
  %5 = load %struct.spufs_calls*, %struct.spufs_calls** %2, align 8
  %6 = icmp ne %struct.spufs_calls* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = load %struct.spufs_calls*, %struct.spufs_calls** %2, align 8
  %10 = getelementptr inbounds %struct.spufs_calls, %struct.spufs_calls* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  store i32 %12, i32* %3, align 4
  %13 = load %struct.spufs_calls*, %struct.spufs_calls** %2, align 8
  %14 = call i32 @spufs_calls_put(%struct.spufs_calls* %13)
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %8, %7
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local %struct.spufs_calls* @spufs_calls_get(...) #1

declare dso_local i32 @spufs_calls_put(%struct.spufs_calls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
