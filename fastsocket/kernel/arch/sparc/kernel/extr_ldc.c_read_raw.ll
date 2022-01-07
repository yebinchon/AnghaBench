; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_read_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i32, i64, %struct.ldc_packet*, i32 }
%struct.ldc_packet = type { i32 }

@LDC_PACKET_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LDC_CHANNEL_DOWN = common dso_local global i64 0, align 8
@LDC_CHANNEL_RESETTING = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i8*, i32)* @read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_raw(%struct.ldc_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ldc_packet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %20 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %22, i32 0, i32 0
  %24 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %25 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %24, i32 0, i32 1
  %26 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %26, i32 0, i32 2
  %28 = call i64 @sun4v_ldc_rx_get_state(i32 %21, i32* %23, i32* %25, i64* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %33 = call i32 @ldc_abort(%struct.ldc_channel* %32)
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %18
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LDC_CHANNEL_DOWN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LDC_CHANNEL_RESETTING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @ECONNRESET, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %94

49:                                               ; preds = %40
  %50 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %51 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %54 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %94

58:                                               ; preds = %49
  %59 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %60 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %59, i32 0, i32 3
  %61 = load %struct.ldc_packet*, %struct.ldc_packet** %60, align 8
  %62 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %63 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %66 = udiv i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %61, i64 %67
  store %struct.ldc_packet* %68, %struct.ldc_packet** %8, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %71 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %72 = call i32 @memcpy(i8* %69, %struct.ldc_packet* %70, i32 %71)
  %73 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %74 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %75 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @rx_advance(%struct.ldc_channel* %73, i32 %76)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %81 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @__set_rx_head(%struct.ldc_channel* %82, i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %58
  %88 = load i32, i32* @ECONNRESET, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %92

90:                                               ; preds = %58
  %91 = load i32, i32* @LDC_PACKET_SIZE, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %57, %46, %31, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @sun4v_ldc_rx_get_state(i32, i32*, i32*, i64*) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

declare dso_local i32 @memcpy(i8*, %struct.ldc_packet*, i32) #1

declare dso_local i64 @rx_advance(%struct.ldc_channel*, i32) #1

declare dso_local i32 @__set_rx_head(%struct.ldc_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
