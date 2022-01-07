; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-irq.c_disable_maceisa_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-irq.c_disable_maceisa_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MACEISA_AUDIO_SW_IRQ = common dso_local global i32 0, align 4
@maceisa_mask = common dso_local global i32 0, align 4
@MACEISA_AUDIO_INT = common dso_local global i32 0, align 4
@MACE_AUDIO_INT = common dso_local global i32 0, align 4
@MACEISA_MISC_INT = common dso_local global i32 0, align 4
@MACE_MISC_INT = common dso_local global i32 0, align 4
@MACEISA_SUPERIO_INT = common dso_local global i32 0, align 4
@MACE_SUPERIO_INT = common dso_local global i32 0, align 4
@crime_mask = common dso_local global i32 0, align 4
@crime = common dso_local global %struct.TYPE_8__* null, align 8
@mace = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @disable_maceisa_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_maceisa_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MACEISA_AUDIO_SW_IRQ, align 4
  %6 = sub i32 %4, %5
  %7 = shl i32 1, %6
  %8 = xor i32 %7, -1
  %9 = load i32, i32* @maceisa_mask, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* @maceisa_mask, align 4
  %11 = load i32, i32* @maceisa_mask, align 4
  %12 = load i32, i32* @MACEISA_AUDIO_INT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @MACE_AUDIO_INT, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @maceisa_mask, align 4
  %21 = load i32, i32* @MACEISA_MISC_INT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @MACE_MISC_INT, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @maceisa_mask, align 4
  %30 = load i32, i32* @MACEISA_SUPERIO_INT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @MACE_SUPERIO_INT, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %3, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @crime_mask, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @crime_mask, align 4
  %42 = load i32, i32* @crime_mask, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @crime, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = call i32 (...) @flush_crime_bus()
  %46 = load i32, i32* @maceisa_mask, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mace, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = call i32 (...) @flush_mace_bus()
  ret void
}

declare dso_local i32 @flush_crime_bus(...) #1

declare dso_local i32 @flush_mace_bus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
