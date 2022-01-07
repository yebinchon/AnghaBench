; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/generic/extr_smsc_fdc37m81x.c_smsc_dc37m81x_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/generic/extr_smsc_fdc37m81x.c_smsc_dc37m81x_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_smsc_fdc37m81x_base = common dso_local global i64 0, align 8
@SMSC_FDC37M81X_CONFIG_INDEX = common dso_local global i64 0, align 8
@SMSC_FDC37M81X_CONFIG_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8)* @smsc_dc37m81x_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc_dc37m81x_wr(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = load i64, i64* @g_smsc_fdc37m81x_base, align 8
  %7 = load i64, i64* @SMSC_FDC37M81X_CONFIG_INDEX, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i8 zeroext %5, i64 %8)
  %10 = load i8, i8* %4, align 1
  %11 = load i64, i64* @g_smsc_fdc37m81x_base, align 8
  %12 = load i64, i64* @SMSC_FDC37M81X_CONFIG_DATA, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i8 zeroext %10, i64 %13)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
