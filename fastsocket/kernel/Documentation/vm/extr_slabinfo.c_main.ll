; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"aAd::Defhil1noprstvzTS\00", align 1
@opts = common dso_local global i32 0, align 4
@show_single_ref = common dso_local global i32 0, align 4
@show_alias = common dso_local global i32 0, align 4
@sort_active = common dso_local global i32 0, align 4
@set_debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid debug option '%s'\0A\00", align 1
@show_activity = common dso_local global i32 0, align 4
@show_empty = common dso_local global i32 0, align 4
@show_first_alias = common dso_local global i32 0, align 4
@show_inverted = common dso_local global i32 0, align 4
@show_numa = common dso_local global i32 0, align 4
@show_ops = common dso_local global i32 0, align 4
@show_report = common dso_local global i32 0, align 4
@shrink = common dso_local global i32 0, align 4
@show_slab = common dso_local global i32 0, align 4
@show_track = common dso_local global i32 0, align 4
@validate = common dso_local global i32 0, align 4
@skip_zero = common dso_local global i32 0, align 4
@show_totals = common dso_local global i32 0, align 4
@sort_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@pattern = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: Invalid pattern '%s' code %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @getpagesize()
  store i32 %9, i32* @page_size, align 4
  br label %10

10:                                               ; preds = %53, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @opts, align 4
  %14 = call i32 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %47 [
    i32 49, label %18
    i32 97, label %19
    i32 65, label %20
    i32 100, label %21
    i32 68, label %31
    i32 101, label %32
    i32 102, label %33
    i32 104, label %34
    i32 105, label %36
    i32 110, label %37
    i32 111, label %38
    i32 114, label %39
    i32 115, label %40
    i32 108, label %41
    i32 116, label %42
    i32 118, label %43
    i32 122, label %44
    i32 84, label %45
    i32 83, label %46
  ]

18:                                               ; preds = %16
  store i32 1, i32* @show_single_ref, align 4
  br label %53

19:                                               ; preds = %16
  store i32 1, i32* @show_alias, align 4
  br label %53

20:                                               ; preds = %16
  store i32 1, i32* @sort_active, align 4
  br label %53

21:                                               ; preds = %16
  store i32 1, i32* @set_debug, align 4
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @debug_opt_scan(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @optarg, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %21
  br label %53

31:                                               ; preds = %16
  store i32 1, i32* @show_activity, align 4
  br label %53

32:                                               ; preds = %16
  store i32 1, i32* @show_empty, align 4
  br label %53

33:                                               ; preds = %16
  store i32 1, i32* @show_first_alias, align 4
  br label %53

34:                                               ; preds = %16
  %35 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %123

36:                                               ; preds = %16
  store i32 1, i32* @show_inverted, align 4
  br label %53

37:                                               ; preds = %16
  store i32 1, i32* @show_numa, align 4
  br label %53

38:                                               ; preds = %16
  store i32 1, i32* @show_ops, align 4
  br label %53

39:                                               ; preds = %16
  store i32 1, i32* @show_report, align 4
  br label %53

40:                                               ; preds = %16
  store i32 1, i32* @shrink, align 4
  br label %53

41:                                               ; preds = %16
  store i32 1, i32* @show_slab, align 4
  br label %53

42:                                               ; preds = %16
  store i32 1, i32* @show_track, align 4
  br label %53

43:                                               ; preds = %16
  store i32 1, i32* @validate, align 4
  br label %53

44:                                               ; preds = %16
  store i32 0, i32* @skip_zero, align 4
  br label %53

45:                                               ; preds = %16
  store i32 1, i32* @show_totals, align 4
  br label %53

46:                                               ; preds = %16
  store i32 1, i32* @sort_size, align 4
  br label %53

47:                                               ; preds = %16
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @optopt, align 4
  %52 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %33, %32, %31, %30, %20, %19, %18
  br label %10

54:                                               ; preds = %10
  %55 = load i32, i32* @show_slab, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @show_alias, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @show_track, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @show_report, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @validate, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @shrink, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @set_debug, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @show_ops, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 1, i32* @show_slab, align 4
  br label %79

79:                                               ; preds = %78, %75, %72, %69, %66, %63, %60, %57, %54
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @optind, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %8, align 8
  br label %90

89:                                               ; preds = %79
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %90

90:                                               ; preds = %89, %83
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* @REG_ICASE, align 4
  %93 = load i32, i32* @REG_NOSUB, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @regcomp(i32* @pattern, i8* %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %101, i8* %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %90
  %106 = call i32 (...) @read_slab_dir()
  %107 = load i32, i32* @show_alias, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (...) @alias()
  br label %122

111:                                              ; preds = %105
  %112 = load i32, i32* @show_totals, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (...) @totals()
  br label %121

116:                                              ; preds = %111
  %117 = call i32 (...) @link_slabs()
  %118 = call i32 (...) @rename_slabs()
  %119 = call i32 (...) @sort_slabs()
  %120 = call i32 (...) @output_slabs()
  br label %121

121:                                              ; preds = %116, %114
  br label %122

122:                                              ; preds = %121, %109
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %34
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @debug_opt_scan(i32) #1

declare dso_local i32 @fatal(i8*, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @read_slab_dir(...) #1

declare dso_local i32 @alias(...) #1

declare dso_local i32 @totals(...) #1

declare dso_local i32 @link_slabs(...) #1

declare dso_local i32 @rename_slabs(...) #1

declare dso_local i32 @sort_slabs(...) #1

declare dso_local i32 @output_slabs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
