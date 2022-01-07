; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_spy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_spy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@OID_INL_CONFIG = common dso_local global i32 0, align 4
@INL_CONFIG_RXANNEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @prism54_set_spy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_spy(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.TYPE_10__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %9, align 8
  %14 = load i32, i32* @OID_INL_CONFIG, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = load i32, i32* @OID_INL_CONFIG, align 4
  %20 = call i32 @mgt_get(%struct.TYPE_10__* %18, i32 %19, i32* %10)
  %21 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %22 = bitcast %union.iwreq_data* %21 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @INL_CONFIG_RXANNEX, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %54

37:                                               ; preds = %26, %4
  %38 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.TYPE_8__*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @INL_CONFIG_RXANNEX, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %43, %37
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = load i32, i32* @OID_INL_CONFIG, align 4
  %57 = call i32 @mgt_set(%struct.TYPE_10__* %55, i32 %56, i32* %10)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = call i32 @mgt_commit_list(%struct.TYPE_10__* %58, i32* %11, i32 1)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = call i32 @up_write(i32* %61)
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %65 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @iw_handler_set_spy(%struct.net_device* %63, %struct.iw_request_info* %64, %union.iwreq_data* %65, i8* %66)
  ret i32 %67
}

declare dso_local %struct.TYPE_10__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mgt_get(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @mgt_set(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @mgt_commit_list(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @iw_handler_set_spy(%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
