; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-exception-store.c_dm_exception_store_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-exception-store.c_dm_exception_store_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8* }
%struct.dm_snapshot = type { i32 }
%struct.dm_exception_store = type { %struct.dm_snapshot*, %struct.dm_exception_store_type* }
%struct.dm_exception_store_type = type { i32 (%struct.dm_exception_store.0*, i32, i32*)* }
%struct.dm_exception_store.0 = type opaque

@.str = private unnamed_addr constant [39 x i8] c"Insufficient exception store arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Exception store allocation failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Persistent flag is not P or N\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Exception store type not recognised\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Exception store type constructor failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_exception_store_create(%struct.dm_target* %0, i32 %1, i8** %2, %struct.dm_snapshot* %3, i32* %4, %struct.dm_exception_store** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dm_snapshot*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dm_exception_store**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dm_exception_store_type*, align 8
  %16 = alloca %struct.dm_exception_store*, align 8
  %17 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store %struct.dm_snapshot* %3, %struct.dm_snapshot** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.dm_exception_store** %5, %struct.dm_exception_store*** %13, align 8
  store i32 0, i32* %14, align 4
  store %struct.dm_exception_store_type* null, %struct.dm_exception_store_type** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %106

25:                                               ; preds = %6
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.dm_exception_store* @kmalloc(i32 16, i32 %26)
  store %struct.dm_exception_store* %27, %struct.dm_exception_store** %16, align 8
  %28 = load %struct.dm_exception_store*, %struct.dm_exception_store** %16, align 8
  %29 = icmp ne %struct.dm_exception_store* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %32 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %106

35:                                               ; preds = %25
  %36 = load i8**, i8*** %10, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call signext i8 @toupper(i8 signext %39)
  store i8 %40, i8* %17, align 1
  %41 = load i8, i8* %17, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 80
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call %struct.dm_exception_store_type* @get_type(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dm_exception_store_type* %45, %struct.dm_exception_store_type** %15, align 8
  br label %58

46:                                               ; preds = %35
  %47 = load i8, i8* %17, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 78
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call %struct.dm_exception_store_type* @get_type(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dm_exception_store_type* %51, %struct.dm_exception_store_type** %15, align 8
  br label %57

52:                                               ; preds = %46
  %53 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %54 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %102

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %44
  %59 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %15, align 8
  %60 = icmp ne %struct.dm_exception_store_type* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %63 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %14, align 4
  br label %102

66:                                               ; preds = %58
  %67 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %15, align 8
  %68 = load %struct.dm_exception_store*, %struct.dm_exception_store** %16, align 8
  %69 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %68, i32 0, i32 1
  store %struct.dm_exception_store_type* %67, %struct.dm_exception_store_type** %69, align 8
  %70 = load %struct.dm_snapshot*, %struct.dm_snapshot** %11, align 8
  %71 = load %struct.dm_exception_store*, %struct.dm_exception_store** %16, align 8
  %72 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %71, i32 0, i32 0
  store %struct.dm_snapshot* %70, %struct.dm_snapshot** %72, align 8
  %73 = load %struct.dm_exception_store*, %struct.dm_exception_store** %16, align 8
  %74 = load i8**, i8*** %10, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %78 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %77, i32 0, i32 0
  %79 = call i32 @set_chunk_size(%struct.dm_exception_store* %73, i8* %76, i8** %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  br label %99

83:                                               ; preds = %66
  %84 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %15, align 8
  %85 = getelementptr inbounds %struct.dm_exception_store_type, %struct.dm_exception_store_type* %84, i32 0, i32 0
  %86 = load i32 (%struct.dm_exception_store.0*, i32, i32*)*, i32 (%struct.dm_exception_store.0*, i32, i32*)** %85, align 8
  %87 = load %struct.dm_exception_store*, %struct.dm_exception_store** %16, align 8
  %88 = bitcast %struct.dm_exception_store* %87 to %struct.dm_exception_store.0*
  %89 = call i32 %86(%struct.dm_exception_store.0* %88, i32 0, i32* null)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %94 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8** %94, align 8
  br label %99

95:                                               ; preds = %83
  %96 = load i32*, i32** %12, align 8
  store i32 2, i32* %96, align 4
  %97 = load %struct.dm_exception_store*, %struct.dm_exception_store** %16, align 8
  %98 = load %struct.dm_exception_store**, %struct.dm_exception_store*** %13, align 8
  store %struct.dm_exception_store* %97, %struct.dm_exception_store** %98, align 8
  store i32 0, i32* %7, align 4
  br label %106

99:                                               ; preds = %92, %82
  %100 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %15, align 8
  %101 = call i32 @put_type(%struct.dm_exception_store_type* %100)
  br label %102

102:                                              ; preds = %99, %61, %52
  %103 = load %struct.dm_exception_store*, %struct.dm_exception_store** %16, align 8
  %104 = call i32 @kfree(%struct.dm_exception_store* %103)
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %95, %30, %20
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.dm_exception_store* @kmalloc(i32, i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local %struct.dm_exception_store_type* @get_type(i8*) #1

declare dso_local i32 @set_chunk_size(%struct.dm_exception_store*, i8*, i8**) #1

declare dso_local i32 @put_type(%struct.dm_exception_store_type*) #1

declare dso_local i32 @kfree(%struct.dm_exception_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
