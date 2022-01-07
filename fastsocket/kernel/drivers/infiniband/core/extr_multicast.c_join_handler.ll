; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_join_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_join_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_mcmember_rec = type { i32, i32 }
%struct.mcast_group = type { i64, i64, i32, %struct.TYPE_4__*, i32, %struct.ib_sa_mcmember_rec }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MCAST_INVALID_PKEY_INDEX = common dso_local global i64 0, align 8
@MCAST_BUSY = common dso_local global i64 0, align 8
@mgid0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ib_sa_mcmember_rec*, i8*)* @join_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @join_handler(i32 %0, %struct.ib_sa_mcmember_rec* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mcast_group*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_mcmember_rec* %1, %struct.ib_sa_mcmember_rec** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.mcast_group*
  store %struct.mcast_group* %10, %struct.mcast_group** %7, align 8
  %11 = load i64, i64* @MCAST_INVALID_PKEY_INDEX, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @process_join_error(%struct.mcast_group* %15, i32 %16)
  br label %86

18:                                               ; preds = %3
  %19 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %20 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %27 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %32 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  %35 = call i32 @ib_find_pkey(i32 %25, i32 %30, i32 %34, i64* %8)
  %36 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %37 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %42 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %41, i32 0, i32 5
  %43 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %44 = bitcast %struct.ib_sa_mcmember_rec* %42 to i8*
  %45 = bitcast %struct.ib_sa_mcmember_rec* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 8, i1 false)
  %46 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %47 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MCAST_BUSY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %18
  %52 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %53 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MCAST_INVALID_PKEY_INDEX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %60 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %51, %18
  %62 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %63 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %63, i32 0, i32 0
  %65 = call i32 @memcmp(i32* @mgid0, i32* %64, i32 4)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %61
  %68 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %69 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %68, i32 0, i32 4
  %70 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %71 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = call i32 @rb_erase(i32* %69, i32* %73)
  %75 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %76 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %79 = call i32 @mcast_insert(%struct.TYPE_4__* %77, %struct.mcast_group* %78, i32 1)
  br label %80

80:                                               ; preds = %67, %61
  %81 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %82 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  br label %86

86:                                               ; preds = %80, %14
  %87 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %88 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %87, i32 0, i32 2
  %89 = call i32 @mcast_work_handler(i32* %88)
  ret void
}

declare dso_local i32 @process_join_error(%struct.mcast_group*, i32) #1

declare dso_local i32 @ib_find_pkey(i32, i32, i32, i64*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @mcast_insert(%struct.TYPE_4__*, %struct.mcast_group*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mcast_work_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
