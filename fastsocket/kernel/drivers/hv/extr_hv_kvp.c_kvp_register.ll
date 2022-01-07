; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.hv_kvp_msg = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CN_KVP_IDX = common dso_local global i32 0, align 4
@CN_KVP_VAL = common dso_local global i32 0, align 4
@HV_DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kvp_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.hv_kvp_msg*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.cn_msg* @kzalloc(i32 40, i32 %6)
  store %struct.cn_msg* %7, %struct.cn_msg** %3, align 8
  %8 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %9 = icmp ne %struct.cn_msg* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %12 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %14, %struct.hv_kvp_msg** %4, align 8
  %15 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %16 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* @CN_KVP_IDX, align 4
  %21 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %22 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @CN_KVP_VAL, align 4
  %25 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %26 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %30 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @HV_DRV_VERSION, align 4
  %34 = call i32 @strcpy(i8* %32, i32 %33)
  %35 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %36 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %35, i32 0, i32 0
  store i32 16, i32* %36, align 8
  %37 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i32 @cn_netlink_send(%struct.cn_msg* %37, i32 0, i32 %38)
  %40 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %41 = call i32 @kfree(%struct.cn_msg* %40)
  br label %42

42:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.cn_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @cn_netlink_send(%struct.cn_msg*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cn_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
