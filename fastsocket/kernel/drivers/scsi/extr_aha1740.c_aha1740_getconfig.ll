; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha1740.c_aha1740_getconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha1740.c_aha1740_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aha1740_getconfig.intab = internal global [8 x i32] [i32 9, i32 10, i32 11, i32 12, i32 0, i32 14, i32 15, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @aha1740_getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aha1740_getconfig(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @INTDEF(i32 %9)
  %11 = call i32 @inb(i32 %10)
  %12 = and i32 %11, 7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @aha1740_getconfig.intab, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @INTDEF(i32 %17)
  %19 = call i32 @inb(i32 %18)
  %20 = and i32 %19, 8
  %21 = ashr i32 %20, 3
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RESV1(i32 %23)
  %25 = call i32 @inb(i32 %24)
  %26 = and i32 %25, 1
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @INTDEF(i32 %28)
  %30 = call i32 @inb(i32 %29)
  %31 = or i32 %30, 16
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @INTDEF(i32 %32)
  %34 = call i32 @outb(i32 %31, i32 %33)
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @INTDEF(i32) #1

declare dso_local i32 @RESV1(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
