; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_setup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i32 }
%struct.sk_buff = type { i32 }

@MT_SETUP = common dso_local global i32 0, align 4
@IE_BEARER = common dso_local global i8* null, align 8
@IE_KEYPAD = common dso_local global i32 0, align 4
@T303 = common dso_local global i32 0, align 4
@CC_T303 = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@IE_LLC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i8, i8*)* @l3ni1_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_setup_req(%struct.l3_process* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %17 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MT_SETUP, align 4
  %20 = call i32 @MsgHead(i8* %15, i32 %18, i32 %19)
  %21 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %22 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  store i8 -95, i8* %26, align 1
  %28 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %29 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %47 [
    i32 1, label %33
    i32 5, label %46
    i32 7, label %46
  ]

33:                                               ; preds = %3
  %34 = load i8*, i8** @IE_BEARER, align 8
  %35 = ptrtoint i8* %34 to i8
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  store i8 3, i8* %38, align 1
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  store i8 -112, i8* %40, align 1
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  store i8 -112, i8* %42, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 -94, i8* %44, align 1
  br label %58

46:                                               ; preds = %3, %3
  br label %47

47:                                               ; preds = %3, %46
  %48 = load i8*, i8** @IE_BEARER, align 8
  %49 = ptrtoint i8* %48 to i8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  store i8 2, i8* %52, align 1
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  store i8 -120, i8* %54, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 -112, i8* %56, align 1
  br label %58

58:                                               ; preds = %47, %33
  store i8* null, i8** %11, align 8
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %75, %58
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 46, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %12, align 8
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %12, align 8
  store i8 0, i8* %71, align 1
  br label %75

72:                                               ; preds = %64
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %12, align 8
  br label %75

75:                                               ; preds = %72, %69
  br label %60

76:                                               ; preds = %60
  %77 = load i32, i32* @IE_KEYPAD, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  store i8 %83, i8* %84, align 1
  br label %86

86:                                               ; preds = %90, %76
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 127
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  store i8 %96, i8* %97, align 1
  br label %86

99:                                               ; preds = %86
  %100 = load i8*, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %11, align 8
  store i8 46, i8* %103, align 1
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call %struct.sk_buff* @l3_alloc_skb(i32 %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %7, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  br label %141

116:                                              ; preds = %105
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @skb_put(%struct.sk_buff* %117, i32 %118)
  %120 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @memcpy(i32 %119, i8* %120, i32 %121)
  %123 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %124 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %123, i32 0, i32 1
  %125 = call i32 @L3DelTimer(i32* %124)
  %126 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %127 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %126, i32 0, i32 1
  %128 = load i32, i32* @T303, align 4
  %129 = load i32, i32* @CC_T303, align 4
  %130 = call i32 @L3AddTimer(i32* %127, i32 %128, i32 %129)
  %131 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %132 = call i32 @newl3state(%struct.l3_process* %131, i32 1)
  %133 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %134 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DL_DATA, align 4
  %137 = load i32, i32* @REQUEST, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = call i32 @l3_msg(i32 %135, i32 %138, %struct.sk_buff* %139)
  br label %141

141:                                              ; preds = %116, %115
  ret void
}

declare dso_local i32 @MsgHead(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
