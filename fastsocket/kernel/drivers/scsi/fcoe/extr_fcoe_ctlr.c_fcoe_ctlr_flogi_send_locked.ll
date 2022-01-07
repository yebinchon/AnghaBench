; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_flogi_send_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_flogi_send_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { %struct.TYPE_2__*, i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)*, i32, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fc_frame_header = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@FIP_DT_FLOGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr*)* @fcoe_ctlr_flogi_send_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_ctlr_flogi_send_locked(%struct.fcoe_ctlr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fc_frame_header*, align 8
  %7 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  %8 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %9 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %8, i32 0, i32 3
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %25 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %24, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %25, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.fc_frame_header*
  store %struct.fc_frame_header* %30, %struct.fc_frame_header** %6, align 8
  %31 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %32 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %33 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FIP_DT_FLOGI, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %38 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntoh24(i32 %39)
  %41 = call i32 @fcoe_ctlr_encaps(%struct.fcoe_ctlr* %31, i32 %34, i32 %35, %struct.sk_buff* %36, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %59

48:                                               ; preds = %26
  %49 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %50 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %49, i32 0, i32 1
  %51 = load i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)*, i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)** %50, align 8
  %52 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 %51(%struct.fcoe_ctlr* %52, %struct.sk_buff* %53)
  %55 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %56 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %48, %44, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @fcoe_ctlr_encaps(%struct.fcoe_ctlr*, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
