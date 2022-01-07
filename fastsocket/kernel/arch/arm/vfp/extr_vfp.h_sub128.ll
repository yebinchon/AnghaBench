; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfp.h_sub128.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfp.h_sub128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @sub128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub128(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call { i32, i32 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %13, i32 %14, i32 %15, i32 %16) #1, !srcloc !2
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = extractvalue { i32, i32 } %17, 1
  store i32 %18, i32* %10, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 270, i32 291, i32 318, i32 345, i32 371}
