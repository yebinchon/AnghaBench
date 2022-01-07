; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_dnload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_dnload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32 }
%struct.i2400m_bcf_hdr = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"(i2400m %p bcf %p size %zu)\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"device rebooted too many times, aborting\0A\00", align 1
@I2400M_BRI_MAC_REINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bootrom init failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"fw %s: download failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"fw %s: download finalization failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"fw %s successfully uploaded\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"(i2400m %p bcf %p size %zu) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"device rebooted, %d tries left\0A\00", align 1
@I2400M_BRI_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64, i32)* @i2400m_fw_dnload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_fw_dnload(%struct.i2400m* %0, %struct.i2400m_bcf_hdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.i2400m_bcf_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.i2400m_bcf_hdr* %1, %struct.i2400m_bcf_hdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %13 = call %struct.device* @i2400m_dev(%struct.i2400m* %12)
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %15 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.device*, %struct.device** %10, align 8
  %18 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %19 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @d_fnstart(i32 5, %struct.device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %18, %struct.i2400m_bcf_hdr* %19, i64 %20)
  %22 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = call i32 (...) @wmb()
  br label %25

25:                                               ; preds = %127, %4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %11, align 4
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %119

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @I2400M_BRI_MAC_REINIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @i2400m_bootrom_init(%struct.i2400m* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.device*, %struct.device** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %118

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, i32* @I2400M_BRI_MAC_REINIT, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %55 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %56 = call i32 @i2400m_dnload_init(%struct.i2400m* %54, %struct.i2400m_bcf_hdr* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ERESTARTSYS, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %127

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %117

66:                                               ; preds = %62
  %67 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %68 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @i2400m_dnload_bcf(%struct.i2400m* %67, %struct.i2400m_bcf_hdr* %68, i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @ERESTARTSYS, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %127

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.device*, %struct.device** %10, align 8
  %81 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %82 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  br label %116

86:                                               ; preds = %76
  %87 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %88 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @i2400m_dnload_finalize(%struct.i2400m* %87, %struct.i2400m_bcf_hdr* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ERESTARTSYS, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %127

96:                                               ; preds = %86
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.device*, %struct.device** %10, align 8
  %101 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %102 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104)
  br label %115

106:                                              ; preds = %96
  %107 = load %struct.device*, %struct.device** %10, align 8
  %108 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %109 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @d_printf(i32 2, %struct.device* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %113 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = call i32 (...) @wmb()
  br label %115

115:                                              ; preds = %106, %99
  br label %116

116:                                              ; preds = %115, %79
  br label %117

117:                                              ; preds = %116, %65
  br label %118

118:                                              ; preds = %117, %45
  br label %119

119:                                              ; preds = %118, %29
  %120 = load %struct.device*, %struct.device** %10, align 8
  %121 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %122 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @d_fnend(i32 5, %struct.device* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), %struct.i2400m* %121, %struct.i2400m_bcf_hdr* %122, i64 %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  ret i32 %126

127:                                              ; preds = %95, %75, %61
  %128 = load %struct.device*, %struct.device** %10, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @I2400M_BRI_SOFT, align 4
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %25
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bcf_hdr*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2400m_bootrom_init(%struct.i2400m*, i32) #1

declare dso_local i32 @i2400m_dnload_init(%struct.i2400m*, %struct.i2400m_bcf_hdr*) #1

declare dso_local i32 @i2400m_dnload_bcf(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64) #1

declare dso_local i32 @i2400m_dnload_finalize(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bcf_hdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
