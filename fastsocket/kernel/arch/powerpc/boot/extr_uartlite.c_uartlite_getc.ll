; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_uartlite.c_uartlite_getc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_uartlite.c_uartlite_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULITE_STATUS_RXVALID = common dso_local global i32 0, align 4
@reg_base = common dso_local global i64 0, align 8
@ULITE_STATUS = common dso_local global i64 0, align 8
@ULITE_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @uartlite_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uartlite_getc() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %8, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i64, i64* @reg_base, align 8
  %10 = load i64, i64* @ULITE_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call zeroext i8 @in_be32(i64 %11)
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  %15 = load i64, i64* @reg_base, align 8
  %16 = load i64, i64* @ULITE_RX, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @in_be32(i64 %17)
  ret i8 %18
}

declare dso_local zeroext i8 @in_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
