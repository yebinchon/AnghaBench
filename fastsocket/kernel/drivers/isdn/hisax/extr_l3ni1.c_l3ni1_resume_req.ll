; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_resume_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_resume_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i32 }

@MT_RESUME = common dso_local global i32 0, align 4
@IE_CALL_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RES wrong CALL_ID len %d\00", align 1
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@T318 = common dso_local global i32 0, align 4
@CC_T318 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_resume_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_resume_req(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [32 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  store i32* %13, i32** %9, align 8
  %14 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %15 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MT_RESUME, align 4
  %24 = call i32 @MsgHead(i32* %19, i32 %22, i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %12, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 10
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* @IE_CALL_ID, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %50, %33
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %12, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %40

53:                                               ; preds = %40
  br label %64

54:                                               ; preds = %30, %3
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %59 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @l3_debug(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %98

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.sk_buff* @l3_alloc_skb(i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %7, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  br label %98

76:                                               ; preds = %64
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @skb_put(%struct.sk_buff* %77, i32 %78)
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @memcpy(i32 %79, i32* %80, i32 %81)
  %83 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %84 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DL_DATA, align 4
  %87 = load i32, i32* @REQUEST, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call i32 @l3_msg(i32 %85, i32 %88, %struct.sk_buff* %89)
  %91 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %92 = call i32 @newl3state(%struct.l3_process* %91, i32 17)
  %93 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %94 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %93, i32 0, i32 0
  %95 = load i32, i32* @T318, align 4
  %96 = load i32, i32* @CC_T318, align 4
  %97 = call i32 @L3AddTimer(i32* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %76, %75, %57
  ret void
}

declare dso_local i32 @MsgHead(i32*, i32, i32) #1

declare dso_local i32 @l3_debug(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
