; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_enable_formac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_enable_formac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@FM_IMSK1U = common dso_local global i32 0, align 4
@mac_imsk1u = common dso_local global i64 0, align 8
@FM_IMSK1L = common dso_local global i32 0, align 4
@mac_imsk1l = common dso_local global i64 0, align 8
@FM_IMSK2U = common dso_local global i32 0, align 4
@mac_imsk2u = common dso_local global i64 0, align 8
@FM_IMSK2L = common dso_local global i32 0, align 4
@mac_imsk2l = common dso_local global i64 0, align 8
@FM_IMSK3U = common dso_local global i32 0, align 4
@mac_imsk3u = common dso_local global i64 0, align 8
@FM_IMSK3L = common dso_local global i32 0, align 4
@mac_imsk3l = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @enable_formac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_formac(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @FM_IMSK1U, align 4
  %4 = call i32 @FM_A(i32 %3)
  %5 = load i64, i64* @mac_imsk1u, align 8
  %6 = xor i64 %5, -1
  %7 = trunc i64 %6 to i16
  %8 = call i32 @outpw(i32 %4, i16 zeroext %7)
  %9 = load i32, i32* @FM_IMSK1L, align 4
  %10 = call i32 @FM_A(i32 %9)
  %11 = load i64, i64* @mac_imsk1l, align 8
  %12 = xor i64 %11, -1
  %13 = trunc i64 %12 to i16
  %14 = call i32 @outpw(i32 %10, i16 zeroext %13)
  %15 = load i32, i32* @FM_IMSK2U, align 4
  %16 = call i32 @FM_A(i32 %15)
  %17 = load i64, i64* @mac_imsk2u, align 8
  %18 = xor i64 %17, -1
  %19 = trunc i64 %18 to i16
  %20 = call i32 @outpw(i32 %16, i16 zeroext %19)
  %21 = load i32, i32* @FM_IMSK2L, align 4
  %22 = call i32 @FM_A(i32 %21)
  %23 = load i64, i64* @mac_imsk2l, align 8
  %24 = xor i64 %23, -1
  %25 = trunc i64 %24 to i16
  %26 = call i32 @outpw(i32 %22, i16 zeroext %25)
  %27 = load i32, i32* @FM_IMSK3U, align 4
  %28 = call i32 @FM_A(i32 %27)
  %29 = load i64, i64* @mac_imsk3u, align 8
  %30 = xor i64 %29, -1
  %31 = trunc i64 %30 to i16
  %32 = call i32 @outpw(i32 %28, i16 zeroext %31)
  %33 = load i32, i32* @FM_IMSK3L, align 4
  %34 = call i32 @FM_A(i32 %33)
  %35 = load i64, i64* @mac_imsk3l, align 8
  %36 = xor i64 %35, -1
  %37 = trunc i64 %36 to i16
  %38 = call i32 @outpw(i32 %34, i16 zeroext %37)
  ret void
}

declare dso_local i32 @outpw(i32, i16 zeroext) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
