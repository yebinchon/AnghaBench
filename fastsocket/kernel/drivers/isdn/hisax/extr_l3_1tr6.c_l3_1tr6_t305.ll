; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_t305.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_t305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@NO_CAUSE = common dso_local global i64 0, align 8
@CAUSE_CallRejected = common dso_local global i32 0, align 4
@MT_N1_REL = common dso_local global i32 0, align 4
@PROTO_DIS_N1 = common dso_local global i32 0, align 4
@WE0_cause = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@T308 = common dso_local global i32 0, align 4
@CC_T308_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_t305 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_t305(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32* %13, i32** %9, align 8
  store i32 144, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %14 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %15 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %14, i32 0, i32 0
  %16 = call i32 @L3DelTimer(i32* %15)
  %17 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %18 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NO_CAUSE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %25 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %23, %3
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 127
  switch i32 %31, label %35 [
    i32 16, label %32
    i32 21, label %33
  ]

32:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @CAUSE_CallRejected, align 4
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %29, %33, %32
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %38 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MT_N1_REL, align 4
  %41 = load i32, i32* @PROTO_DIS_N1, align 4
  %42 = call i32 @MsgHead(i32* %36, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @WE0_cause, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %35
  %56 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %57 = call i32 @newl3state(%struct.l3_process* %56, i32 19)
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.sk_buff* @l3_alloc_skb(i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %7, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  br label %89

69:                                               ; preds = %55
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @skb_put(%struct.sk_buff* %70, i32 %71)
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @memcpy(i32 %72, i32* %73, i32 %74)
  %76 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %77 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DL_DATA, align 4
  %80 = load i32, i32* @REQUEST, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call i32 @l3_msg(i32 %78, i32 %81, %struct.sk_buff* %82)
  %84 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %85 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %84, i32 0, i32 0
  %86 = load i32, i32* @T308, align 4
  %87 = load i32, i32* @CC_T308_1, align 4
  %88 = call i32 @L3AddTimer(i32* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %69, %68
  ret void
}

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @MsgHead(i32*, i32, i32, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
