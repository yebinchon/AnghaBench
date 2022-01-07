; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_ioremap_64.c_ioremap_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_ioremap_64.c_ioremap_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i8*, i64, i64, %struct.resource*, %struct.resource* }

@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%08lx-%08lx: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @ioremap_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioremap_proc_info(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.resource*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = bitcast i8* %22 to %struct.resource*
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 4
  %25 = load %struct.resource*, %struct.resource** %24, align 8
  store %struct.resource* %25, %struct.resource** %15, align 8
  br label %26

26:                                               ; preds = %55, %6
  %27 = load %struct.resource*, %struct.resource** %15, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 32
  %32 = load i8*, i8** %14, align 8
  %33 = icmp uge i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %59

35:                                               ; preds = %29
  %36 = load %struct.resource*, %struct.resource** %15, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.resource*, %struct.resource** %15, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.resource*, %struct.resource** %15, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %49, i8* %50)
  %52 = load i8*, i8** %13, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %42
  %56 = load %struct.resource*, %struct.resource** %15, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 3
  %58 = load %struct.resource*, %struct.resource** %57, align 8
  store %struct.resource* %58, %struct.resource** %15, align 8
  br label %26

59:                                               ; preds = %34, %26
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  ret i32 %65
}

declare dso_local i32 @sprintf(i8*, i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
