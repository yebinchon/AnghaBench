; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_open_bchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_open_bchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bchannel }
%struct.bchannel = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.channel_req = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISDN_P_NONE = common dso_local global i64 0, align 8
@FLG_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w6692_hw*, %struct.channel_req*)* @open_bchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_bchannel(%struct.w6692_hw* %0, %struct.channel_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w6692_hw*, align 8
  %5 = alloca %struct.channel_req*, align 8
  %6 = alloca %struct.bchannel*, align 8
  store %struct.w6692_hw* %0, %struct.w6692_hw** %4, align 8
  store %struct.channel_req* %1, %struct.channel_req** %5, align 8
  %7 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %8 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %17 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISDN_P_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %15
  %25 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %26 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %29 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.bchannel* %35, %struct.bchannel** %6, align 8
  %36 = load i32, i32* @FLG_OPEN, align 4
  %37 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %38 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %37, i32 0, i32 1
  %39 = call i64 @test_and_set_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %59

44:                                               ; preds = %24
  %45 = load i32, i32* @FLG_FILLEMPTY, align 4
  %46 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %47 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %46, i32 0, i32 1
  %48 = call i32 @test_and_clear_bit(i32 %45, i32* %47)
  %49 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %50 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %53 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %56 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %55, i32 0, i32 0
  %57 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %58 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %57, i32 0, i32 1
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %44, %41, %21, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
