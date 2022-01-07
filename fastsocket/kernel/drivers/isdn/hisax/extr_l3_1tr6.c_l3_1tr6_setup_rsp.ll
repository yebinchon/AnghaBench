; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@MT_N1_CONN = common dso_local global i32 0, align 4
@PROTO_DIS_N1 = common dso_local global i32 0, align 4
@WE0_netSpecFac = common dso_local global i8* null, align 8
@FAC_SPV = common dso_local global i32 0, align 4
@FAC_Activate = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@T313 = common dso_local global i32 0, align 4
@CC_T313 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_setup_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_setup_rsp(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [24 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MT_N1_CONN, align 4
  %17 = load i32, i32* @PROTO_DIS_N1, align 4
  %18 = call i32 @MsgHead(i32* %12, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %20 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %3
  %25 = load i8*, i8** @WE0_netSpecFac, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %9, align 8
  store i32 4, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  store i32 0, i32* %31, align 4
  %33 = load i32, i32* @FAC_SPV, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %36 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %37 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %43 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %44 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %50 = load i8*, i8** @WE0_netSpecFac, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %9, align 8
  store i32 4, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %9, align 8
  store i32 0, i32* %56, align 4
  %58 = load i32, i32* @FAC_Activate, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %62 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %68 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %69 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %75

75:                                               ; preds = %24, %3
  %76 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %77 = call i32 @newl3state(%struct.l3_process* %76, i32 8)
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.sk_buff* @l3_alloc_skb(i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %7, align 8
  %87 = icmp ne %struct.sk_buff* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %75
  br label %112

89:                                               ; preds = %75
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @skb_put(%struct.sk_buff* %90, i32 %91)
  %93 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @memcpy(i32 %92, i32* %93, i32 %94)
  %96 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %97 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DL_DATA, align 4
  %100 = load i32, i32* @REQUEST, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call i32 @l3_msg(i32 %98, i32 %101, %struct.sk_buff* %102)
  %104 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %105 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %104, i32 0, i32 0
  %106 = call i32 @L3DelTimer(i32* %105)
  %107 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %108 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %107, i32 0, i32 0
  %109 = load i32, i32* @T313, align 4
  %110 = load i32, i32* @CC_T313, align 4
  %111 = call i32 @L3AddTimer(i32* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %89, %88
  ret void
}

declare dso_local i32 @MsgHead(i32*, i32, i32, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
