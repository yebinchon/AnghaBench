; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_global_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_global_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 (%struct.l3_process*, i32, %struct.sk_buff*)* }
%struct.l3_process = type { i32, i32, i64 }
%struct.sk_buff = type { i64* }
%struct.PStack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.l3_process* }

@globalmes_list = common dso_local global %struct.TYPE_5__* null, align 8
@L3_DEB_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ni1 global state %d mt %x unhandled\00", align 1
@MT_STATUS = common dso_local global i32 0, align 4
@IE_CAUSE = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ni1 global %d mt %x\00", align 1
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
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %26 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %29 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %19
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %47 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %49, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %63

59:                                               ; preds = %45, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %31

63:                                               ; preds = %58, %31
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %65)
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %135

68:                                               ; preds = %63
  %69 = load %struct.PStack*, %struct.PStack** %4, align 8
  %70 = getelementptr inbounds %struct.PStack, %struct.PStack* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @L3_DEB_STATE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.PStack*, %struct.PStack** %4, align 8
  %78 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %79 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @l3_debug(%struct.PStack* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %68
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %86 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @MT_STATUS, align 4
  %89 = call i32 @MsgHead(i32* %84, i64 %87, i32 %88)
  %90 = load i32, i32* @IE_CAUSE, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %8, align 8
  store i32 2, i32* %93, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %8, align 8
  store i32 128, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %8, align 8
  store i32 209, i32* %97, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %8, align 8
  store i32 20, i32* %99, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %8, align 8
  store i32 1, i32* %101, align 4
  %103 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %104 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 63
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call %struct.sk_buff* @l3_alloc_skb(i32 %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %6, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %83
  br label %161

120:                                              ; preds = %83
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @skb_put(%struct.sk_buff* %121, i32 %122)
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @memcpy(i32 %123, i32* %124, i32 %125)
  %127 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %128 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DL_DATA, align 4
  %131 = load i32, i32* @REQUEST, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = call i32 @l3_msg(i32 %129, i32 %132, %struct.sk_buff* %133)
  br label %161

135:                                              ; preds = %63
  %136 = load %struct.PStack*, %struct.PStack** %4, align 8
  %137 = getelementptr inbounds %struct.PStack, %struct.PStack* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @L3_DEB_STATE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load %struct.PStack*, %struct.PStack** %4, align 8
  %145 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %146 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @l3_debug(%struct.PStack* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %135
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @globalmes_list, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32 (%struct.l3_process*, i32, %struct.sk_buff*)*, i32 (%struct.l3_process*, i32, %struct.sk_buff*)** %155, align 8
  %157 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = call i32 %156(%struct.l3_process* %157, i32 %158, %struct.sk_buff* %159)
  br label %161

161:                                              ; preds = %119, %150, %120
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*, i32, i32) #1

declare dso_local i32 @MsgHead(i32*, i64, i32) #1

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
