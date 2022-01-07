; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_t305.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_t305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@NO_CAUSE = common dso_local global i64 0, align 8
@MT_RELEASE = common dso_local global i32 0, align 4
@IE_CAUSE = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@T308 = common dso_local global i32 0, align 4
@CC_T308_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_t305 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_t305(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32* %12, i32** %8, align 8
  store i32 16, i32* %11, align 4
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %13, i32 0, i32 0
  %15 = call i32 @L3DelTimer(i32* %14)
  %16 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %17 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NO_CAUSE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %24 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %31 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MT_RELEASE, align 4
  %34 = call i32 @MsgHead(i32* %29, i32 %32, i32 %33)
  %35 = load i32, i32* @IE_CAUSE, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  store i32 2, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 128, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, 128
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.sk_buff* @l3_alloc_skb(i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %10, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %28
  br label %79

57:                                               ; preds = %28
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @skb_put(%struct.sk_buff* %58, i32 %59)
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @memcpy(i32 %60, i32* %61, i32 %62)
  %64 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %65 = call i32 @newl3state(%struct.l3_process* %64, i32 19)
  %66 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %67 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DL_DATA, align 4
  %70 = load i32, i32* @REQUEST, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = call i32 @l3_msg(i32 %68, i32 %71, %struct.sk_buff* %72)
  %74 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %75 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %74, i32 0, i32 0
  %76 = load i32, i32* @T308, align 4
  %77 = load i32, i32* @CC_T308_1, align 4
  %78 = call i32 @L3AddTimer(i32* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %57, %56
  ret void
}

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @MsgHead(i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
