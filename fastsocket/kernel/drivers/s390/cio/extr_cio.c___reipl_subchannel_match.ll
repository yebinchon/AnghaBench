; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c___reipl_subchannel_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c___reipl_subchannel_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel_id = type { i64 }
%struct.schib = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.sch_match_id = type { i64, %struct.subchannel_id, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@SUBCHANNEL_TYPE_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @__reipl_subchannel_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reipl_subchannel_match(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel_id, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.schib, align 8
  %7 = alloca %struct.sch_match_id*, align 8
  %8 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sch_match_id*
  store %struct.sch_match_id* %10, %struct.sch_match_id** %7, align 8
  %11 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @stsch_reset(i64 %12, %struct.schib* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.schib, %struct.schib* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SUBCHANNEL_TYPE_IO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.schib, %struct.schib* %6, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.schib, %struct.schib* %6, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sch_match_id*, %struct.sch_match_id** %7, align 8
  %34 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sch_match_id*, %struct.sch_match_id** %7, align 8
  %42 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.sch_match_id*, %struct.sch_match_id** %7, align 8
  %48 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %47, i32 0, i32 1
  %49 = bitcast %struct.subchannel_id* %48 to i8*
  %50 = bitcast %struct.subchannel_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = load %struct.sch_match_id*, %struct.sch_match_id** %7, align 8
  %52 = getelementptr inbounds %struct.sch_match_id, %struct.sch_match_id* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %38, %29, %24, %18
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %46, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @stsch_reset(i64, %struct.schib*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
