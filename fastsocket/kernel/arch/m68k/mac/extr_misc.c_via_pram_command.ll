; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_via_pram_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_via_pram_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via1 = common dso_local global i32* null, align 8
@vBufB = common dso_local global i64 0, align 8
@VIA1B_vRTCClk = common dso_local global i32 0, align 4
@VIA1B_vRTCEnb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @via_pram_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_pram_command(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32*, i32** @via1, align 8
  %10 = load i64, i64* @vBufB, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @VIA1B_vRTCClk, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @VIA1B_vRTCEnb, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32*, i32** @via1, align 8
  %19 = load i64, i64* @vBufB, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 65280
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 65280
  %27 = ashr i32 %26, 8
  %28 = call i32 @via_pram_writebyte(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @via_pram_writebyte(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 32768
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @via_pram_writebyte(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 128
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 (...) @via_pram_readbyte()
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  br label %49

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @via_pram_writebyte(i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* @VIA1B_vRTCEnb, align 4
  %51 = load i32*, i32** @via1, align 8
  %52 = load i64, i64* @vBufB, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @via_pram_writebyte(i32) #1

declare dso_local i32 @via_pram_readbyte(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
