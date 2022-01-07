; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_output_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_output_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8, i32, i32 }

@STATUS_READY = common dso_local global i32 0, align 4
@STATUS_DIR = common dso_local global i32 0, align 4
@STATUS_DMA = common dso_local global i32 0, align 4
@FD_DATA = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_4__* null, align 8
@initialising = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to send byte %x to FDC. Fdc=%x Status=%x\0A\00", align 1
@fdc = common dso_local global i32 0, align 4
@OLOGSIZE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@output_log = common dso_local global %struct.TYPE_3__* null, align 8
@output_log_pos = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @output_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_byte(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %5 = call i32 (...) @wait_til_ready()
  store i32 %5, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @STATUS_READY, align 4
  %11 = load i32, i32* @STATUS_DIR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @STATUS_DMA, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = load i32, i32* @STATUS_READY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load i8, i8* %3, align 1
  %20 = load i32, i32* @FD_DATA, align 4
  %21 = call i32 @fd_outb(i8 signext %19, i32 %20)
  store i32 0, i32* %2, align 4
  br label %34

22:                                               ; preds = %8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @initialising, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i8, i8* %3, align 1
  %29 = load i32, i32* @fdc, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8 signext %28, i32 %29, i32 %30)
  %32 = call i32 (...) @show_floppy()
  br label %33

33:                                               ; preds = %27, %22
  store i32 -1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %18, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @wait_til_ready(...) #1

declare dso_local i32 @fd_outb(i8 signext, i32) #1

declare dso_local i32 @DPRINT(i8*, i8 signext, i32, i32) #1

declare dso_local i32 @show_floppy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
