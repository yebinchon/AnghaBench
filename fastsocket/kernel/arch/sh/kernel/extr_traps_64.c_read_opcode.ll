; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_read_opcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_read_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i32)* @read_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_opcode(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 3
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, -4
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load i32, i32* @VERIFY_READ, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @access_ok(i32 %20, i64 %21, i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to i64*
  %31 = call i32 @__get_user(i64 %28, i64* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i64*, i64** %6, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %14
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %4, align 4
  br label %51

41:                                               ; preds = %3
  %42 = load i64, i64* %5, align 8
  %43 = and i64 %42, 1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %45, %36, %34
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @access_ok(i32, i64, i32) #1

declare dso_local i32 @__get_user(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
