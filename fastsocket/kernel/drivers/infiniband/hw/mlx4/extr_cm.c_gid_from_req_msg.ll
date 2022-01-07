; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_gid_from_req_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_gid_from_req_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { i32 }
%union.ib_gid = type { i32 }
%struct.cm_req_msg = type { %union.ib_gid }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_mad*)* @gid_from_req_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gid_from_req_msg(%struct.ib_device* %0, %struct.ib_mad* %1) #0 {
  %3 = alloca %union.ib_gid, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_mad*, align 8
  %6 = alloca %struct.cm_req_msg*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_mad* %1, %struct.ib_mad** %5, align 8
  %7 = load %struct.ib_mad*, %struct.ib_mad** %5, align 8
  %8 = bitcast %struct.ib_mad* %7 to %struct.cm_req_msg*
  store %struct.cm_req_msg* %8, %struct.cm_req_msg** %6, align 8
  %9 = load %struct.cm_req_msg*, %struct.cm_req_msg** %6, align 8
  %10 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %9, i32 0, i32 0
  %11 = bitcast %union.ib_gid* %3 to i8*
  %12 = bitcast %union.ib_gid* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  ret i32 %14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
