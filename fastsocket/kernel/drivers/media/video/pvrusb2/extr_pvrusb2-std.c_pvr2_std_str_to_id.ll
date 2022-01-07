; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-std.c_pvr2_std_str_to_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-std.c_pvr2_std_str_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.std_name = type { i32 }

@std_groups = common dso_local global i32 0, align 4
@std_items = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_std_str_to_id(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.std_name*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %119, %54, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %127

18:                                               ; preds = %15
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 45
  br label %34

34:                                               ; preds = %26, %22
  %35 = phi i1 [ false, %22 ], [ %33, %26 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %22

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp uge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %134

44:                                               ; preds = %39
  %45 = load i32, i32* @std_groups, align 4
  %46 = load i32, i32* @std_groups, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call %struct.std_name* @find_std_name(i32 %45, i32 %47, i8* %48, i32 %49)
  store %struct.std_name* %50, %struct.std_name** %14, align 8
  %51 = load %struct.std_name*, %struct.std_name** %14, align 8
  %52 = icmp ne %struct.std_name* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %134

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %62, %61
  store i32 %63, i32* %7, align 4
  store i32 1, i32* %11, align 4
  %64 = load %struct.std_name*, %struct.std_name** %14, align 8
  %65 = getelementptr inbounds %struct.std_name, %struct.std_name* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  br label %15

67:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %13, align 1
  %78 = load i8, i8* %13, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 59
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  br label %90

82:                                               ; preds = %72
  %83 = load i8, i8* %13, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 47
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %68

90:                                               ; preds = %86, %81, %68
  %91 = load i32, i32* @std_items, align 4
  %92 = load i32, i32* @std_items, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call %struct.std_name* @find_std_name(i32 %91, i32 %93, i8* %94, i32 %95)
  store %struct.std_name* %96, %struct.std_name** %14, align 8
  %97 = load %struct.std_name*, %struct.std_name** %14, align 8
  %98 = icmp ne %struct.std_name* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %134

100:                                              ; preds = %90
  %101 = load %struct.std_name*, %struct.std_name** %14, align 8
  %102 = getelementptr inbounds %struct.std_name, %struct.std_name* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %134

109:                                              ; preds = %100
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %116, %109
  %120 = load i32, i32* %12, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sub i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %15

127:                                              ; preds = %15
  %128 = load i32*, i32** %5, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %8, align 4
  %132 = load i32*, i32** %5, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %108, %99, %53, %43
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.std_name* @find_std_name(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
