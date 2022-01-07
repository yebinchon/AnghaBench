; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_getpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_getpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @getpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getpacket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %8

8:                                                ; preds = %107, %1
  br label %9

9:                                                ; preds = %13, %8
  %10 = call signext i8 (...) @getDebugChar()
  store i8 %10, i8* %7, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 36
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %9

14:                                               ; preds = %9
  store i8 0, i8* %3, align 1
  store i8 -1, i8* %4, align 1
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BUFMAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = call signext i8 (...) @getDebugChar()
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* %7, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %39

25:                                               ; preds = %19
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1
  %32 = load i8, i8* %7, align 1
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %32, i8* %36, align 1
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %15

39:                                               ; preds = %24, %15
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8, i8* %7, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %106

47:                                               ; preds = %39
  %48 = call signext i8 (...) @getDebugChar()
  %49 = call zeroext i8 @hex(i8 signext %48)
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %4, align 1
  %53 = call signext i8 (...) @getDebugChar()
  %54 = call zeroext i8 @hex(i8 signext %53)
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %4, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %4, align 1
  %60 = load i8, i8* %3, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %4, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = call i32 @putDebugChar(i8 signext 45)
  br label %105

67:                                               ; preds = %47
  %68 = call i32 @putDebugChar(i8 signext 43)
  %69 = load i8*, i8** %2, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 58
  br i1 %73, label %74, label %104

74:                                               ; preds = %67
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @putDebugChar(i8 signext %77)
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @putDebugChar(i8 signext %81)
  %83 = load i8*, i8** %2, align 8
  %84 = call i32 @gdb_cris_strlen(i8* %83)
  store i32 %84, i32* %6, align 4
  store i32 3, i32* %5, align 4
  br label %85

85:                                               ; preds = %100, %74
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i8*, i8** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 %94, i8* %99, align 1
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %85

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %67
  br label %105

105:                                              ; preds = %104, %65
  br label %106

106:                                              ; preds = %105, %39
  br label %107

107:                                              ; preds = %106
  %108 = load i8, i8* %3, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* %4, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %8, label %113

113:                                              ; preds = %107
  ret void
}

declare dso_local signext i8 @getDebugChar(...) #1

declare dso_local zeroext i8 @hex(i8 signext) #1

declare dso_local i32 @putDebugChar(i8 signext) #1

declare dso_local i32 @gdb_cris_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
