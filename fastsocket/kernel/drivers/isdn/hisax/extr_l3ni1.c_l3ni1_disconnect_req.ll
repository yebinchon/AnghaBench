; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }

@NO_CAUSE = common dso_local global i64 0, align 8
@MT_DISCONNECT = common dso_local global i32 0, align 4
@IE_CAUSE = common dso_local global i32 0, align 4
@IE_USER_USER = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@T305 = common dso_local global i32 0, align 4
@CC_T305 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_disconnect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_disconnect_req(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [56 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = getelementptr inbounds [56 x i32], [56 x i32]* %8, i64 0, i64 0
  store i32* %12, i32** %9, align 8
  store i32 16, i32* %11, align 4
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NO_CAUSE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %27 = call i32 @StopAllL3Timer(%struct.l3_process* %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %30 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MT_DISCONNECT, align 4
  %33 = call i32 @MsgHead(i32* %28, i32 %31, i32 %32)
  %34 = load i32, i32* @IE_CAUSE, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  store i32 2, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %9, align 8
  store i32 128, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, 128
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %46 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %25
  %54 = load i32, i32* @IE_USER_USER, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %57 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %58 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  store i32 4, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %70 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcpy(i32* %68, i8* %73)
  %75 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %76 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = load i32*, i32** %9, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %9, align 8
  %84 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %85 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %53, %25
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds [56 x i32], [56 x i32]* %8, i64 0, i64 0
  %93 = ptrtoint i32* %91 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call %struct.sk_buff* @l3_alloc_skb(i32 %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %7, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %124

102:                                              ; preds = %90
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @skb_put(%struct.sk_buff* %103, i32 %104)
  %106 = getelementptr inbounds [56 x i32], [56 x i32]* %8, i64 0, i64 0
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @memcpy(i32 %105, i32* %106, i32 %107)
  %109 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %110 = call i32 @newl3state(%struct.l3_process* %109, i32 11)
  %111 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %112 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DL_DATA, align 4
  %115 = load i32, i32* @REQUEST, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = call i32 @l3_msg(i32 %113, i32 %116, %struct.sk_buff* %117)
  %119 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %120 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %119, i32 0, i32 0
  %121 = load i32, i32* @T305, align 4
  %122 = load i32, i32* @CC_T305, align 4
  %123 = call i32 @L3AddTimer(i32* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %102, %101
  ret void
}

declare dso_local i32 @StopAllL3Timer(%struct.l3_process*) #1

declare dso_local i32 @MsgHead(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

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
