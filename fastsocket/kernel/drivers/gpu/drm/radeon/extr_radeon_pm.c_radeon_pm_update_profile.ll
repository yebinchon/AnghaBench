; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_update_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_update_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PM_PROFILE_DEFAULT_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_MH_IDX = common dso_local global i8* null, align 8
@PM_PROFILE_HIGH_SH_IDX = common dso_local global i8* null, align 8
@PM_PROFILE_MID_MH_IDX = common dso_local global i8* null, align 8
@PM_PROFILE_MID_SH_IDX = common dso_local global i8* null, align 8
@PM_PROFILE_LOW_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_SH_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_pm_update_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_pm_update_profile(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %109 [
    i32 131, label %7
    i32 132, label %12
    i32 129, label %54
    i32 128, label %71
    i32 130, label %90
  ]

7:                                                ; preds = %1
  %8 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 %8, i64* %11, align 8
  br label %109

12:                                               ; preds = %1
  %13 = call i32 (...) @power_supply_is_system_supplied()
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i8*, i8** @PM_PROFILE_HIGH_MH_IDX, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  br label %33

27:                                               ; preds = %15
  %28 = load i8*, i8** @PM_PROFILE_HIGH_SH_IDX, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %21
  br label %53

34:                                               ; preds = %12
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i8*, i8** @PM_PROFILE_MID_MH_IDX, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  br label %52

46:                                               ; preds = %34
  %47 = load i8*, i8** @PM_PROFILE_MID_SH_IDX, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %33
  br label %109

54:                                               ; preds = %1
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  br label %70

65:                                               ; preds = %54
  %66 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %109

71:                                               ; preds = %1
  %72 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i8*, i8** @PM_PROFILE_MID_MH_IDX, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  br label %89

83:                                               ; preds = %71
  %84 = load i8*, i8** @PM_PROFILE_MID_SH_IDX, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %77
  br label %109

90:                                               ; preds = %1
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i8*, i8** @PM_PROFILE_HIGH_MH_IDX, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 %98, i64* %101, align 8
  br label %108

102:                                              ; preds = %90
  %103 = load i8*, i8** @PM_PROFILE_HIGH_SH_IDX, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i64 %104, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %96
  br label %109

109:                                              ; preds = %1, %108, %89, %70, %53, %7
  %110 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %109
  %116 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  store i32 %126, i32* %129, align 4
  %130 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  br label %173

144:                                              ; preds = %109
  %145 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 5
  store i32 %155, i32* %158, align 4
  %159 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  store i32 %169, i32* %172, align 8
  br label %173

173:                                              ; preds = %144, %115
  ret void
}

declare dso_local i32 @power_supply_is_system_supplied(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
