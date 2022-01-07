; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64, %struct.wimax_dev }
%struct.wimax_dev = type { i32 }
%struct.device = type { i32 }
%struct.i2400m_l3l4_hdr = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"HW BUG? device sent a bad trace message: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Trace %s 0x%04x: %zu bytes\0A\00", align 1
@I2400M_MT_REPORT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CMD/SET/GET\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"error sending trace to userspace: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, i8*, i64)* @i2400m_rx_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_rx_trace(%struct.i2400m* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.wimax_dev*, align 8
  %10 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %13 = call %struct.device* @i2400m_dev(%struct.i2400m* %12)
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %15 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %14, i32 0, i32 1
  store %struct.wimax_dev* %15, %struct.wimax_dev** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.i2400m_l3l4_hdr*
  store %struct.i2400m_l3l4_hdr* %17, %struct.i2400m_l3l4_hdr** %10, align 8
  %18 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %19 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @i2400m_msg_size_check(%struct.i2400m* %18, %struct.i2400m_l3l4_hdr* %19, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %68

28:                                               ; preds = %3
  %29 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %10, align 8
  %30 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @I2400M_MT_REPORT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @d_printf(i32 1, %struct.device* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %40, i64 %41)
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %10, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @d_dump(i32 2, %struct.device* %43, %struct.i2400m_l3l4_hdr* %44, i64 %45)
  %47 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %48 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  br label %69

55:                                               ; preds = %28
  %56 = load %struct.wimax_dev*, %struct.wimax_dev** %9, align 8
  %57 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %10, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @wimax_msg(%struct.wimax_dev* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.i2400m_l3l4_hdr* %57, i64 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %55
  br label %68

68:                                               ; preds = %67, %24
  br label %69

69:                                               ; preds = %68, %54
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @i2400m_msg_size_check(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i8*, i32, i64) #1

declare dso_local i32 @d_dump(i32, %struct.device*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wimax_msg(%struct.wimax_dev*, i8*, %struct.i2400m_l3l4_hdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
