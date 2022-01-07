; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_parse_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_parse_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i32, i8* }
%struct.dm_arg_set = type { i32 }
%struct.flakey_c = type { i64, i32, i32, i32, i32 }
%struct.dm_target = type { i8* }

@parse_features._args = internal global [4 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.dm_arg { i32 1, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 255, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [31 x i8] c"Invalid number of feature args\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid corrupt bio byte\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Invalid corrupt value to write into bio byte (0-255)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid corrupt bio flags mask\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"drop_writes\00", align 1
@DROP_WRITES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Feature drop_writes duplicated\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"corrupt_bio_byte\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Feature corrupt_bio_byte requires parameters\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@WRITE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@READ = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"Invalid corrupt bio direction (r or w)\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Unrecognised flakey feature requested\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"drop_writes is incompatible with corrupt_bio_byte with the WRITE flag set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_arg_set*, %struct.flakey_c*, %struct.dm_target*)* @parse_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_features(%struct.dm_arg_set* %0, %struct.flakey_c* %1, %struct.dm_target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_arg_set*, align 8
  %6 = alloca %struct.flakey_c*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %5, align 8
  store %struct.flakey_c* %1, %struct.flakey_c** %6, align 8
  store %struct.dm_target* %2, %struct.dm_target** %7, align 8
  %11 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %12 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %150

16:                                               ; preds = %3
  %17 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  %20 = call i32 @dm_read_arg_group(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 0), %struct.dm_arg_set* %17, i32* %9, i8** %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %150

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %124, %48, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %132

29:                                               ; preds = %26
  %30 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %31 = call i8* @dm_shift_arg(%struct.dm_arg_set* %30)
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @DROP_WRITES, align 4
  %39 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %40 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %39, i32 0, i32 1
  %41 = call i64 @test_and_set_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %45 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %150

48:                                               ; preds = %37
  br label %26

49:                                               ; preds = %29
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %127, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %58 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %150

61:                                               ; preds = %53
  %62 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %63 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %64 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %63, i32 0, i32 4
  %65 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %66 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %65, i32 0, i32 0
  %67 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 1), %struct.dm_arg_set* %62, i32* %64, i8** %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %150

72:                                               ; preds = %61
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %9, align 4
  %75 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %76 = call i8* @dm_shift_arg(%struct.dm_arg_set* %75)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @strcasecmp(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i64, i64* @WRITE, align 8
  %82 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %83 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %98

84:                                               ; preds = %72
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* @READ, align 8
  %90 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %91 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %97

92:                                               ; preds = %84
  %93 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %94 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8** %94, align 8
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %150

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %102 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %103 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %102, i32 0, i32 3
  %104 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %105 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %104, i32 0, i32 0
  %106 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 2), %struct.dm_arg_set* %101, i32* %103, i8** %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %150

111:                                              ; preds = %98
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %112, -1
  store i32 %113, i32* %9, align 4
  %114 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %115 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %116 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %115, i32 0, i32 2
  %117 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %118 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %117, i32 0, i32 0
  %119 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 3), %struct.dm_arg_set* %114, i32* %116, i8** %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %150

124:                                              ; preds = %111
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, -1
  store i32 %126, i32* %9, align 4
  br label %26

127:                                              ; preds = %49
  %128 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %129 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %128, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8** %129, align 8
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %150

132:                                              ; preds = %26
  %133 = load i32, i32* @DROP_WRITES, align 4
  %134 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %135 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %134, i32 0, i32 1
  %136 = call i64 @test_bit(i32 %133, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %140 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @WRITE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %146 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0), i8** %146, align 8
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %150

149:                                              ; preds = %138, %132
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %144, %127, %122, %109, %92, %70, %56, %43, %23, %15
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
