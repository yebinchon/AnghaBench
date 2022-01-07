; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32*, i32 }

@W83627EHF_REG_FANDIV1 = common dso_local global i32 0, align 4
@W83627EHF_REG_FANDIV2 = common dso_local global i32 0, align 4
@W83627EHF_REG_VBAT = common dso_local global i32 0, align 4
@W83627EHF_REG_DIODE = common dso_local global i32 0, align 4
@W83627EHF_REG_SMI_OVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_data*)* @w83627ehf_update_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_update_fan_div(%struct.w83627ehf_data* %0) #0 {
  %2 = alloca %struct.w83627ehf_data*, align 8
  %3 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %2, align 8
  %4 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %5 = load i32, i32* @W83627EHF_REG_FANDIV1, align 4
  %6 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 4
  %9 = and i32 %8, 3
  %10 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %11 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 6
  %16 = and i32 %15, 3
  %17 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %18 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %22 = load i32, i32* @W83627EHF_REG_FANDIV2, align 4
  %23 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 3
  %27 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %28 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %26, i32* %30, align 4
  %31 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %32 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %33 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 3
  %36 = and i32 %35, 4
  %37 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %38 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 4
  %46 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %47 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %3, align 4
  %53 = ashr i32 %52, 5
  %54 = and i32 %53, 4
  %55 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %56 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %62 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 24
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %1
  %67 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %68 = load i32, i32* @W83627EHF_REG_DIODE, align 4
  %69 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 3
  %72 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %73 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %3, align 4
  %77 = ashr i32 %76, 2
  %78 = and i32 %77, 3
  %79 = load i32, i32* %3, align 4
  %80 = ashr i32 %79, 5
  %81 = and i32 %80, 4
  %82 = or i32 %78, %81
  %83 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %84 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %66, %1
  %88 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %89 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %95 = load i32, i32* @W83627EHF_REG_SMI_OVT, align 4
  %96 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = ashr i32 %97, 5
  %99 = and i32 %98, 4
  %100 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %101 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %93, %87
  ret void
}

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
