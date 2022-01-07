; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_rwa010_soundblaster_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_rwa010_soundblaster_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"SoundBlaster base: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%02X%02X (%X),\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" irq: \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d (%d),\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" 8-bit DMA: \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"AdLib base: \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%02X%02X (%X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @rwa010_soundblaster_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwa010_soundblaster_init(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @WRITE_RWA(i32 7, i32 1)
  %11 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @WRITE_RWA(i32 97, i32 %13)
  %15 = call i32 @inb(i32 515)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  %18 = call i32 @WRITE_RWA(i32 96, i32 %17)
  %19 = call i32 @inb(i32 515)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @WRITE_RWA(i32 112, i32 %24)
  %26 = call i32 @inb(i32 515)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %27)
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @WRITE_RWA(i32 116, i32 %30)
  %32 = call i32 @inb(i32 515)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32 %33)
  %35 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @WRITE_RWA(i32 99, i32 %37)
  %39 = call i32 @inb(i32 515)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = call i32 @WRITE_RWA(i32 98, i32 %41)
  %43 = call i32 @inb(i32 515)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = call i32 @WRITE_RWA(i32 48, i32 1)
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
