; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_mbx.c_e1000_init_mbx_params_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_mbx.c_e1000_init_mbx_params_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@E1000_VF_MBX_INIT_DELAY = common dso_local global i32 0, align 4
@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@e1000_read_mbx_vf = common dso_local global i32 0, align 4
@e1000_write_mbx_vf = common dso_local global i32 0, align 4
@e1000_read_posted_mbx = common dso_local global i32 0, align 4
@e1000_write_posted_mbx = common dso_local global i32 0, align 4
@e1000_check_for_msg_vf = common dso_local global i32 0, align 4
@e1000_check_for_ack_vf = common dso_local global i32 0, align 4
@e1000_check_for_rst_vf = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_init_mbx_params_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mbx_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_mbx_info* %5, %struct.e1000_mbx_info** %3, align 8
  %6 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @E1000_VF_MBX_INIT_DELAY, align 4
  %9 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %12 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @e1000_read_mbx_vf, align 4
  %15 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @e1000_write_mbx_vf, align 4
  %19 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @e1000_read_posted_mbx, align 4
  %23 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @e1000_write_posted_mbx, align 4
  %27 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @e1000_check_for_msg_vf, align 4
  %31 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @e1000_check_for_ack_vf, align 4
  %35 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @e1000_check_for_rst_vf, align 4
  %39 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
