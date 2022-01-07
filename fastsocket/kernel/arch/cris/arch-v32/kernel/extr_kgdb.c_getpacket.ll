; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_getpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_getpacket.c"
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

8:                                                ; preds = %112, %1
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
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BUFMAX, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %112

44:                                               ; preds = %39
  %45 = load i8*, i8** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 35
  br i1 %51, label %52, label %111

52:                                               ; preds = %44
  %53 = call signext i8 (...) @getDebugChar()
  %54 = call zeroext i8 @hex(i8 signext %53)
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 4
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %4, align 1
  %58 = call signext i8 (...) @getDebugChar()
  %59 = call zeroext i8 @hex(i8 signext %58)
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %4, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %4, align 1
  %65 = load i8, i8* %3, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* %4, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = call i32 @putDebugChar(i8 signext 45)
  br label %110

72:                                               ; preds = %52
  %73 = call i32 @putDebugChar(i8 signext 43)
  %74 = load i8*, i8** %2, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %109

79:                                               ; preds = %72
  %80 = load i8*, i8** %2, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @putDebugChar(i8 signext %82)
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @putDebugChar(i8 signext %86)
  %88 = load i8*, i8** %2, align 8
  %89 = call i32 @gdb_cris_strlen(i8* %88)
  store i32 %89, i32* %6, align 4
  store i32 3, i32* %5, align 4
  br label %90

90:                                               ; preds = %105, %79
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i8*, i8** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 %99, i8* %104, align 1
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %72
  br label %110

110:                                              ; preds = %109, %70
  br label %111

111:                                              ; preds = %110, %44
  br label %112

112:                                              ; preds = %111, %43
  %113 = load i8, i8* %3, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* %4, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %8, label %118

118:                                              ; preds = %112
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
