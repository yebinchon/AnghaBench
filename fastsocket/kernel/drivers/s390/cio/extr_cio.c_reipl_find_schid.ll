; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_reipl_find_schid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_reipl_find_schid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_dev_id = type { i32 }
%struct.subchannel_id = type { i32 }
%struct.sch_match_id = type { i32, %struct.subchannel_id, %struct.ccw_dev_id }

@ENODEV = common dso_local global i32 0, align 4
@__reipl_subchannel_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_dev_id*, %struct.subchannel_id*)* @reipl_find_schid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reipl_find_schid(%struct.ccw_dev_id* %0, %struct.subchannel_id* %1) #0 {
  %3 = alloca %struct.ccw_dev_id*, align 8
  %4 = alloca %struct.subchannel_id*, align 8
  %5 = alloca %struct.sch_match_id, align 4
  store %struct.ccw_dev_id* %0, %struct.ccw_dev_id** %3, align 8
  store %struct.subchannel_id* %1, %struct.subchannel_id** %4, align 8
  %6 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %5, i32 0, i32 2
  %7 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %3, align 8
  %8 = bitcast %struct.ccw_dev_id* %6 to i8*
  %9 = bitcast %struct.ccw_dev_id* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @__reipl_subchannel_match, align 4
  %14 = call i32 @for_each_subchannel(i32 %13, %struct.sch_match_id* %5)
  %15 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.subchannel_id*, %struct.subchannel_id** %4, align 8
  %20 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %5, i32 0, i32 1
  %21 = bitcast %struct.subchannel_id* %19 to i8*
  %22 = bitcast %struct.subchannel_id* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  br label %23

23:                                               ; preds = %18, %2
  %24 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @for_each_subchannel(i32, %struct.sch_match_id*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
