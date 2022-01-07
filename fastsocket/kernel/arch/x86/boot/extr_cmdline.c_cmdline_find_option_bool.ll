; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cmdline.c_cmdline_find_option_bool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cmdline.c_cmdline_find_option_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdline_find_option_bool(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 1048576
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %1
  store i32 -1, i32* %2, align 4
  br label %91

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 4
  %23 = call i32 @set_fs(i32 %22)
  br label %24

24:                                               ; preds = %89, %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 65536
  br i1 %26, label %27, label %90

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = call signext i8 @rdfs8(i32 %28)
  store i8 %30, i8* %6, align 1
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %89 [
    i32 0, label %34
    i32 1, label %47
    i32 2, label %78
  ]

34:                                               ; preds = %27
  %35 = load i8, i8* %6, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %91

38:                                               ; preds = %34
  %39 = load i8, i8* %6, align 1
  %40 = call i32 @myisspace(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %89

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  %45 = load i8*, i8** %3, align 8
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %27, %44
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %6, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8, i8* %6, align 1
  %56 = call i32 @myisspace(i8 signext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %91

60:                                               ; preds = %54
  store i32 2, i32* %10, align 4
  br label %61

61:                                               ; preds = %60
  br label %77

62:                                               ; preds = %47
  %63 = load i8, i8* %6, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %91

66:                                               ; preds = %62
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 2, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %61
  br label %89

78:                                               ; preds = %27
  %79 = load i8, i8* %6, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %91

82:                                               ; preds = %78
  %83 = load i8, i8* %6, align 1
  %84 = call i32 @myisspace(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %82
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %27, %88, %77, %42
  br label %24

90:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %81, %65, %58, %37, %17
  %92 = load i32, i32* %2, align 4
  ret i32 %92
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
