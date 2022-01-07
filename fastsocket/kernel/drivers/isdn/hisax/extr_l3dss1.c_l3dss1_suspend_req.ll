; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_suspend_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_suspend_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i32 }

@MT_SUSPEND = common dso_local global i32 0, align 4
@IE_CALL_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SUS wrong CALL_ID len %d\00", align 1
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@T319 = common dso_local global i32 0, align 4
@CC_T319 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_suspend_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_suspend_req(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
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
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %22 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MT_SUSPEND, align 4
  %25 = call i32 @MsgHead(i32* %20, i32 %23, i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %12, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 %32, 10
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i32, i32* @IE_CALL_ID, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %51, %34
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %41

54:                                               ; preds = %41
  br label %65

55:                                               ; preds = %31, %3
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %60 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @l3_debug(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %99

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call %struct.sk_buff* @l3_alloc_skb(i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %7, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %99

77:                                               ; preds = %65
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @skb_put(%struct.sk_buff* %78, i32 %79)
  %81 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @memcpy(i32 %80, i32* %81, i32 %82)
  %84 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %85 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DL_DATA, align 4
  %88 = load i32, i32* @REQUEST, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @l3_msg(i32 %86, i32 %89, %struct.sk_buff* %90)
  %92 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %93 = call i32 @newl3state(%struct.l3_process* %92, i32 15)
  %94 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %95 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %94, i32 0, i32 0
  %96 = load i32, i32* @T319, align 4
  %97 = load i32, i32* @CC_T319, align 4
  %98 = call i32 @L3AddTimer(i32* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %77, %76, %58
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
