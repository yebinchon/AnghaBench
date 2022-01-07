; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_metadata_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_metadata_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.mddev = type { i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"external:\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@super_types = common dso_local global %struct.TYPE_3__* null, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @metadata_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @metadata_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mddev*, %struct.mddev** %5, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %30

21:                                               ; preds = %16, %3
  %22 = load %struct.mddev*, %struct.mddev** %5, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 5
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @EBUSY, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %4, align 8
  br label %159

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @cmd_match(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.mddev*, %struct.mddev** %5, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.mddev*, %struct.mddev** %5, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = load %struct.mddev*, %struct.mddev** %5, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 3
  store i32 90, i32* %42, align 4
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %4, align 8
  br label %159

44:                                               ; preds = %30
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %96

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 9
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp uge i64 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i64 7, i64* %11, align 8
  br label %54

54:                                               ; preds = %53, %48
  %55 = load %struct.mddev*, %struct.mddev** %5, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 9
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @strncpy(i8* %57, i8* %59, i64 %60)
  %62 = load %struct.mddev*, %struct.mddev** %5, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %54
  %70 = load %struct.mddev*, %struct.mddev** %5, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load %struct.mddev*, %struct.mddev** %5, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %79, %69, %54
  %87 = load %struct.mddev*, %struct.mddev** %5, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.mddev*, %struct.mddev** %5, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.mddev*, %struct.mddev** %5, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load %struct.mddev*, %struct.mddev** %5, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 3
  store i32 90, i32* %94, align 4
  %95 = load i64, i64* %7, align 8
  store i64 %95, i64* %4, align 8
  br label %159

96:                                               ; preds = %44
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @simple_strtoul(i8* %97, i8** %10, i32 10)
  store i32 %98, i32* %8, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 46
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %96
  %108 = load i64, i64* @EINVAL, align 8
  %109 = sub i64 0, %108
  store i64 %109, i64* %4, align 8
  br label %159

110:                                              ; preds = %102
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %6, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @simple_strtoul(i8* %113, i8** %10, i32 10)
  store i32 %114, i32* %9, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = icmp eq i8* %115, %116
  br i1 %117, label %128, label %118

118:                                              ; preds = %110
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 10
  br i1 %127, label %128, label %131

128:                                              ; preds = %123, %110
  %129 = load i64, i64* @EINVAL, align 8
  %130 = sub i64 0, %129
  store i64 %130, i64* %4, align 8
  br label %159

131:                                              ; preds = %123, %118
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @super_types, align 8
  %134 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %133)
  %135 = icmp sge i32 %132, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @super_types, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %136, %131
  %145 = load i64, i64* @ENOENT, align 8
  %146 = sub i64 0, %145
  store i64 %146, i64* %4, align 8
  br label %159

147:                                              ; preds = %136
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.mddev*, %struct.mddev** %5, align 8
  %150 = getelementptr inbounds %struct.mddev, %struct.mddev* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.mddev*, %struct.mddev** %5, align 8
  %153 = getelementptr inbounds %struct.mddev, %struct.mddev* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.mddev*, %struct.mddev** %5, align 8
  %155 = getelementptr inbounds %struct.mddev, %struct.mddev* %154, i32 0, i32 1
  store i32 1, i32* %155, align 4
  %156 = load %struct.mddev*, %struct.mddev** %5, align 8
  %157 = getelementptr inbounds %struct.mddev, %struct.mddev* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = load i64, i64* %7, align 8
  store i64 %158, i64* %4, align 8
  br label %159

159:                                              ; preds = %147, %144, %128, %107, %86, %34, %26
  %160 = load i64, i64* %4, align 8
  ret i64 %160
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
