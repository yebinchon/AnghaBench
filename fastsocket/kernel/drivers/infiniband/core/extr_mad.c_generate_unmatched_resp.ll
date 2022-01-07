; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_generate_unmatched_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_generate_unmatched_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_private = type { %struct.TYPE_12__, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_11__* }

@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET_RESP = common dso_local global i64 0, align 8
@IB_MGMT_MAD_STATUS_UNSUPPORTED_METHOD_ATTRIB = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_SMP_DIRECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_private*, %struct.ib_mad_private*)* @generate_unmatched_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_unmatched_resp(%struct.ib_mad_private* %0, %struct.ib_mad_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mad_private*, align 8
  %5 = alloca %struct.ib_mad_private*, align 8
  store %struct.ib_mad_private* %0, %struct.ib_mad_private** %4, align 8
  store %struct.ib_mad_private* %1, %struct.ib_mad_private** %5, align 8
  %6 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  %7 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  %16 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %14, %2
  %24 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %25 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  %26 = call i32 @memcpy(%struct.ib_mad_private* %24, %struct.ib_mad_private* %25, i32 64)
  %27 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %28 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %31 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32* %29, i32** %33, align 8
  %34 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %35 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %38 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %41, align 8
  %42 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %43 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %42, i32 0, i32 1
  %44 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %45 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32* %43, i32** %48, align 8
  %49 = load i64, i64* @IB_MGMT_METHOD_GET_RESP, align 8
  %50 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %51 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i64 %49, i64* %54, align 8
  %55 = load i32, i32* @IB_MGMT_MAD_STATUS_UNSUPPORTED_METHOD_ATTRIB, align 4
  %56 = call i32 @cpu_to_be16(i32 %55)
  %57 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %58 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  store i32 %56, i32* %61, align 8
  %62 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  %63 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %23
  %71 = load i32, i32* @IB_SMP_DIRECTION, align 4
  %72 = load %struct.ib_mad_private*, %struct.ib_mad_private** %5, align 8
  %73 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70, %23
  store i32 1, i32* %3, align 4
  br label %81

80:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @memcpy(%struct.ib_mad_private*, %struct.ib_mad_private*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
