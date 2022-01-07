; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/lib/extr_checksum.c_from32to16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/lib/extr_checksum.c_from32to16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i64)* @from32to16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @from32to16(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 65535
  %5 = load i64, i64* %2, align 8
  %6 = lshr i64 %5, 16
  %7 = add i64 %4, %6
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 65535
  %10 = load i64, i64* %2, align 8
  %11 = lshr i64 %10, 16
  %12 = add i64 %9, %11
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = trunc i64 %13 to i16
  ret i16 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
