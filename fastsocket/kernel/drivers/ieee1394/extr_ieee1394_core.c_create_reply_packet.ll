; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_create_reply_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_create_reply_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i32, i32, i64*, i32, %struct.hpsb_host*, i32, i32 }
%struct.hpsb_host = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"out of memory, cannot send response packet\00", align 1
@hpsb_async = common dso_local global i32 0, align 4
@hpsb_unused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpsb_packet* (%struct.hpsb_host*, i32*, i64)* @create_reply_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpsb_packet* @create_reply_packet(%struct.hpsb_host* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.hpsb_packet*, align 8
  %5 = alloca %struct.hpsb_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hpsb_packet*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call %struct.hpsb_packet* @hpsb_alloc_packet(i64 %9)
  store %struct.hpsb_packet* %10, %struct.hpsb_packet** %8, align 8
  %11 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %12 = icmp eq %struct.hpsb_packet* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %4, align 8
  br label %59

18:                                               ; preds = %3
  %19 = load i32, i32* @hpsb_async, align 4
  %20 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %21 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @hpsb_unused, align 4
  %23 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %24 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %26 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %27 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %26, i32 0, i32 5
  store %struct.hpsb_host* %25, %struct.hpsb_host** %27, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %33 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 10
  %38 = and i32 %37, 63
  %39 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %40 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %42 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %44 = call i32 @get_hpsb_generation(%struct.hpsb_host* %43)
  %45 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %46 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = urem i64 %47, 4
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %18
  %51 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %52 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = udiv i64 %54, 4
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %18
  %58 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  store %struct.hpsb_packet* %58, %struct.hpsb_packet** %4, align 8
  br label %59

59:                                               ; preds = %57, %16
  %60 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  ret %struct.hpsb_packet* %60
}

declare dso_local %struct.hpsb_packet* @hpsb_alloc_packet(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HPSB_ERR(i8*) #1

declare dso_local i32 @get_hpsb_generation(%struct.hpsb_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
