; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_show_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_show_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_page_range.flags0 = internal global i64 0, align 8
@show_page_range.voff = internal global i64 0, align 8
@show_page_range.index = internal global i64 0, align 8
@show_page_range.count = internal global i64 0, align 8
@opt_pid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%lx\09\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lx\09%lx\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @show_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_page_range(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @show_page_range.flags0, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @show_page_range.index, align 8
  %13 = load i64, i64* @show_page_range.count, align 8
  %14 = add i64 %12, %13
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load i64, i64* @opt_pid, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @show_page_range.voff, align 8
  %22 = load i64, i64* @show_page_range.count, align 8
  %23 = add i64 %21, %22
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %16
  %26 = load i64, i64* @show_page_range.count, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* @show_page_range.count, align 8
  br label %47

28:                                               ; preds = %19, %10, %3
  %29 = load i64, i64* @show_page_range.count, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i64, i64* @opt_pid, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @show_page_range.voff, align 8
  %36 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, i64* @show_page_range.index, align 8
  %39 = load i64, i64* @show_page_range.count, align 8
  %40 = load i64, i64* @show_page_range.flags0, align 8
  %41 = call i32 @page_flag_name(i64 %40)
  %42 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* @show_page_range.flags0, align 8
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* @show_page_range.index, align 8
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* @show_page_range.voff, align 8
  store i64 1, i64* @show_page_range.count, align 8
  br label %47

47:                                               ; preds = %43, %25
  ret void
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @page_flag_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
