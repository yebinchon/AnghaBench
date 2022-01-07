; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_opcode.c_kmemcheck_opcode_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_opcode.c_kmemcheck_opcode_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REX_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmemcheck_opcode_decode(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 4, i32* %5, align 4
  br label %7

7:                                                ; preds = %18, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @opcode_is_prefix(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 102
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 2, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %12
  br label %18

18:                                               ; preds = %17
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %3, align 8
  br label %7

21:                                               ; preds = %7
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @opcode_is_rex_prefix(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @REX_W, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %50 [
    i32 99, label %38
    i32 15, label %40
  ]

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  store i32 4, i32* %39, align 4
  br label %80

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %3, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %49 [
    i32 182, label %45
    i32 190, label %45
    i32 183, label %47
    i32 191, label %47
  ]

45:                                               ; preds = %40, %40
  %46 = load i32*, i32** %4, align 8
  store i32 1, i32* %46, align 4
  br label %80

47:                                               ; preds = %40, %40
  %48 = load i32*, i32** %4, align 8
  store i32 2, i32* %48, align 4
  br label %80

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %35, %49
  %51 = load i32*, i32** %4, align 8
  store i32 8, i32* %51, align 4
  br label %80

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 15
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %3, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 183
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 191
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %57
  store i32 2, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %63
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 1, %76 ]
  %79 = load i32*, i32** %4, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %50, %47, %45, %38
  ret void
}

declare dso_local i64 @opcode_is_prefix(i32) #1

declare dso_local i64 @opcode_is_rex_prefix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
