; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_build_constructor_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_build_constructor_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to allocate memory for constructor string\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8**)* @build_constructor_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_constructor_string(%struct.dm_target* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load i8**, i8*** %9, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %30, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i8**, i8*** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 20
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 %36, i32 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = call i32 @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %75

45:                                               ; preds = %33
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %48 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %68, %45
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8**, i8*** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load i8*, i8** %12, align 8
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %41
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
