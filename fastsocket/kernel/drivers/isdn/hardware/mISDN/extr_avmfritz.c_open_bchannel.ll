; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_open_bchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_open_bchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { %struct.bchannel* }
%struct.bchannel = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.channel_req = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISDN_P_NONE = common dso_local global i64 0, align 8
@FLG_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fritzcard*, %struct.channel_req*)* @open_bchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_bchannel(%struct.fritzcard* %0, %struct.channel_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fritzcard*, align 8
  %5 = alloca %struct.channel_req*, align 8
  %6 = alloca %struct.bchannel*, align 8
  store %struct.fritzcard* %0, %struct.fritzcard** %4, align 8
  store %struct.channel_req* %1, %struct.channel_req** %5, align 8
  %7 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %8 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %58

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
  br label %58

24:                                               ; preds = %15
  %25 = load %struct.fritzcard*, %struct.fritzcard** %4, align 8
  %26 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %25, i32 0, i32 0
  %27 = load %struct.bchannel*, %struct.bchannel** %26, align 8
  %28 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %29 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %27, i64 %33
  store %struct.bchannel* %34, %struct.bchannel** %6, align 8
  %35 = load i32, i32* @FLG_OPEN, align 4
  %36 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %37 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %36, i32 0, i32 1
  %38 = call i64 @test_and_set_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %24
  %44 = load i32, i32* @FLG_FILLEMPTY, align 4
  %45 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %46 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %45, i32 0, i32 1
  %47 = call i32 @test_and_clear_bit(i32 %44, i32* %46)
  %48 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %49 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %52 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %55 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %54, i32 0, i32 0
  %56 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %57 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %56, i32 0, i32 1
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %43, %40, %21, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
