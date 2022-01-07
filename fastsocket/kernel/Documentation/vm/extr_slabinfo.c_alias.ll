; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aliasinfo = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@aliasinfo = common dso_local global %struct.aliasinfo* null, align 8
@aliases = common dso_local global i32 0, align 4
@show_single_ref = common dso_local global i32 0, align 4
@show_inverted = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0A%-12s <- %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%-20s -> %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alias() #0 {
  %1 = alloca %struct.aliasinfo*, align 8
  %2 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  %3 = call i32 (...) @sort_aliases()
  %4 = call i32 (...) @link_slabs()
  %5 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  store %struct.aliasinfo* %5, %struct.aliasinfo** %1, align 8
  br label %6

6:                                                ; preds = %71, %0
  %7 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %8 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  %9 = load i32, i32* @aliases, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %8, i64 %10
  %12 = icmp ult %struct.aliasinfo* %7, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %6
  %14 = load i32, i32* @show_single_ref, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %18 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %71

24:                                               ; preds = %16, %13
  %25 = load i32, i32* @show_inverted, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %32 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %41 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %71

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %47 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %52 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %53)
  %55 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %56 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %2, align 8
  br label %70

60:                                               ; preds = %24
  %61 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %62 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %65 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %68)
  br label %70

70:                                               ; preds = %60, %45
  br label %71

71:                                               ; preds = %70, %39, %23
  %72 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %73 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %72, i32 1
  store %struct.aliasinfo* %73, %struct.aliasinfo** %1, align 8
  br label %6

74:                                               ; preds = %6
  %75 = load i8*, i8** %2, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  ret void
}

declare dso_local i32 @sort_aliases(...) #1

declare dso_local i32 @link_slabs(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
