; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_getleds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_getleds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_struct = type { i64, i8 }
%struct.TYPE_2__ = type { i32*, i32, i64 }

@kbd_table = common dso_local global %struct.kbd_struct* null, align 8
@fg_console = common dso_local global i32 0, align 4
@LED_SHOW_IOCTL = common dso_local global i64 0, align 8
@ledioctl = common dso_local global i8 0, align 1
@LED_SHOW_MEM = common dso_local global i64 0, align 8
@ledptrs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @getleds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @getleds() #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.kbd_struct*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd_table, align 8
  %6 = load i32, i32* @fg_console, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %5, i64 %7
  store %struct.kbd_struct* %8, %struct.kbd_struct** %2, align 8
  %9 = load %struct.kbd_struct*, %struct.kbd_struct** %2, align 8
  %10 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LED_SHOW_IOCTL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i8, i8* @ledioctl, align 1
  store i8 %15, i8* %1, align 1
  br label %76

16:                                               ; preds = %0
  %17 = load %struct.kbd_struct*, %struct.kbd_struct** %2, align 8
  %18 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 8
  store i8 %19, i8* %3, align 1
  %20 = load %struct.kbd_struct*, %struct.kbd_struct** %2, align 8
  %21 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LED_SHOW_MEM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %70, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ledptrs, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ledptrs, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ledptrs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %44, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 1, %54
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %3, align 1
  br label %68

60:                                               ; preds = %37
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 1, %61
  %63 = xor i32 %62, -1
  %64 = load i8, i8* %3, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %3, align 1
  br label %68

68:                                               ; preds = %60, %53
  br label %69

69:                                               ; preds = %68, %29
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %26

73:                                               ; preds = %26
  br label %74

74:                                               ; preds = %73, %16
  %75 = load i8, i8* %3, align 1
  store i8 %75, i8* %1, align 1
  br label %76

76:                                               ; preds = %74, %14
  %77 = load i8, i8* %1, align 1
  ret i8 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
