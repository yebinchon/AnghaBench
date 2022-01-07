; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__ne_outw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__ne_outw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8*)* @_ne_outw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ne_outw(i16 zeroext %0, i8* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  store i8* %1, i8** %4, align 8
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = ashr i32 %6, 8
  %8 = trunc i32 %7 to i16
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i16*
  store volatile i16 %8, i16* %10, align 2
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i16
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 2
  %17 = bitcast i8* %16 to i16*
  store volatile i16 %14, i16* %17, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
