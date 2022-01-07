; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_map_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_map_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Reading offset %lu len %lu gave %zi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i64)* @map_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_at(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i32, i32* @PROT_READ, align 4
  %13 = load i32, i32* @PROT_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PROT_EXEC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MAP_FIXED, align 4
  %18 = load i32, i32* @MAP_PRIVATE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @mmap(i8* %10, i64 %11, i32 %16, i32 %19, i32 %20, i64 %21)
  %23 = load i64, i64* @MAP_FAILED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %40

26:                                               ; preds = %4
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @pread(i32 %27, i8* %28, i64 %29, i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %25, %35, %26
  ret void
}

declare dso_local i64 @mmap(i8*, i64, i32, i32, i32, i64) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @err(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
