; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_devices.c_check_cpu_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_devices.c_check_cpu_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sparc_cpu_model = common dso_local global i64 0, align 8
@sun4m = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32 (i32, i32, i8*)*, i8*, i32*, i32*)* @check_cpu_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cpu_node(i32 %0, i32* %1, i32 (i32, i32, i8*)* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 (i32, i32, i8*)* %2, i32 (i32, i32, i8*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 %14(i32 %15, i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %12, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (...) @cpu_mid_prop()
  %33 = call i32 @prom_getintdefault(i32 %31, i32 %32, i32 0)
  %34 = load i32*, i32** %13, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* @sparc_cpu_model, align 8
  %36 = load i64, i64* @sun4m, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 3
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %38, %30
  br label %43

43:                                               ; preds = %42, %27
  store i32 0, i32* %7, align 4
  br label %50

44:                                               ; preds = %6
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %43
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @prom_getintdefault(i32, i32, i32) #1

declare dso_local i32 @cpu_mid_prop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
