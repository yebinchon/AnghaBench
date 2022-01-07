; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video.c_display_menu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video.c_display_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_info = type { i32, i8*, %struct.mode_info* }
%struct.mode_info = type { i32, i32, i32, i32 }

@video_cards = common dso_local global %struct.card_info* null, align 8
@video_cards_end = common dso_local global %struct.card_info* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Mode: Resolution:  Type: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%c %03X %4dx%-7s %-6s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @display_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_menu() #0 {
  %1 = alloca %struct.card_info*, align 8
  %2 = alloca %struct.mode_info*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.card_info*, %struct.card_info** @video_cards, align 8
  store %struct.card_info* %11, %struct.card_info** %1, align 8
  br label %12

12:                                               ; preds = %22, %0
  %13 = load %struct.card_info*, %struct.card_info** %1, align 8
  %14 = load %struct.card_info*, %struct.card_info** @video_cards_end, align 8
  %15 = icmp ult %struct.card_info* %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.card_info*, %struct.card_info** %1, align 8
  %18 = getelementptr inbounds %struct.card_info, %struct.card_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load %struct.card_info*, %struct.card_info** %1, align 8
  %24 = getelementptr inbounds %struct.card_info, %struct.card_info* %23, i32 1
  store %struct.card_info* %24, %struct.card_info** %1, align 8
  br label %12

25:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 20
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %25
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %30

39:                                               ; preds = %30
  %40 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %7, align 4
  store i8 48, i8* %3, align 1
  %41 = load %struct.card_info*, %struct.card_info** @video_cards, align 8
  store %struct.card_info* %41, %struct.card_info** %1, align 8
  br label %42

42:                                               ; preds = %154, %39
  %43 = load %struct.card_info*, %struct.card_info** %1, align 8
  %44 = load %struct.card_info*, %struct.card_info** @video_cards_end, align 8
  %45 = icmp ult %struct.card_info* %43, %44
  br i1 %45, label %46, label %157

46:                                               ; preds = %42
  %47 = load %struct.card_info*, %struct.card_info** %1, align 8
  %48 = getelementptr inbounds %struct.card_info, %struct.card_info* %47, i32 0, i32 2
  %49 = load %struct.mode_info*, %struct.mode_info** %48, align 8
  store %struct.mode_info* %49, %struct.mode_info** %2, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %148, %46
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.card_info*, %struct.card_info** %1, align 8
  %53 = getelementptr inbounds %struct.card_info, %struct.card_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %153

56:                                               ; preds = %50
  %57 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %58 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %63 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %70 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %75 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  br label %86

77:                                               ; preds = %66
  %78 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %79 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %83 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  br label %86

86:                                               ; preds = %77, %73
  %87 = phi i32 [ %76, %73 ], [ %85, %77 ]
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %148

91:                                               ; preds = %86
  %92 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %93 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %98 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %99 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %102 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %103)
  br label %111

105:                                              ; preds = %91
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %107 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %108 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %96
  %112 = load i8, i8* %3, align 1
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %115 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %118 = load %struct.card_info*, %struct.card_info** %1, align 8
  %119 = getelementptr inbounds %struct.card_info, %struct.card_info* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8 signext %112, i32 %113, i32 %116, i8* %117, i8* %120)
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %111
  %130 = load i8, i8* %3, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 57
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i8 97, i8* %3, align 1
  br label %147

134:                                              ; preds = %129
  %135 = load i8, i8* %3, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 122
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i8, i8* %3, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 32
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %134
  store i8 32, i8* %3, align 1
  br label %146

143:                                              ; preds = %138
  %144 = load i8, i8* %3, align 1
  %145 = add i8 %144, 1
  store i8 %145, i8* %3, align 1
  br label %146

146:                                              ; preds = %143, %142
  br label %147

147:                                              ; preds = %146, %133
  br label %148

148:                                              ; preds = %147, %90
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  %151 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %152 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %151, i32 1
  store %struct.mode_info* %152, %struct.mode_info** %2, align 8
  br label %50

153:                                              ; preds = %50
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.card_info*, %struct.card_info** %1, align 8
  %156 = getelementptr inbounds %struct.card_info, %struct.card_info* %155, i32 1
  store %struct.card_info* %156, %struct.card_info** %1, align 8
  br label %42

157:                                              ; preds = %42
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 @putchar(i8 signext 10)
  br label %162

162:                                              ; preds = %160, %157
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @printf(i8*, i8 signext, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
