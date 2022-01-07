; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_AddInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_AddInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\02\02\00\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_MULTI_IE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"AddIFac[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64**, i64**, i64*, i64*)* @AddInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AddInfo(i64** %0, i64** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64**, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64** %0, i64*** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %13, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i64*, i64** %7, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, 127
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i64**, i64*** %5, align 8
  %29 = getelementptr inbounds i64*, i64** %28, i64 0
  store i64* bitcast ([4 x i8]* @.str to i64*), i64** %29, align 8
  br label %33

30:                                               ; preds = %18, %4
  %31 = load i64**, i64*** %5, align 8
  %32 = getelementptr inbounds i64*, i64** %31, i64 0
  store i64* bitcast ([1 x i8]* @.str.1 to i64*), i64** %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64**, i64*** %6, align 8
  %35 = getelementptr inbounds i64*, i64** %34, i64 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i64**, i64*** %5, align 8
  %42 = getelementptr inbounds i64*, i64** %41, i64 3
  store i64* bitcast ([1 x i8]* @.str.1 to i64*), i64** %42, align 8
  br label %118

43:                                               ; preds = %33
  store i64 0, i64* %9, align 8
  store i64 1, i64* %10, align 8
  br label %44

44:                                               ; preds = %108, %43
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @MAX_MULTI_IE, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i64**, i64*** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i64*, i64** %49, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %48, %44
  %57 = phi i1 [ false, %44 ], [ %55, %48 ]
  br i1 %57, label %58, label %111

58:                                               ; preds = %56
  %59 = load i64**, i64*** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i64*, i64** %59, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = call i32 @dbug(i32 1, i32 %65)
  %67 = load i64**, i64*** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64*, i64** %67, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add i64 %75, 2
  store i64 %76, i64* %13, align 8
  %77 = load i64**, i64*** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64*, i64** %77, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %12, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  %86 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 28, i64* %86, align 8
  store i64 0, i64* %11, align 8
  br label %87

87:                                               ; preds = %102, %58
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp ule i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load i64**, i64*** %6, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i64*, i64** %92, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %91
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %87

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %9, align 8
  br label %44

111:                                              ; preds = %56
  %112 = load i64, i64* %13, align 8
  %113 = load i64*, i64** %8, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  store i64 %112, i64* %114, align 8
  %115 = load i64*, i64** %8, align 8
  %116 = load i64**, i64*** %5, align 8
  %117 = getelementptr inbounds i64*, i64** %116, i64 3
  store i64* %115, i64** %117, align 8
  br label %118

118:                                              ; preds = %111, %40
  %119 = load i64**, i64*** %5, align 8
  %120 = getelementptr inbounds i64*, i64** %119, i64 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64**, i64*** %5, align 8
  %125 = getelementptr inbounds i64*, i64** %124, i64 1
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %123, %128
  %130 = load i64**, i64*** %5, align 8
  %131 = getelementptr inbounds i64*, i64** %130, i64 2
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %129, %134
  %136 = load i64**, i64*** %5, align 8
  %137 = getelementptr inbounds i64*, i64** %136, i64 3
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %135, %140
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* %13, align 8
  %143 = add i64 %142, 4
  store i64 %143, i64* %13, align 8
  %144 = load i64, i64* %13, align 8
  ret i64 %144
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
