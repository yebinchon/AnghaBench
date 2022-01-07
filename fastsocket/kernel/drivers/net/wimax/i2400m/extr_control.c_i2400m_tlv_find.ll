; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_tlv_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_tlv_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_tlv_hdr = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"TLV type 0x%04x found with size mismatch (%zu vs %zu needed)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2400m_tlv_hdr* (%struct.i2400m*, %struct.i2400m_tlv_hdr*, i64, i32, i64)* @i2400m_tlv_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2400m_tlv_hdr* @i2400m_tlv_find(%struct.i2400m* %0, %struct.i2400m_tlv_hdr* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca %struct.i2400m_tlv_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.i2400m_tlv_hdr*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store %struct.i2400m_tlv_hdr* %1, %struct.i2400m_tlv_hdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %15 = call %struct.device* @i2400m_dev(%struct.i2400m* %14)
  store %struct.device* %15, %struct.device** %12, align 8
  store %struct.i2400m_tlv_hdr* null, %struct.i2400m_tlv_hdr** %13, align 8
  br label %16

16:                                               ; preds = %40, %5
  %17 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %18 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %13, align 8
  %21 = call %struct.i2400m_tlv_hdr* @i2400m_tlv_buffer_walk(%struct.i2400m* %17, %struct.i2400m_tlv_hdr* %18, i64 %19, %struct.i2400m_tlv_hdr* %20)
  store %struct.i2400m_tlv_hdr* %21, %struct.i2400m_tlv_hdr** %13, align 8
  %22 = icmp ne %struct.i2400m_tlv_hdr* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %13, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @i2400m_tlv_match(%struct.i2400m_tlv_hdr* %24, i32 %25, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %23
  %32 = load i64, i64* %11, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %34, %31
  br label %16

41:                                               ; preds = %30, %16
  %42 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %13, align 8
  ret %struct.i2400m_tlv_hdr* %42
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local %struct.i2400m_tlv_hdr* @i2400m_tlv_buffer_walk(%struct.i2400m*, %struct.i2400m_tlv_hdr*, i64, %struct.i2400m_tlv_hdr*) #1

declare dso_local i64 @i2400m_tlv_match(%struct.i2400m_tlv_hdr*, i32, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
