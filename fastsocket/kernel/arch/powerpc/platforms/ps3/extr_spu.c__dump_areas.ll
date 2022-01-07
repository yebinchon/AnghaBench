; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_spu.c__dump_areas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_spu.c__dump_areas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"%s:%d: spe_id:  %xh (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s:%d: priv2:   %lxh\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s:%d: problem: %lxh\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s:%d: ls:      %lxh\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s:%d: shadow:  %lxh\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i8*, i32)* @_dump_areas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dump_areas(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i8*, i8** %13, align 8
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i8*, i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16, i64 %18, i32 %19)
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 (i8*, i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %22, i64 %23)
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 (i8*, i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %26, i64 %27)
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 (i8*, i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %29, i32 %30, i64 %31)
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call i32 (i8*, i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %33, i32 %34, i64 %35)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
