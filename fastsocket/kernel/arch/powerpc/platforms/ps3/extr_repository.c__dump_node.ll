; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_repository.c__dump_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_repository.c__dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%s:%d: lpar: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"n1: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"n2: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"n3: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"n4: \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s:%d: v1: %016llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s:%d: v2: %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i8*, i32)* @_dump_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dump_node(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load i8*, i8** %17, align 8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %17, align 8
  %25 = load i32, i32* %18, align 4
  %26 = call i32 @_dump_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* %24, i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %17, align 8
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @_dump_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* %28, i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = load i8*, i8** %17, align 8
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @_dump_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %31, i8* %32, i32 %33)
  %35 = load i32, i32* %14, align 4
  %36 = load i8*, i8** %17, align 8
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @_dump_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %35, i8* %36, i32 %37)
  %39 = load i8*, i8** %17, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %39, i32 %40, i32 %41)
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

declare dso_local i32 @_dump_field(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
