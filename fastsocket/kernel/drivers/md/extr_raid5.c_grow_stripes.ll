; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_grow_stripes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_grow_stripes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i8**, i32, i64, i32, %struct.kmem_cache*, %struct.TYPE_2__*, i32, i32 }
%struct.kmem_cache = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"raid%d-%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"raid%d-%p\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s-alt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, i32)* @grow_stripes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_stripes(%struct.r5conf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %9 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %12 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @max(i32 %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %16 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i8* @mdname(%struct.TYPE_2__* %32)
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %33)
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %42 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %45 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %43, %struct.TYPE_2__* %46)
  br label %48

48:                                               ; preds = %35, %21
  %49 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %61 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %63 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %66 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = add i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call %struct.kmem_cache* @kmem_cache_create(i8* %69, i32 %75, i32 0, i32 0, i32* null)
  store %struct.kmem_cache* %76, %struct.kmem_cache** %6, align 8
  %77 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %78 = icmp ne %struct.kmem_cache* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %98

80:                                               ; preds = %48
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %82 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %83 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %82, i32 0, i32 4
  store %struct.kmem_cache* %81, %struct.kmem_cache** %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %86 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %96, %80
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %5, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %93 = call i32 @grow_one_stripe(%struct.r5conf* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %98

96:                                               ; preds = %91
  br label %87

97:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %95, %79
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @mdname(%struct.TYPE_2__*) #1

declare dso_local %struct.kmem_cache* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @grow_one_stripe(%struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
