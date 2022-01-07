; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_cfc.c_pcc_port2addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_cfc.c_pcc_port2addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFC_IO_MAPBASE_BYTE = common dso_local global i64 0, align 8
@CFC_IOPORT_BASE = common dso_local global i64 0, align 8
@CFC_IO_MAPBASE_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @pcc_port2addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcc_port2addr(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 1
  %12 = shl i64 %11, 11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 1
  %15 = load i64, i64* %3, align 8
  %16 = sub i64 %15, %14
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* @CFC_IO_MAPBASE_BYTE, align 8
  %18 = load i64, i64* @CFC_IOPORT_BASE, align 8
  %19 = sub i64 %17, %18
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %5, align 8
  br label %34

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* @CFC_IO_MAPBASE_WORD, align 8
  %29 = load i64, i64* @CFC_IOPORT_BASE, align 8
  %30 = sub i64 %28, %29
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %27, %24
  br label %34

34:                                               ; preds = %33, %9
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
