; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-iop/extr_time.c_iop_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-iop/extr_time.c_iop_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next_jiffy_time = common dso_local global i64 0, align 8
@ticks_per_usec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iop_gettimeoffset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 asm sideeffect "mrc\09p15, 0, $0, c15, c1, 0\0A\09tst\09$0, #(1 << 6)\0A\09orreq\09$0, $0, #(1 << 6)\0A\09mcreq\09p15, 0, $0, c15, c1, 0\0A\09", "=r,~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* @next_jiffy_time, align 8
  %5 = call i64 (...) @read_tcr1()
  %6 = sub i64 %4, %5
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @ticks_per_usec, align 8
  %9 = udiv i64 %7, %8
  ret i64 %9
}

declare dso_local i64 @read_tcr1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 319, i32 348, i32 373, i32 404, i32 440}
