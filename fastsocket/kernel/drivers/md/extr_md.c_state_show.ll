; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_state_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Faulty = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%sfaulty\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@In_sync = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%sin_sync\00", align 1
@WriteMostly = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%swrite_mostly\00", align 1
@Blocked = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"%sblocked\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%sspare\00", align 1
@WriteErrorSeen = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"%swrite_error\00", align 1
@WantReplacement = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"%swant_replacement\00", align 1
@Replacement = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"%sreplacement\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i8*)* @state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @state_show(%struct.md_rdev* %0, i8* %1) #0 {
  %3 = alloca %struct.md_rdev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @Faulty, align 4
  %8 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12, %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %18, %12
  %27 = load i32, i32* @In_sync, align 4
  %28 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %29 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %40

40:                                               ; preds = %32, %26
  %41 = load i32, i32* @WriteMostly, align 4
  %42 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i32, i32* @Blocked, align 4
  %56 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %57 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %56, i32 0, i32 0
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %62 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i32, i32* @Faulty, align 4
  %68 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %69 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66, %54
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %80

80:                                               ; preds = %72, %66, %60
  %81 = load i32, i32* @Faulty, align 4
  %82 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %83 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %82, i32 0, i32 0
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @In_sync, align 4
  %88 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %89 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %4, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %100

100:                                              ; preds = %92, %86, %80
  %101 = load i32, i32* @WriteErrorSeen, align 4
  %102 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %103 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %102, i32 0, i32 0
  %104 = call i64 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load i8*, i8** %4, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %114

114:                                              ; preds = %106, %100
  %115 = load i32, i32* @WantReplacement, align 4
  %116 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %117 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %116, i32 0, i32 0
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load i8*, i8** %4, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8*, i8** %5, align 8
  %125 = call i64 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %124)
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %128

128:                                              ; preds = %120, %114
  %129 = load i32, i32* @Replacement, align 4
  %130 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %131 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %130, i32 0, i32 0
  %132 = call i64 @test_bit(i32 %129, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load i8*, i8** %4, align 8
  %136 = load i64, i64* %6, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8*, i8** %5, align 8
  %139 = call i64 (i8*, i8*, ...) @sprintf(i8* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %138)
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %142

142:                                              ; preds = %134, %128
  %143 = load i64, i64* %6, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = call i64 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %148 = add i64 %143, %147
  ret i64 %148
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
