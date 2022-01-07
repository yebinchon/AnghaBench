; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-realview/extr_hotplug.c_cpu_enter_lowpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-realview/extr_hotplug.c_cpu_enter_lowpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu_enter_lowpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_enter_lowpower() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @flush_cache_all()
  %3 = call i32 asm sideeffect "\09mcr\09p15, 0, $1, c7, c5, 0\0A\09mcr\09p15, 0, $1, c7, c10, 4\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09bic\09$0, $0, #0x20\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A\09mrc\09p15, 0, $0, c1, c0, 0\0A\09bic\09$0, $0, #0x04\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A", "=&r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !2
  store i32 %3, i32* %1, align 4
  ret void
}

declare dso_local i32 @flush_cache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 282, i32 315, i32 351, i32 383, i32 407, i32 439, i32 471, i32 495}
