; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_tlv_buffer_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_tlv_buffer_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_tlv_hdr = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"HW BUG? tlv_buf %p [%zu bytes], tlv @%zu: short header\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"HW BUG? tlv_buf %p [%zu bytes], tlv type 0x%04x @%zu: short data (%zu bytes vs %zu needed)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2400m_tlv_hdr* (%struct.i2400m*, i8*, i64, %struct.i2400m_tlv_hdr*)* @i2400m_tlv_buffer_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2400m_tlv_hdr* @i2400m_tlv_buffer_walk(%struct.i2400m* %0, i8* %1, i64 %2, %struct.i2400m_tlv_hdr* %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2400m_tlv_hdr*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.i2400m_tlv_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.i2400m_tlv_hdr* %3, %struct.i2400m_tlv_hdr** %8, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %16 = call %struct.device* @i2400m_dev(%struct.i2400m* %15)
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr i8, i8* %17, i64 %18
  %20 = bitcast i8* %19 to %struct.i2400m_tlv_hdr*
  store %struct.i2400m_tlv_hdr* %20, %struct.i2400m_tlv_hdr** %10, align 8
  %21 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %22 = icmp eq %struct.i2400m_tlv_hdr* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.i2400m_tlv_hdr*
  store %struct.i2400m_tlv_hdr* %25, %struct.i2400m_tlv_hdr** %8, align 8
  br label %37

26:                                               ; preds = %4
  %27 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %28 = bitcast %struct.i2400m_tlv_hdr* %27 to i8*
  %29 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %28, i64 %33
  %35 = getelementptr i8, i8* %34, i64 8
  %36 = bitcast i8* %35 to %struct.i2400m_tlv_hdr*
  store %struct.i2400m_tlv_hdr* %36, %struct.i2400m_tlv_hdr** %8, align 8
  br label %37

37:                                               ; preds = %26, %23
  %38 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %39 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %10, align 8
  %40 = icmp eq %struct.i2400m_tlv_hdr* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.i2400m_tlv_hdr* null, %struct.i2400m_tlv_hdr** %8, align 8
  br label %93

42:                                               ; preds = %37
  %43 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %44 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %10, align 8
  %45 = icmp ugt %struct.i2400m_tlv_hdr* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  store %struct.i2400m_tlv_hdr* null, %struct.i2400m_tlv_hdr** %8, align 8
  %47 = call i32 @WARN_ON(i32 1)
  br label %93

48:                                               ; preds = %42
  %49 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %50 = bitcast %struct.i2400m_tlv_hdr* %49 to i8*
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load %struct.device*, %struct.device** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %11, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (%struct.device*, i8*, i8*, i64, i32, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %62, i64 %63, i32 %65)
  br label %92

67:                                               ; preds = %48
  %68 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  %73 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %12, align 8
  %79 = add i64 8, %78
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %67
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = add i64 8, %88
  %90 = call i32 (%struct.device*, i8*, i8*, i64, i32, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i8* %83, i64 %84, i32 %85, i64 %86, i64 %87, i64 %89)
  br label %92

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91, %81, %60
  br label %93

93:                                               ; preds = %92, %46, %41
  %94 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %8, align 8
  ret %struct.i2400m_tlv_hdr* %94
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
