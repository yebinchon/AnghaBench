; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_snapshot.c_vss_send_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_snapshot.c_vss_send_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.work_struct = type { i32 }
%struct.cn_msg = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hv_vss_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@vss_transaction = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CN_VSS_IDX = common dso_local global i32 0, align 4
@CN_VSS_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @vss_send_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vss_send_op(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cn_msg*, align 8
  %5 = alloca %struct.hv_vss_msg*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vss_transaction, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.cn_msg* @kzalloc(i32 28, i32 %10)
  store %struct.cn_msg* %11, %struct.cn_msg** %4, align 8
  %12 = load %struct.cn_msg*, %struct.cn_msg** %4, align 8
  %13 = icmp ne %struct.cn_msg* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.cn_msg*, %struct.cn_msg** %4, align 8
  %17 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.hv_vss_msg*
  store %struct.hv_vss_msg* %19, %struct.hv_vss_msg** %5, align 8
  %20 = load i32, i32* @CN_VSS_IDX, align 4
  %21 = load %struct.cn_msg*, %struct.cn_msg** %4, align 8
  %22 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @CN_VSS_VAL, align 4
  %25 = load %struct.cn_msg*, %struct.cn_msg** %4, align 8
  %26 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %5, align 8
  %30 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.cn_msg*, %struct.cn_msg** %4, align 8
  %33 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %32, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = load %struct.cn_msg*, %struct.cn_msg** %4, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32 @cn_netlink_send(%struct.cn_msg* %34, i32 0, i32 %35)
  %37 = load %struct.cn_msg*, %struct.cn_msg** %4, align 8
  %38 = call i32 @kfree(%struct.cn_msg* %37)
  br label %39

39:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.cn_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @cn_netlink_send(%struct.cn_msg*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cn_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
