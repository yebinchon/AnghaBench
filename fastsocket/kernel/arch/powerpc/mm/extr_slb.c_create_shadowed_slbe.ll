; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_create_shadowed_slbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_create_shadowed_slbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64, i64)* @create_shadowed_slbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_shadowed_slbe(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @slb_shadow_update(i64 %9, i32 %10, i64 %11, i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i64, i32, i64, ...) bitcast (i32 (...)* @mk_vsid_data to i32 (i64, i32, i64, ...)*)(i64 %14, i32 %15, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 (i64, i32, i64, ...) bitcast (i32 (...)* @mk_esid_data to i32 (i64, i32, i64, ...)*)(i64 %18, i32 %19, i64 %20)
  call void asm sideeffect "slbmte  $0,$1", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %17, i32 %21) #2, !srcloc !2
  ret void
}

declare dso_local i32 @slb_shadow_update(i64, i32, i64, i64) #1

declare dso_local i32 @mk_vsid_data(...) #1

declare dso_local i32 @mk_esid_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 417}
