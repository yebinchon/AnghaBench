; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_cris_io_interface_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_cris_io_interface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cris_io_interface_init.first = internal global i32 1, align 4
@if_unclaimed = common dso_local global i8* null, align 8
@gpio_pa_owners = common dso_local global i8** null, align 8
@gpio_pb_owners = common dso_local global i8** null, align 8
@gpio_pg_owners = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cris_io_interface_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cris_io_interface_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @cris_io_interface_init.first, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %43

6:                                                ; preds = %0
  store i32 0, i32* @cris_io_interface_init.first, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %26, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load i8*, i8** @if_unclaimed, align 8
  %12 = load i8**, i8*** @gpio_pa_owners, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  store i8* %11, i8** %15, align 8
  %16 = load i8*, i8** @if_unclaimed, align 8
  %17 = load i8**, i8*** @gpio_pb_owners, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  store i8* %16, i8** %20, align 8
  %21 = load i8*, i8** @if_unclaimed, align 8
  %22 = load i8**, i8*** @gpio_pg_owners, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %21, i8** %25, align 8
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %7

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %39, %29
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** @if_unclaimed, align 8
  %35 = load i8**, i8*** @gpio_pg_owners, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %30

42:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %5
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
