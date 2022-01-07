; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_REPLIES = common dso_local global i32 0, align 4
@STATUS_DIR = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@STATUS_BUSY = common dso_local global i32 0, align 4
@STATUS_DMA = common dso_local global i32 0, align 4
@FD_DATA = common dso_local global i32 0, align 4
@reply_buffer = common dso_local global i32* null, align 8
@initialising = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"get result error. Fdc=%d Last status=%x Read bytes=%d\0A\00", align 1
@fdc = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@jiffies = common dso_local global i32 0, align 4
@resultjiffies = common dso_local global i32 0, align 4
@resultsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @result() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %47, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MAX_REPLIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %50

8:                                                ; preds = %4
  %9 = call i32 (...) @wait_til_ready()
  store i32 %9, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %50

12:                                               ; preds = %8
  %13 = load i32, i32* @STATUS_DIR, align 4
  %14 = load i32, i32* @STATUS_READY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @STATUS_BUSY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @STATUS_DMA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @STATUS_BUSY, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @STATUS_READY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %1, align 4
  br label %62

30:                                               ; preds = %12
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @STATUS_DIR, align 4
  %33 = load i32, i32* @STATUS_READY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @STATUS_BUSY, align 4
  %36 = or i32 %34, %35
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32, i32* @FD_DATA, align 4
  %40 = call i32 @fd_inb(i32 %39)
  %41 = load i32*, i32** @reply_buffer, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %46

45:                                               ; preds = %30
  br label %50

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %4

50:                                               ; preds = %45, %11, %4
  %51 = load i32, i32* @initialising, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @fdc, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @DPRINT(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = call i32 (...) @show_floppy()
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  store i32 -1, i32* %1, align 4
  br label %62

62:                                               ; preds = %59, %28
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @wait_til_ready(...) #1

declare dso_local i32 @fd_inb(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, i32, i32) #1

declare dso_local i32 @show_floppy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
