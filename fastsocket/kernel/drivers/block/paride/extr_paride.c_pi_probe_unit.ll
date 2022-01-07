; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_paride.c_pi_probe_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_paride.c_pi_probe_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_12__*)*, i32, i64 (%struct.TYPE_12__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i8*, i32)* @pi_probe_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi_probe_unit(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %18, %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @pi_register_parport(%struct.TYPE_12__* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %118

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_12__*)* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = call i32 @pi_claim(%struct.TYPE_12__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = call i32 %44(%struct.TYPE_12__* %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = call i32 @pi_unclaim(%struct.TYPE_12__* %47)
  br label %55

49:                                               ; preds = %30
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %37
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %59, align 8
  %61 = icmp ne i64 (%struct.TYPE_12__*)* %60, null
  br i1 %61, label %62, label %107

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = call i32 @pi_claim(%struct.TYPE_12__* %63)
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %97, %62
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = call i64 %79(%struct.TYPE_12__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %74
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = call i32 @pi_unclaim(%struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @pi_probe_mode(%struct.TYPE_12__* %86, i32 %87, i8* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %118

93:                                               ; preds = %83
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = call i32 @pi_unregister_parport(%struct.TYPE_12__* %94)
  store i32 0, i32* %5, align 4
  br label %118

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %68

102:                                              ; preds = %68
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = call i32 @pi_unclaim(%struct.TYPE_12__* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = call i32 @pi_unregister_parport(%struct.TYPE_12__* %105)
  store i32 0, i32* %5, align 4
  br label %118

107:                                              ; preds = %55
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @pi_probe_mode(%struct.TYPE_12__* %108, i32 %109, i8* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = call i32 @pi_unregister_parport(%struct.TYPE_12__* %115)
  store i32 0, i32* %5, align 4
  br label %118

117:                                              ; preds = %107
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %114, %102, %93, %92, %29
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @pi_register_parport(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pi_claim(%struct.TYPE_12__*) #1

declare dso_local i32 @pi_unclaim(%struct.TYPE_12__*) #1

declare dso_local i64 @pi_probe_mode(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @pi_unregister_parport(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
