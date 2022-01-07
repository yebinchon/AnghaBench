; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video.c_get_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video.c_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1
@VIDEO_CURRENT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_entry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %54, %0
  %8 = call i32 (...) @getchar()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %11
  br label %53

19:                                               ; preds = %7
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 48
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %37, label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 65
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %29, 90
  br i1 %30, label %37, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 97
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 122
  br i1 %36, label %37, label %52

37:                                               ; preds = %34, %28, %22
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %46
  store i8 %43, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = trunc i32 %48 to i8
  %50 = call i32 @putchar(i8 signext %49)
  br label %51

51:                                               ; preds = %41, %37
  br label %52

52:                                               ; preds = %51, %34, %31
  br label %53

53:                                               ; preds = %52, %18
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 13
  br i1 %56, label %7, label %57

57:                                               ; preds = %54
  %58 = call i32 @putchar(i8 signext 10)
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @VIDEO_CURRENT_MODE, align 4
  store i32 %62, i32* %1, align 4
  br label %95

63:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %90, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = or i32 %75, 32
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 57
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 97
  %82 = add nsw i32 %81, 10
  br label %86

83:                                               ; preds = %68
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %84, 48
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i32 [ %82, %79 ], [ %85, %83 ]
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %64

93:                                               ; preds = %64
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %1, align 4
  br label %95

95:                                               ; preds = %93, %61
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
