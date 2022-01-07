; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8042_lock = common dso_local global i32 0, align 4
@I8042_STR_OBF = common dso_local global i8 0, align 1
@I8042_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%02x <- i8042 (flush, %s)\00", align 1
@I8042_STR_AUXDATA = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"kbd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i8042_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_flush() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @i8042_lock, i64 %5)
  br label %7

7:                                                ; preds = %20, %0
  %8 = call zeroext i8 (...) @i8042_read_status()
  store i8 %8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @I8042_STR_OBF, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @I8042_BUFFER_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %7
  %19 = phi i1 [ false, %7 ], [ %17, %14 ]
  br i1 %19, label %20, label %35

20:                                               ; preds = %18
  %21 = call i32 @udelay(i32 50)
  %22 = call zeroext i8 (...) @i8042_read_data()
  store i8 %22, i8* %2, align 1
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load i8, i8* %2, align 1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %25, i8* %33)
  br label %7

35:                                               ; preds = %18
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @i8042_lock, i64 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @i8042_read_status(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @i8042_read_data(...) #1

declare dso_local i32 @dbg(i8*, i8 zeroext, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
