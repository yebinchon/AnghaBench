; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ds.c_ds_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ds.c_ds_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_info = type { i32, %struct.ldc_channel* }
%struct.ldc_channel = type { i32 }
%struct.ds_ver_req = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@DS_INIT_REQ = common dso_local global i32 0, align 4
@DS_HS_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_info*)* @ds_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_up(%struct.ds_info* %0) #0 {
  %2 = alloca %struct.ds_info*, align 8
  %3 = alloca %struct.ldc_channel*, align 8
  %4 = alloca %struct.ds_ver_req, align 8
  %5 = alloca i32, align 4
  store %struct.ds_info* %0, %struct.ds_info** %2, align 8
  %6 = load %struct.ds_info*, %struct.ds_info** %2, align 8
  %7 = getelementptr inbounds %struct.ds_info, %struct.ds_info* %6, i32 0, i32 1
  %8 = load %struct.ldc_channel*, %struct.ldc_channel** %7, align 8
  store %struct.ldc_channel* %8, %struct.ldc_channel** %3, align 8
  %9 = load i32, i32* @DS_INIT_REQ, align 4
  %10 = getelementptr inbounds %struct.ds_ver_req, %struct.ds_ver_req* %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ds_ver_req, %struct.ds_ver_req* %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 20, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ds_ver_req, %struct.ds_ver_req* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ds_ver_req, %struct.ds_ver_req* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %19 = call i32 @__ds_send(%struct.ldc_channel* %18, %struct.ds_ver_req* %4, i32 24)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @DS_HS_START, align 4
  %24 = load %struct.ds_info*, %struct.ds_info** %2, align 8
  %25 = getelementptr inbounds %struct.ds_info, %struct.ds_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @__ds_send(%struct.ldc_channel*, %struct.ds_ver_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
