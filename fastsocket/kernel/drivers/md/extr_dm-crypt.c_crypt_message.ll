; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@DM_CRYPT_SUSPENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"not suspended during key manipulation.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wipe\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unrecognised message received.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @crypt_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_message(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.crypt_config*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  store %struct.crypt_config* %12, %struct.crypt_config** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %114

18:                                               ; preds = %3
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcasecmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %113, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @DM_CRYPT_SUSPENDED, align 4
  %26 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %27 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = call i32 @DMWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %118

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %75

37:                                               ; preds = %34
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %37
  %44 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @crypt_set_key(%struct.crypt_config* %44, i8* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %118

53:                                               ; preds = %43
  %54 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %55 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %60 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %62, align 8
  %64 = icmp ne i32 (%struct.crypt_config*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %67 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %69, align 8
  %71 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %72 = call i32 %70(%struct.crypt_config* %71)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %65, %58, %53
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %118

75:                                               ; preds = %37, %34
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %112

78:                                               ; preds = %75
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %112, label %84

84:                                               ; preds = %78
  %85 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %86 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %91 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %93, align 8
  %95 = icmp ne i32 (%struct.crypt_config*)* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %98 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %100, align 8
  %102 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %103 = call i32 %101(%struct.crypt_config* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %118

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %89, %84
  %110 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %111 = call i32 @crypt_wipe_key(%struct.crypt_config* %110)
  store i32 %111, i32* %4, align 4
  br label %118

112:                                              ; preds = %78, %75
  br label %113

113:                                              ; preds = %112, %18
  br label %114

114:                                              ; preds = %113, %17
  %115 = call i32 @DMWARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %109, %106, %73, %51, %30
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @crypt_set_key(%struct.crypt_config*, i8*) #1

declare dso_local i32 @crypt_wipe_key(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
