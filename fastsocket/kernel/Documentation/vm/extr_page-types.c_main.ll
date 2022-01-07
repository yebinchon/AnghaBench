; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rp:f:a:b:d:lLNXxh\00", align 1
@opts = common dso_local global i32 0, align 4
@opt_raw = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@opt_list = common dso_local global i32 0, align 4
@opt_no_summary = common dso_local global i32 0, align 4
@opt_hwpoison = common dso_local global i32 0, align 4
@opt_unpoison = common dso_local global i32 0, align 4
@opt_pid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"voffset\09\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"offset\09len\09flags\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"offset\09flags\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @getpagesize()
  store i32 %7, i32* @page_size, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i32, i32* @opts, align 4
  %12 = call i32 @getopt_long(i32 %9, i8** %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11, i32* null)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %43 [
    i32 114, label %16
    i32 112, label %17
    i32 102, label %20
    i32 97, label %23
    i32 98, label %26
    i32 100, label %29
    i32 108, label %33
    i32 76, label %34
    i32 78, label %35
    i32 88, label %36
    i32 120, label %38
    i32 104, label %40
  ]

16:                                               ; preds = %14
  store i32 1, i32* @opt_raw, align 4
  br label %46

17:                                               ; preds = %14
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @parse_pid(i32 %18)
  br label %46

20:                                               ; preds = %14
  %21 = load i32, i32* @optarg, align 4
  %22 = call i32 @parse_file(i32 %21)
  br label %46

23:                                               ; preds = %14
  %24 = load i32, i32* @optarg, align 4
  %25 = call i32 @parse_addr_range(i32 %24)
  br label %46

26:                                               ; preds = %14
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @parse_bits_mask(i32 %27)
  br label %46

29:                                               ; preds = %14
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @describe_flags(i32 %30)
  %32 = call i32 @exit(i32 0) #3
  unreachable

33:                                               ; preds = %14
  store i32 1, i32* @opt_list, align 4
  br label %46

34:                                               ; preds = %14
  store i32 2, i32* @opt_list, align 4
  br label %46

35:                                               ; preds = %14
  store i32 1, i32* @opt_no_summary, align 4
  br label %46

36:                                               ; preds = %14
  store i32 1, i32* @opt_hwpoison, align 4
  %37 = call i32 (...) @prepare_hwpoison_fd()
  br label %46

38:                                               ; preds = %14
  store i32 1, i32* @opt_unpoison, align 4
  %39 = call i32 (...) @prepare_hwpoison_fd()
  br label %46

40:                                               ; preds = %14
  %41 = call i32 (...) @usage()
  %42 = call i32 @exit(i32 0) #3
  unreachable

43:                                               ; preds = %14
  %44 = call i32 (...) @usage()
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %38, %36, %35, %34, %33, %26, %23, %20, %17, %16
  br label %8

47:                                               ; preds = %8
  %48 = load i32, i32* @opt_list, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i64, i64* @opt_pid, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50, %47
  %56 = load i32, i32* @opt_list, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* @opt_list, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = call i32 (...) @walk_addr_ranges()
  %67 = load i32, i32* @opt_list, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @show_page_range(i32 0, i32 0, i32 0)
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* @opt_no_summary, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %82

75:                                               ; preds = %71
  %76 = load i32, i32* @opt_list, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = call i32 (...) @show_summary()
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %74
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @parse_pid(i32) #1

declare dso_local i32 @parse_file(i32) #1

declare dso_local i32 @parse_addr_range(i32) #1

declare dso_local i32 @parse_bits_mask(i32) #1

declare dso_local i32 @describe_flags(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @prepare_hwpoison_fd(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @walk_addr_ranges(...) #1

declare dso_local i32 @show_page_range(i32, i32, i32) #1

declare dso_local i32 @show_summary(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
