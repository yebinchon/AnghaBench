; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_bcf_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"firmware %s too short: %zu B vs %zu (at least) expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"firmware %s: bad size, got %zu B vs %u expected\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"type 0x%x id 0x%x vendor 0x%x; header v%u.%u (%zu B) date %08x (%zu B)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"bad fw %s: unexpected module type 0x%x; aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"bad fw %s? unexpected vendor 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"bad fw %s? build date too old %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64)* @i2400m_fw_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_fw_check(%struct.i2400m* %0, %struct.i2400m_bcf_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_bcf_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_bcf_hdr* %1, %struct.i2400m_bcf_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %18 = call %struct.device* @i2400m_dev(%struct.i2400m* %17)
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 28
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %26 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i64 28)
  br label %127

31:                                               ; preds = %3
  %32 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = and i32 %45, 65535
  store i32 %46, i32* %11, align 4
  %47 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = and i32 %50, 65535
  store i32 %51, i32* %12, align 4
  %52 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %65 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %16, align 4
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* %16, align 4
  %73 = zext i32 %72 to i64
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %31
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %78 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %6, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %16, align 4
  %83 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %81, i32 %82)
  br label %127

84:                                               ; preds = %31
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = zext i32 %94 to i64
  %96 = call i32 @d_printf(i32 2, %struct.device* %85, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i64 %92, i32 %93, i64 %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 6
  br i1 %98, label %99, label %106

99:                                               ; preds = %84
  %100 = load %struct.device*, %struct.device** %8, align 8
  %101 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %102 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  br label %127

106:                                              ; preds = %84
  store i32 0, i32* %7, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 32902
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.device*, %struct.device** %8, align 8
  %111 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %112 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %15, align 4
  %118 = icmp ult i32 %117, 537395968
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.device*, %struct.device** %8, align 8
  %121 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %122 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %119, %116
  br label %127

127:                                              ; preds = %126, %99, %75, %23
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32, i32, i32, i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
