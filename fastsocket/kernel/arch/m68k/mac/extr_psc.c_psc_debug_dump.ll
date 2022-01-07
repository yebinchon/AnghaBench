; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_psc.c_psc_debug_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_psc.c_psc_debug_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psc_present = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PSC #%d:  IFR = 0x%02X IER = 0x%02X\0A\00", align 1
@pIFRbase = common dso_local global i64 0, align 8
@pIERbase = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @psc_debug_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc_debug_dump() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @psc_present, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %28

5:                                                ; preds = %0
  store i32 48, i32* %1, align 4
  br label %6

6:                                                ; preds = %25, %5
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 112
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = ashr i32 %10, 4
  %12 = load i64, i64* @pIFRbase, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = call i64 @psc_read_byte(i64 %15)
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* @pIERbase, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i64 @psc_read_byte(i64 %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %17, i32 %23)
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 16
  store i32 %27, i32* %1, align 4
  br label %6

28:                                               ; preds = %4, %6
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i64 @psc_read_byte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
