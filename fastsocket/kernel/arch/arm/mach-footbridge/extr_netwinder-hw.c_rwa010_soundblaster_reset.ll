; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_rwa010_soundblaster_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_rwa010_soundblaster_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"SoundBlaster: DSP reset failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SoundBlaster DSP reset: %02X (AA)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SoundBlaster: DSP not ready\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SoundBlaster DSP id: \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%04X\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"SoundBlaster: could not turn speaker off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rwa010_soundblaster_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwa010_soundblaster_reset() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @outb(i32 1, i32 550)
  %3 = call i32 @udelay(i32 3)
  %4 = call i32 @outb(i32 0, i32 550)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = call i32 @inb(i32 558)
  %10 = and i32 %9, 128
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %18

13:                                               ; preds = %8
  %14 = call i32 @mdelay(i32 1)
  br label %15

15:                                               ; preds = %13
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %5

18:                                               ; preds = %12, %5
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @inb(i32 554)
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %36, %23
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = call i32 @inb(i32 556)
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %39

34:                                               ; preds = %29
  %35 = call i32 @mdelay(i32 1)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %26

39:                                               ; preds = %33, %26
  %40 = load i32, i32* %1, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %75

44:                                               ; preds = %39
  %45 = call i32 @outb(i32 225, i32 556)
  %46 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @inb(i32 554)
  store i32 %47, i32* %1, align 4
  %48 = call i32 @udelay(i32 1)
  %49 = call i32 @inb(i32 554)
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %1, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %65, %44
  %56 = load i32, i32* %1, align 4
  %57 = icmp slt i32 %56, 5
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = call i32 @inb(i32 556)
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %68

63:                                               ; preds = %58
  %64 = call i32 @mdelay(i32 1)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %55

68:                                               ; preds = %62, %55
  %69 = load i32, i32* %1, align 4
  %70 = icmp eq i32 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = call i32 @outb(i32 211, i32 556)
  br label %75

75:                                               ; preds = %73, %42
  %76 = call i32 @outb(i32 5, i32 906)
  %77 = call i32 @outb(i32 1, i32 907)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
