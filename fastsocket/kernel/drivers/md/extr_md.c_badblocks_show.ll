; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_badblocks_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_badblocks_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i64, i32, i32, i64, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%llu %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.badblocks*, i8*, i32)* @badblocks_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @badblocks_show(%struct.badblocks* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.badblocks*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.badblocks* %0, %struct.badblocks** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %16 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %19 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %106

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %103, %23
  %25 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %26 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %25, i32 0, i32 2
  %27 = call i32 @read_seqbegin(i32* %26)
  store i32 %27, i32* %11, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %67, %66, %24
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %35 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %40, label %88

40:                                               ; preds = %38
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @BB_OFFSET(i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BB_LEN(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BB_ACK(i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %40
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %28

67:                                               ; preds = %63, %40
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i64, i64* %8, align 8
  %73 = sub i64 %71, %72
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %76 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = shl i64 %74, %77
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %81 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %79, %83
  %85 = call i64 @snprintf(i8* %70, i64 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %78, i32 %84)
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %8, align 8
  br label %28

88:                                               ; preds = %38
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %96 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %99 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %98, i32 0, i32 2
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @read_seqretry(i32* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %24

104:                                              ; preds = %97
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %104, %22
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @BB_OFFSET(i32) #1

declare dso_local i32 @BB_LEN(i32) #1

declare dso_local i32 @BB_ACK(i32) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
