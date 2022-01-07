; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_send_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.atmtcp_control = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.atm_vcc* }
%struct.TYPE_5__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATMTCP_HDR_MAGIC = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32, %struct.atmtcp_control*, i32)* @atmtcp_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_send_control(%struct.atm_vcc* %0, i32 %1, %struct.atmtcp_control* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atm_vcc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmtcp_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.atmtcp_control*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.atmtcp_control* %2, %struct.atmtcp_control** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @wait, align 4
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @DECLARE_WAITQUEUE(i32 %15, i32 %16)
  store i32 0, i32* %14, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_6__* @PRIV(i32 %20)
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %25 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_6__* @PRIV(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %28, align 8
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi %struct.atm_vcc* [ %29, %23 ], [ null, %30 ]
  store %struct.atm_vcc* %32, %struct.atm_vcc** %10, align 8
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %34 = icmp ne %struct.atm_vcc* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EUNATCH, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %154

38:                                               ; preds = %31
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.sk_buff* @alloc_skb(i32 12, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %154

46:                                               ; preds = %38
  %47 = call i32 (...) @mb()
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_6__* @PRIV(i32 %50)
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %55 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_6__* @PRIV(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %58, align 8
  br label %61

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %53
  %62 = phi %struct.atm_vcc* [ %59, %53 ], [ null, %60 ]
  store %struct.atm_vcc* %62, %struct.atm_vcc** %10, align 8
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %64 = icmp ne %struct.atm_vcc* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* @EUNATCH, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %154

70:                                               ; preds = %61
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @atm_force_charge(%struct.atm_vcc* %71, i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = call i64 @skb_put(%struct.sk_buff* %76, i32 12)
  %78 = inttoptr i64 %77 to %struct.atmtcp_control*
  store %struct.atmtcp_control* %78, %struct.atmtcp_control** %12, align 8
  %79 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %80 = load %struct.atmtcp_control*, %struct.atmtcp_control** %8, align 8
  %81 = bitcast %struct.atmtcp_control* %79 to i8*
  %82 = bitcast %struct.atmtcp_control* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  %83 = load i32, i32* @ATMTCP_HDR_MAGIC, align 4
  %84 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %85 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %89 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %91 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %90, i32 0, i32 1
  %92 = call i32 @memset(i32* %91, i32 0, i32 4)
  %93 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %94 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %95 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %94, i32 0, i32 1
  %96 = bitcast i32* %95 to %struct.atm_vcc**
  store %struct.atm_vcc* %93, %struct.atm_vcc** %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %99 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %98, i32 0, i32 1
  %100 = call i32 @test_bit(i32 %97, i32* %99)
  store i32 %100, i32* %13, align 4
  %101 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %102 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %101, i32 0, i32 2
  %103 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %102, align 8
  %104 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = call i32 %103(%struct.atm_vcc* %104, %struct.sk_buff* %105)
  %107 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %108 = call %struct.TYPE_5__* @sk_atm(%struct.atm_vcc* %107)
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @add_wait_queue(i32 %110, i32* @wait)
  br label %112

112:                                              ; preds = %141, %70
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %115 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %114, i32 0, i32 1
  %116 = call i32 @test_bit(i32 %113, i32* %115)
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = call i32 (...) @mb()
  %121 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %122 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.TYPE_6__* @PRIV(i32 %123)
  %125 = icmp ne %struct.TYPE_6__* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %128 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_6__* @PRIV(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.atm_vcc*, %struct.atm_vcc** %131, align 8
  br label %134

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %126
  %135 = phi %struct.atm_vcc* [ %132, %126 ], [ null, %133 ]
  store %struct.atm_vcc* %135, %struct.atm_vcc** %10, align 8
  %136 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %137 = icmp ne %struct.atm_vcc* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @EUNATCH, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %14, align 4
  br label %145

141:                                              ; preds = %134
  %142 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %143 = call i32 @set_current_state(i32 %142)
  %144 = call i32 (...) @schedule()
  br label %112

145:                                              ; preds = %138, %112
  %146 = load i32, i32* @TASK_RUNNING, align 4
  %147 = call i32 @set_current_state(i32 %146)
  %148 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %149 = call %struct.TYPE_5__* @sk_atm(%struct.atm_vcc* %148)
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @remove_wait_queue(i32 %151, i32* @wait)
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %145, %65, %43, %35
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local %struct.TYPE_6__* @PRIV(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atm_force_charge(%struct.atm_vcc*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local %struct.TYPE_5__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
