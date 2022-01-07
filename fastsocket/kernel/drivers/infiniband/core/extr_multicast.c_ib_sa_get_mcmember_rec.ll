; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_ib_sa_get_mcmember_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_ib_sa_get_mcmember_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32 }
%struct.mcast_device = type { i64, %struct.mcast_port* }
%struct.mcast_port = type { i32 }
%struct.mcast_group = type { %struct.ib_sa_mcmember_rec }

@mcast_client = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_get_mcmember_rec(%struct.ib_device* %0, i64 %1, %union.ib_gid* %2, %struct.ib_sa_mcmember_rec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %10 = alloca %struct.mcast_device*, align 8
  %11 = alloca %struct.mcast_port*, align 8
  %12 = alloca %struct.mcast_group*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store %union.ib_gid* %2, %union.ib_gid** %8, align 8
  store %struct.ib_sa_mcmember_rec* %3, %struct.ib_sa_mcmember_rec** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = call %struct.mcast_device* @ib_get_client_data(%struct.ib_device* %15, i32* @mcast_client)
  store %struct.mcast_device* %16, %struct.mcast_device** %10, align 8
  %17 = load %struct.mcast_device*, %struct.mcast_device** %10, align 8
  %18 = icmp ne %struct.mcast_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %56

22:                                               ; preds = %4
  %23 = load %struct.mcast_device*, %struct.mcast_device** %10, align 8
  %24 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %23, i32 0, i32 1
  %25 = load %struct.mcast_port*, %struct.mcast_port** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.mcast_device*, %struct.mcast_device** %10, align 8
  %28 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %25, i64 %30
  store %struct.mcast_port* %31, %struct.mcast_port** %11, align 8
  %32 = load %struct.mcast_port*, %struct.mcast_port** %11, align 8
  %33 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %32, i32 0, i32 0
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.mcast_port*, %struct.mcast_port** %11, align 8
  %37 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %38 = call %struct.mcast_group* @mcast_find(%struct.mcast_port* %36, %union.ib_gid* %37)
  store %struct.mcast_group* %38, %struct.mcast_group** %12, align 8
  %39 = load %struct.mcast_group*, %struct.mcast_group** %12, align 8
  %40 = icmp ne %struct.mcast_group* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %22
  %42 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %9, align 8
  %43 = load %struct.mcast_group*, %struct.mcast_group** %12, align 8
  %44 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %43, i32 0, i32 0
  %45 = bitcast %struct.ib_sa_mcmember_rec* %42 to i8*
  %46 = bitcast %struct.ib_sa_mcmember_rec* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %50

47:                                               ; preds = %22
  %48 = load i32, i32* @EADDRNOTAVAIL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.mcast_port*, %struct.mcast_port** %11, align 8
  %52 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %51, i32 0, i32 0
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %50, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.mcast_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mcast_group* @mcast_find(%struct.mcast_port*, %union.ib_gid*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
