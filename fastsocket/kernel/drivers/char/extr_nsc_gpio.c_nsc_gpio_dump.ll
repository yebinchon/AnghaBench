; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nsc_gpio.c_nsc_gpio_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nsc_gpio.c_nsc_gpio_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsc_gpio_ops = type { i32 (i32, i32, i32)*, i32 (i32)*, i32 (i32)*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"io%02u: 0x%04x %s %s %s %s %s %s %s\09io:%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"PP\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OD\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"PUE\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PUD\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"LOCKED\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"LEVEL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EDGE\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"DEBOUNCE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nsc_gpio_dump(%struct.nsc_gpio_ops* %0, i32 %1) #0 {
  %3 = alloca %struct.nsc_gpio_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nsc_gpio_ops* %0, %struct.nsc_gpio_ops** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nsc_gpio_ops*, %struct.nsc_gpio_ops** %3, align 8
  %7 = getelementptr inbounds %struct.nsc_gpio_ops, %struct.nsc_gpio_ops* %6, i32 0, i32 0
  %8 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 %8(i32 %9, i32 -1, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nsc_gpio_ops*, %struct.nsc_gpio_ops** %3, align 8
  %12 = getelementptr inbounds %struct.nsc_gpio_ops, %struct.nsc_gpio_ops* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 8
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 16
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 32
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 64
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %51 = load %struct.nsc_gpio_ops*, %struct.nsc_gpio_ops** %3, align 8
  %52 = getelementptr inbounds %struct.nsc_gpio_ops, %struct.nsc_gpio_ops* %51, i32 0, i32 2
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 %53(i32 %54)
  %56 = load %struct.nsc_gpio_ops*, %struct.nsc_gpio_ops** %3, align 8
  %57 = getelementptr inbounds %struct.nsc_gpio_ops, %struct.nsc_gpio_ops* %56, i32 0, i32 1
  %58 = load i32 (i32)*, i32 (i32)** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 %58(i32 %59)
  %61 = call i32 @dev_info(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i8* %20, i8* %25, i8* %30, i8* %35, i8* %40, i8* %45, i8* %50, i32 %55, i32 %60)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
