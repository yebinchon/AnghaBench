; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_dev_bootstrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_dev_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i8**, i8* }
%struct.device = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.i2400m_bcf_hdr = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not find a usable firmware image\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"fw %s: cannot load file: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_dev_bootstrap(%struct.i2400m* %0, i32 %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.i2400m_bcf_hdr*, align 8
  %10 = alloca i8*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %12 = call %struct.device* @i2400m_dev(%struct.i2400m* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %15 = call i32 @d_fnstart(i32 5, %struct.device* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %2, %46
  %17 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %78

31:                                               ; preds = %16
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 @request_firmware(%struct.firmware** %8, i8* %32, %struct.device* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %16

49:                                               ; preds = %37
  %50 = load %struct.firmware*, %struct.firmware** %8, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = bitcast i8* %53 to %struct.i2400m_bcf_hdr*
  store %struct.i2400m_bcf_hdr* %54, %struct.i2400m_bcf_hdr** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %57 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %59 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %9, align 8
  %60 = load %struct.firmware*, %struct.firmware** %8, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @i2400m_fw_check(%struct.i2400m* %58, %struct.i2400m_bcf_hdr* %59, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %75

67:                                               ; preds = %49
  %68 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %69 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %9, align 8
  %70 = load %struct.firmware*, %struct.firmware** %8, align 8
  %71 = getelementptr inbounds %struct.firmware, %struct.firmware* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @i2400m_fw_dnload(%struct.i2400m* %68, %struct.i2400m_bcf_hdr* %69, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %66
  %76 = load %struct.firmware*, %struct.firmware** %8, align 8
  %77 = call i32 @release_firmware(%struct.firmware* %76)
  br label %78

78:                                               ; preds = %75, %26
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @d_fnend(i32 5, %struct.device* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.i2400m* %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @i2400m_fw_check(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i32) #1

declare dso_local i32 @i2400m_fw_dnload(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
