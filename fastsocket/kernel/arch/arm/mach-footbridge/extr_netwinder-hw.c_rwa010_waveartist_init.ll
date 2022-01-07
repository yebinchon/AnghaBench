; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_rwa010_waveartist_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_rwa010_waveartist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"WaveArtist base: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%02X%02X (%X),\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" irq: %d (%d),\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" dma: %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @rwa010_waveartist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwa010_waveartist_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @WRITE_RWA(i32 7, i32 0)
  %9 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = call i32 @WRITE_RWA(i32 97, i32 %11)
  %13 = call i32 @inb(i32 515)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = call i32 @WRITE_RWA(i32 96, i32 %15)
  %17 = call i32 @inb(i32 515)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @WRITE_RWA(i32 112, i32 %21)
  %23 = call i32 @inb(i32 515)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @WRITE_RWA(i32 116, i32 %26)
  %28 = call i32 @inb(i32 515)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 %29)
  %31 = call i32 @WRITE_RWA(i32 48, i32 1)
  ret void
}

declare dso_local i32 @WRITE_RWA(i32, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
