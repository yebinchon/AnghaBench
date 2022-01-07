; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_bulk_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_bulk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_bulk_data = type { i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to get supply '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_bulk_get(%struct.device* %0, i32 %1, %struct.regulator_bulk_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_bulk_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regulator_bulk_data* %2, %struct.regulator_bulk_data** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %15, i64 %17
  %19 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %10

23:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %72, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %30, i64 %32
  %34 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @regulator_get(%struct.device* %29, i32 %35)
  %37 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %37, i64 %39
  %41 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %40, i32 0, i32 0
  store i32* %36, i32** %41, align 8
  %42 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %42, i64 %44
  %46 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %28
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %52, i64 %54
  %56 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %59, i64 %61
  %63 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %66, i64 %68
  %70 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %76

71:                                               ; preds = %28
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %24

75:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %104

76:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %82, i64 %84
  %86 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br label %89

89:                                               ; preds = %81, %77
  %90 = phi i1 [ false, %77 ], [ %88, %81 ]
  br i1 %90, label %91, label %102

91:                                               ; preds = %89
  %92 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %92, i64 %94
  %96 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @regulator_put(i32* %97)
  br label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %77

102:                                              ; preds = %89
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %75
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32* @regulator_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @regulator_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
