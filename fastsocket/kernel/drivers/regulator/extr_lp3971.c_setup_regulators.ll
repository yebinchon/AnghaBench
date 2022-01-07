; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_setup_regulators.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_setup_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3971 = type { i32, i64*, i32 }
%struct.lp3971_platform_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@regulators = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"regulator init failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp3971*, %struct.lp3971_platform_data*)* @setup_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_regulators(%struct.lp3971* %0, %struct.lp3971_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp3971*, align 8
  %5 = alloca %struct.lp3971_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lp3971* %0, %struct.lp3971** %4, align 8
  store %struct.lp3971_platform_data* %1, %struct.lp3971_platform_data** %5, align 8
  %10 = load %struct.lp3971_platform_data*, %struct.lp3971_platform_data** %5, align 8
  %11 = getelementptr inbounds %struct.lp3971_platform_data, %struct.lp3971_platform_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %15 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @kzalloc(i32 %19, i32 %20)
  %22 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %23 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %22, i32 0, i32 1
  store i64* %21, i64** %23, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %77, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  %29 = load %struct.lp3971_platform_data*, %struct.lp3971_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.lp3971_platform_data, %struct.lp3971_platform_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** @regulators, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %42 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lp3971_platform_data*, %struct.lp3971_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.lp3971_platform_data, %struct.lp3971_platform_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %53 = call i64 @regulator_register(i32* %40, i32 %43, i32 %51, %struct.lp3971* %52)
  %54 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %55 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %53, i64* %59, align 8
  %60 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %61 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @IS_ERR(i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %28
  %71 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %72 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %81

76:                                               ; preds = %28
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %24

80:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %116

81:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %105, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %88 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %97 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @regulator_unregister(i64 %102)
  br label %104

104:                                              ; preds = %95, %86
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %82

108:                                              ; preds = %82
  %109 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %110 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @kfree(i64* %111)
  %113 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %114 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %113, i32 0, i32 1
  store i64* null, i64** %114, align 8
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %108, %80
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i64 @regulator_register(i32*, i32, i32, %struct.lp3971*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_unregister(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
