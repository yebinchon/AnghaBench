; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_compute_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_compute_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_packet = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid Compute packet3: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64*, %struct.radeon_cs_packet*)* @si_vm_packet3_compute_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_vm_packet3_compute_check(%struct.radeon_device* %0, i64* %1, %struct.radeon_cs_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.radeon_cs_packet* %2, %struct.radeon_cs_packet** %7, align 8
  %13 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %14 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %8, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %131 [
    i32 144, label %24
    i32 140, label %24
    i32 158, label %24
    i32 152, label %24
    i32 151, label %24
    i32 161, label %24
    i32 128, label %24
    i32 159, label %24
    i32 160, label %24
    i32 143, label %24
    i32 137, label %24
    i32 157, label %24
    i32 141, label %24
    i32 155, label %24
    i32 134, label %24
    i32 130, label %24
    i32 146, label %24
    i32 142, label %24
    i32 133, label %24
    i32 150, label %24
    i32 149, label %24
    i32 148, label %24
    i32 139, label %24
    i32 138, label %24
    i32 136, label %24
    i32 135, label %24
    i32 147, label %24
    i32 131, label %24
    i32 132, label %24
    i32 145, label %24
    i32 154, label %25
    i32 129, label %44
    i32 156, label %93
    i32 153, label %112
  ]

24:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %138

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = and i64 %26, 3840
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 3
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %34, 4
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @si_vm_reg_valid(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %139

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %25
  br label %138

44:                                               ; preds = %3
  %45 = load i64, i64* %9, align 8
  %46 = and i64 %45, 3840
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %53, 4
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = and i64 %55, 65536
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @si_vm_reg_valid(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %139

65:                                               ; preds = %58
  br label %91

66:                                               ; preds = %48
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %70 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %68, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %67
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = mul i64 4, %77
  %79 = add i64 %76, %78
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @si_vm_reg_valid(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %139

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %67

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %44
  br label %138

93:                                               ; preds = %3
  %94 = load i64, i64* %9, align 8
  %95 = and i64 %94, 256
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 5
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = mul i64 %102, 4
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @si_vm_reg_valid(i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %139

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %93
  br label %138

112:                                              ; preds = %3
  %113 = load i64, i64* %9, align 8
  %114 = and i64 %113, 2
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load i64*, i64** %6, align 8
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 3
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = mul i64 %121, 4
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @si_vm_reg_valid(i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %116
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %139

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %112
  br label %138

131:                                              ; preds = %3
  %132 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %133 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %139

138:                                              ; preds = %130, %111, %92, %43, %24
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %131, %126, %107, %83, %62, %39
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @si_vm_reg_valid(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
