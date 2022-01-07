; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_status_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_status_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@MT_STATUS = common dso_local global i32 0, align 4
@IE_CAUSE = common dso_local global i32 0, align 4
@IE_CALL_STATE = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_status_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_status_send(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MT_STATUS, align 4
  %17 = call i32 @MsgHead(i32* %12, i32 %15, i32 %16)
  %18 = load i32, i32* @IE_CAUSE, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %8, align 8
  store i32 2, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %8, align 8
  store i32 128, i32* %23, align 4
  %25 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %26 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 128
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* @IE_CALL_STATE, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %8, align 8
  store i32 1, i32* %35, align 4
  %37 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %38 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 63
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.sk_buff* @l3_alloc_skb(i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %10, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %3
  br label %69

54:                                               ; preds = %3
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @skb_put(%struct.sk_buff* %55, i32 %56)
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @memcpy(i32 %57, i32* %58, i32 %59)
  %61 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %62 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DL_DATA, align 4
  %65 = load i32, i32* @REQUEST, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @l3_msg(i32 %63, i32 %66, %struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %54, %53
  ret void
}

declare dso_local i32 @MsgHead(i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
