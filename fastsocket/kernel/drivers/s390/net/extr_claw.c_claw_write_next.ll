; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_write_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_write_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chbk = type { i64, i32, i64 }
%struct.net_device = type { i64 }
%struct.claw_privbk = type { i64, i32* }
%struct.sk_buff = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"claw_wrt\00", align 1
@CLAW_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chbk*)* @claw_write_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_write_next(%struct.chbk* %0) #0 {
  %2 = alloca %struct.chbk*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.claw_privbk*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.chbk* %0, %struct.chbk** %2, align 8
  store %struct.claw_privbk* null, %struct.claw_privbk** %4, align 8
  %7 = load i32, i32* @trace, align 4
  %8 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.chbk*, %struct.chbk** %2, align 8
  %10 = getelementptr inbounds %struct.chbk, %struct.chbk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CLAW_STOP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.chbk*, %struct.chbk** %2, align 8
  %17 = getelementptr inbounds %struct.chbk, %struct.chbk* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.net_device*
  store %struct.net_device* %19, %struct.net_device** %3, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.claw_privbk*
  store %struct.claw_privbk* %23, %struct.claw_privbk** %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @claw_free_wrt_buf(%struct.net_device* %24)
  %26 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %27 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %15
  %31 = load %struct.chbk*, %struct.chbk** %2, align 8
  %32 = getelementptr inbounds %struct.chbk, %struct.chbk* %31, i32 0, i32 1
  %33 = call i32 @skb_queue_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %37 = call %struct.sk_buff* @claw_pack_skb(%struct.claw_privbk* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  br label %38

38:                                               ; preds = %53, %35
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @claw_hw_tx(%struct.sk_buff* %42, %struct.net_device* %43, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %46 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %51 = call %struct.sk_buff* @claw_pack_skb(%struct.claw_privbk* %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %5, align 8
  br label %53

52:                                               ; preds = %41
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %53

53:                                               ; preds = %52, %49
  br label %38

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %30, %15
  %56 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %57 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @claw_strt_out_IO(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %14
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @claw_free_wrt_buf(%struct.net_device*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @claw_pack_skb(%struct.claw_privbk*) #1

declare dso_local i32 @claw_hw_tx(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @claw_strt_out_IO(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
