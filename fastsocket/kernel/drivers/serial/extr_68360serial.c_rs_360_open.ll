; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.tty_struct* }
%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }

@NR_PORTS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rs_open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @rs_360_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_360_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NR_PORTS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @get_async_struct(i32 %22, %struct.TYPE_10__** %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %21
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @serial_paranoia_check(%struct.TYPE_10__* %29, i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 2
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store %struct.tty_struct* %42, %struct.tty_struct** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = call i32 @startup(%struct.TYPE_10__* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %38
  %53 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = call i32 @block_til_ready(%struct.tty_struct* %53, %struct.file* %54, %struct.TYPE_10__* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %50, %35, %26, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @get_async_struct(i32, %struct.TYPE_10__**) #1

declare dso_local i64 @serial_paranoia_check(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @startup(%struct.TYPE_10__*) #1

declare dso_local i32 @block_til_ready(%struct.tty_struct*, %struct.file*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
