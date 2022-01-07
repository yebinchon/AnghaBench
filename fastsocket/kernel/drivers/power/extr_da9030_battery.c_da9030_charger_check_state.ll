; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_charger_check_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_charger_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@DA9030_VBATMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9030_charger*)* @da9030_charger_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9030_charger_check_state(%struct.da9030_charger* %0) #0 {
  %2 = alloca %struct.da9030_charger*, align 8
  store %struct.da9030_charger* %0, %struct.da9030_charger** %2, align 8
  %3 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %4 = call i32 @da9030_charger_update_state(%struct.da9030_charger* %3)
  %5 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %6 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %11 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %16 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %20 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %26 = call i32 @da9030_set_charge(%struct.da9030_charger* %25, i32 1)
  br label %27

27:                                               ; preds = %24, %14, %9
  br label %123

28:                                               ; preds = %1
  %29 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %30 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %35 = call i32 @da9030_set_charge(%struct.da9030_charger* %34, i32 0)
  br label %123

36:                                               ; preds = %28
  %37 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %38 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %42 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %40, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %36
  %47 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %48 = call i32 @da9030_set_charge(%struct.da9030_charger* %47, i32 0)
  %49 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %50 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DA9030_VBATMON, align 4
  %53 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %54 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @da903x_write(i32 %51, i32 %52, i64 %56)
  br label %79

58:                                               ; preds = %36
  %59 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %60 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %64 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %62, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %70 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DA9030_VBATMON, align 4
  %73 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %74 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @da903x_write(i32 %71, i32 %72, i64 %76)
  br label %78

78:                                               ; preds = %68, %58
  br label %79

79:                                               ; preds = %78, %46
  %80 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %81 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %85 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %83, %87
  br i1 %88, label %119, label %89

89:                                               ; preds = %79
  %90 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %91 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %95 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %119, label %99

99:                                               ; preds = %89
  %100 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %101 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %105 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %103, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %99
  %110 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %111 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %115 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %113, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %109, %99, %89, %79
  %120 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %121 = call i32 @da9030_set_charge(%struct.da9030_charger* %120, i32 0)
  br label %122

122:                                              ; preds = %119, %109
  br label %123

123:                                              ; preds = %33, %122, %27
  ret void
}

declare dso_local i32 @da9030_charger_update_state(%struct.da9030_charger*) #1

declare dso_local i32 @da9030_set_charge(%struct.da9030_charger*, i32) #1

declare dso_local i32 @da903x_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
