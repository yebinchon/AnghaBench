; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_recv_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_recv_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via1 = common dso_local global i8* null, align 8
@ACR = common dso_local global i64 0, align 8
@SR_EXT = common dso_local global i8 0, align 1
@SR_OUT = common dso_local global i8 0, align 1
@SR = common dso_local global i64 0, align 8
@TREQ = common dso_local global i32 0, align 4
@via2 = common dso_local global i32* null, align 8
@B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @recv_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_byte() #0 {
  %1 = alloca i8, align 1
  %2 = load i8*, i8** @via1, align 8
  %3 = load i64, i64* @ACR, align 8
  %4 = getelementptr inbounds i8, i8* %2, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* @SR_EXT, align 1
  %8 = sext i8 %7 to i32
  %9 = or i32 %6, %8
  %10 = load i8, i8* @SR_OUT, align 1
  %11 = sext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** @via1, align 8
  %16 = load i64, i64* @ACR, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8 %14, i8* %17, align 1
  %18 = load i8*, i8** @via1, align 8
  %19 = load i64, i64* @SR, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %1, align 1
  %22 = load i32, i32* @TREQ, align 4
  %23 = xor i32 %22, -1
  %24 = load i32*, i32** @via2, align 8
  %25 = load i64, i64* @B, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
