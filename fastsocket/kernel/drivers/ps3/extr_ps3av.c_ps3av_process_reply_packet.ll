; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av.c_ps3av_process_reply_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av.c_ps3av_process_reply_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ps3av_send_hdr = type { i32 }
%struct.ps3av_reply_hdr = type { i64, i32 }

@PS3AV_VERSION = common dso_local global i64 0, align 8
@ps3av = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"reply_packet invalid version:%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PS3AV_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3av_send_hdr*, %struct.ps3av_reply_hdr*, i32)* @ps3av_process_reply_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3av_process_reply_packet(%struct.ps3av_send_hdr* %0, %struct.ps3av_reply_hdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps3av_send_hdr*, align 8
  %6 = alloca %struct.ps3av_reply_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ps3av_send_hdr* %0, %struct.ps3av_send_hdr** %5, align 8
  store %struct.ps3av_reply_hdr* %1, %struct.ps3av_reply_hdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ps3av_reply_hdr*, %struct.ps3av_reply_hdr** %6, align 8
  %10 = getelementptr inbounds %struct.ps3av_reply_hdr, %struct.ps3av_reply_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PS3AV_VERSION, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ps3av, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ps3av_reply_hdr*, %struct.ps3av_reply_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ps3av_reply_hdr, %struct.ps3av_reply_hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.ps3av_reply_hdr*, %struct.ps3av_reply_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.ps3av_reply_hdr, %struct.ps3av_reply_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PS3AV_HDR_SIZE, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = load %struct.ps3av_send_hdr*, %struct.ps3av_send_hdr** %5, align 8
  %38 = load %struct.ps3av_reply_hdr*, %struct.ps3av_reply_hdr** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memcpy(%struct.ps3av_send_hdr* %37, %struct.ps3av_reply_hdr* %38, i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(%struct.ps3av_send_hdr*, %struct.ps3av_reply_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
