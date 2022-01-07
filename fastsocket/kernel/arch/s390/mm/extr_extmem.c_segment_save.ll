; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_segment_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_segment_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MACHINE_IS_VM = common dso_local global i32 0, align 4
@dcss_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Saving unknown DCSS %s failed\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"DEFSEG %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" %lX-%lX %s\00", align 1
@segtype_string = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"SAVESEG %s\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Saving a DCSS failed with DEFSEG response code %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Saving a DCSS failed with SAVESEG response code %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @segment_save(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dcss_segment*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [160 x i8], align 16
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @MACHINE_IS_VM, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %107

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @dcss_lock)
  %15 = load i8*, i8** %2, align 8
  %16 = call %struct.dcss_segment* @segment_by_name(i8* %15)
  store %struct.dcss_segment* %16, %struct.dcss_segment** %3, align 8
  %17 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %18 = icmp eq %struct.dcss_segment* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %105

22:                                               ; preds = %13
  %23 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %24 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %29 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %82, %22
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %39 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %36
  %43 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %44 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %45 = call i32 @strlen(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %49 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %59 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PAGE_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32*, i32** @segtype_string, align 8
  %69 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %70 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 255
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %68, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %67, i32 %80)
  br label %82

82:                                               ; preds = %42
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %36

85:                                               ; preds = %36
  %86 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %87 = load i8*, i8** %2, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  store i32 0, i32* %9, align 4
  %89 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %90 = call i32 @cpcmd(i8* %89, i32* null, i32 0, i32* %9)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %105

96:                                               ; preds = %85
  %97 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %98 = call i32 @cpcmd(i8* %97, i32* null, i32 0, i32* %9)
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %105

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %101, %93, %19
  %106 = call i32 @mutex_unlock(i32* @dcss_lock)
  br label %107

107:                                              ; preds = %105, %12
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dcss_segment* @segment_by_name(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cpcmd(i8*, i32*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
