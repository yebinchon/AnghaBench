; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_walk_addr_ranges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_walk_addr_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROC_KPAGEFLAGS = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@kpageflags_fd = common dso_local global i32 0, align 4
@nr_addr_ranges = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@opt_pid = common dso_local global i32 0, align 4
@opt_offset = common dso_local global i32* null, align 8
@opt_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @walk_addr_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_addr_ranges() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PROC_KPAGEFLAGS, align 4
  %3 = load i32, i32* @O_RDONLY, align 4
  %4 = call i32 @checked_open(i32 %2, i32 %3)
  store i32 %4, i32* @kpageflags_fd, align 4
  %5 = load i32, i32* @nr_addr_ranges, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ULONG_MAX, align 4
  %9 = call i32 @add_addr_range(i32 0, i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %43, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @nr_addr_ranges, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i32, i32* @opt_pid, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** @opt_offset, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @opt_size, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @walk_pfn(i32 0, i32 %23, i32 %28)
  br label %42

30:                                               ; preds = %15
  %31 = load i32*, i32** @opt_offset, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @opt_size, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @walk_task(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %30, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load i32, i32* @kpageflags_fd, align 4
  %48 = call i32 @close(i32 %47)
  ret void
}

declare dso_local i32 @checked_open(i32, i32) #1

declare dso_local i32 @add_addr_range(i32, i32) #1

declare dso_local i32 @walk_pfn(i32, i32, i32) #1

declare dso_local i32 @walk_task(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
