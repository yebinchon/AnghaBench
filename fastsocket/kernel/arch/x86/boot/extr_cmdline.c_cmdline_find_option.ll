; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cmdline.c_cmdline_find_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cmdline.c_cmdline_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdline_find_option(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  store i32 %15, i32* %8, align 4
  store i32 -1, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 1048576
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  store i32 -1, i32* %4, align 4
  br label %108

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 15
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 4
  %28 = call i32 @set_fs(i32 %27)
  br label %29

29:                                               ; preds = %100, %23
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 65536
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = call signext i8 @rdfs8(i32 %33)
  store i8 %35, i8* %10, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %101

40:                                               ; preds = %38
  %41 = load i32, i32* %14, align 4
  switch i32 %41, label %100 [
    i32 0, label %42
    i32 1, label %49
    i32 2, label %76
    i32 3, label %82
  ]

42:                                               ; preds = %40
  %43 = load i8, i8* %10, align 1
  %44 = call i32 @myisspace(i8 signext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %100

47:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  %48 = load i8*, i8** %5, align 8
  store i8* %48, i8** %12, align 8
  br label %49

49:                                               ; preds = %40, %47
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 61
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %13, align 8
  store i32 3, i32* %14, align 4
  br label %75

59:                                               ; preds = %53, %49
  %60 = load i8, i8* %10, align 1
  %61 = call i32 @myisspace(i8 signext %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %74

64:                                               ; preds = %59
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %12, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 2, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %64
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %57
  br label %100

76:                                               ; preds = %40
  %77 = load i8, i8* %10, align 1
  %78 = call i32 @myisspace(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %76
  br label %100

82:                                               ; preds = %40
  %83 = load i8, i8* %10, align 1
  %84 = call i32 @myisspace(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  br label %99

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i8, i8* %10, align 1
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %13, align 8
  store i8 %93, i8* %94, align 1
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %86
  br label %100

100:                                              ; preds = %40, %99, %81, %75, %46
  br label %29

101:                                              ; preds = %38
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** %13, align 8
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %22
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @set_fs(i32) #1

declare dso_local signext i8 @rdfs8(i32) #1

declare dso_local i32 @myisspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
