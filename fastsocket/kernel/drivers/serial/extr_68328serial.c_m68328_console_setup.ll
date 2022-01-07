; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_m68328_console_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_m68328_console_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }

@CONSOLE_BAUD_RATE = common dso_local global i32 0, align 4
@BAUD_TABLE_SIZE = common dso_local global i32 0, align 4
@baud_table = common dso_local global i32* null, align 8
@m68328_console_baud = common dso_local global i32 0, align 4
@m68328_console_cbaud = common dso_local global i32 0, align 4
@CBAUDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m68328_console_setup(%struct.console* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @CONSOLE_BAUD_RATE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.console*, %struct.console** %4, align 8
  %10 = icmp ne %struct.console* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @simple_strtoul(i8* %16, i32* null, i32 0)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %12
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BAUD_TABLE_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32*, i32** @baud_table, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BAUD_TABLE_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* @m68328_console_baud, align 4
  store i32 0, i32* @m68328_console_cbaud, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 15
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @CBAUDEX, align 4
  %46 = load i32, i32* @m68328_console_cbaud, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @m68328_console_cbaud, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 15
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @m68328_console_cbaud, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @m68328_console_cbaud, align 4
  br label %54

54:                                               ; preds = %50, %36
  %55 = call i32 (...) @m68328_set_baud()
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @m68328_set_baud(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
