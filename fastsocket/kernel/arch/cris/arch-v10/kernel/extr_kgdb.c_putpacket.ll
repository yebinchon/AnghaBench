; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_putpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_putpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RUNLENMAX = common dso_local global i32 0, align 4
@kgdb_started = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @putpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putpacket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %7

7:                                                ; preds = %82, %1
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %6, align 8
  %9 = call i32 @putDebugChar(i8 signext 36)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %66, %7
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @putDebugChar(i8 signext %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %40, %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RUNLENMAX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %30, %36
  br label %38

38:                                               ; preds = %27, %23
  %39 = phi i1 [ false, %23 ], [ %37, %27 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %23

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = call i32 @putDebugChar(i8 signext 42)
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 42
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 32
  %52 = sub nsw i32 %51, 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 @putDebugChar(i8 signext %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  br label %66

63:                                               ; preds = %43
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %63, %46
  br label %10

67:                                               ; preds = %10
  %68 = call i32 @putDebugChar(i8 signext 35)
  %69 = load i32, i32* %3, align 4
  %70 = call signext i8 @hex_asc_hi(i32 %69)
  %71 = call i32 @putDebugChar(i8 signext %70)
  %72 = load i32, i32* %3, align 4
  %73 = call signext i8 @hex_asc_lo(i32 %72)
  %74 = call i32 @putDebugChar(i8 signext %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i64, i64* @kgdb_started, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = call signext i8 (...) @getDebugChar()
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 43
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i1 [ false, %75 ], [ %81, %78 ]
  br i1 %83, label %7, label %84

84:                                               ; preds = %82
  ret void
}

declare dso_local i32 @putDebugChar(i8 signext) #1

declare dso_local signext i8 @hex_asc_hi(i32) #1

declare dso_local signext i8 @hex_asc_lo(i32) #1

declare dso_local signext i8 @getDebugChar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
