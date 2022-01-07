; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/isdnloop/extr_isdnloop.c_isdnloop_writecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/isdnloop/extr_isdnloop.c_isdnloop_writecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@ISDN_STAT_STAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.TYPE_9__*)* @isdnloop_writecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdnloop_writecmd(i8* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [256 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %16

16:                                               ; preds = %110, %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %111

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp sgt i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 255, i32* %13, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @copy_from_user(i8* %28, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %126

36:                                               ; preds = %27
  br label %42

37:                                               ; preds = %24
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @memcpy(i8* %38, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = call i32 @isdnloop_putmsg(%struct.TYPE_9__* %43, i8 signext 62)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  store i8* %45, i8** %14, align 8
  br label %46

46:                                               ; preds = %105, %42
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @isdnloop_putmsg(%struct.TYPE_9__* %54, i8 signext %56)
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 %59, i8* %66, align 1
  %67 = load i8*, i8** %14, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %91

71:                                               ; preds = %49
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = call i32 @isdnloop_parse_cmd(%struct.TYPE_9__* %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %71
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = call i32 @isdnloop_putmsg(%struct.TYPE_9__* %86, i8 signext 62)
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %85, %71
  br label %102

91:                                               ; preds = %49
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %94, 59
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %90
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %13, align 4
  %108 = load i8*, i8** %14, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %14, align 8
  br label %46

110:                                              ; preds = %46
  br label %16

111:                                              ; preds = %16
  %112 = load i32, i32* @ISDN_STAT_STAVAIL, align 4
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %122, align 8
  %124 = call i32 %123(%struct.TYPE_10__* %12)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %111, %33
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @copy_from_user(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @isdnloop_putmsg(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @isdnloop_parse_cmd(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
