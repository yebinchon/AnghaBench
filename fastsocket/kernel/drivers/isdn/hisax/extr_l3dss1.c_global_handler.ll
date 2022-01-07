; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_global_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_global_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 (%struct.l3_process*, i32, %struct.sk_buff*)* }
%struct.l3_process = type { i32, i32, i32 }
%struct.sk_buff = type { i32* }
%struct.PStack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.l3_process* }

@globalmes_list = common dso_local global %struct.TYPE_5__* null, align 8
@L3_DEB_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dss1 global state %d mt %x unhandled\00", align 1
@MT_STATUS = common dso_local global i32 0, align 4
@IE_CAUSE = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dss1 global %d mt %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32, %struct.sk_buff*)* @global_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @global_handler(%struct.PStack* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.l3_process*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32* %12, i32** %8, align 8
  %13 = load %struct.PStack*, %struct.PStack** %4, align 8
  %14 = getelementptr inbounds %struct.PStack, %struct.PStack* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.l3_process*, %struct.l3_process** %15, align 8
  store %struct.l3_process* %16, %struct.l3_process** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %23 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %53, %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %40 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %42, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %56

52:                                               ; preds = %38, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %24

56:                                               ; preds = %51, %24
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %56
  %62 = load %struct.PStack*, %struct.PStack** %4, align 8
  %63 = getelementptr inbounds %struct.PStack, %struct.PStack* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @L3_DEB_STATE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.PStack*, %struct.PStack** %4, align 8
  %71 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %72 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @l3_debug(%struct.PStack* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %61
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %79 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MT_STATUS, align 4
  %82 = call i32 @MsgHead(i32* %77, i32 %80, i32 %81)
  %83 = load i32, i32* @IE_CAUSE, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %8, align 8
  store i32 2, i32* %86, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %8, align 8
  store i32 128, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  store i32 209, i32* %90, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  store i32 20, i32* %92, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  store i32 1, i32* %94, align 4
  %96 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %97 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 63
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %104 = ptrtoint i32* %102 to i64
  %105 = ptrtoint i32* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call %struct.sk_buff* @l3_alloc_skb(i32 %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %6, align 8
  %111 = icmp ne %struct.sk_buff* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %76
  br label %154

113:                                              ; preds = %76
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @skb_put(%struct.sk_buff* %114, i32 %115)
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @memcpy(i32 %116, i32* %117, i32 %118)
  %120 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %121 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DL_DATA, align 4
  %124 = load i32, i32* @REQUEST, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = call i32 @l3_msg(i32 %122, i32 %125, %struct.sk_buff* %126)
  br label %154

128:                                              ; preds = %56
  %129 = load %struct.PStack*, %struct.PStack** %4, align 8
  %130 = getelementptr inbounds %struct.PStack, %struct.PStack* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @L3_DEB_STATE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = load %struct.PStack*, %struct.PStack** %4, align 8
  %138 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %139 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @l3_debug(%struct.PStack* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %136, %128
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i32 (%struct.l3_process*, i32, %struct.sk_buff*)*, i32 (%struct.l3_process*, i32, %struct.sk_buff*)** %148, align 8
  %150 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = call i32 %149(%struct.l3_process* %150, i32 %151, %struct.sk_buff* %152)
  br label %154

154:                                              ; preds = %112, %143, %113
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*, i32, i32) #1

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
