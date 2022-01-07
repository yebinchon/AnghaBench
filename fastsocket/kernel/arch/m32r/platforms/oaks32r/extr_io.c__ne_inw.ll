; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__ne_inw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__ne_inw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*)* @_ne_inw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @_ne_inw(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to i16*
  %6 = load i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %3, align 2
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr i8, i8* %10, i64 2
  %12 = bitcast i8* %11 to i16*
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = shl i32 %14, 8
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %3, align 2
  %20 = load i16, i16* %3, align 2
  ret i16 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
