; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_get_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_get_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i64 }
%struct.dasd_uid = type { i32 }
%struct.dasd_eckd_private = type { %struct.dasd_uid }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_uid*)* @dasd_eckd_get_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_get_uid(%struct.dasd_device* %0, %struct.dasd_uid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_uid*, align 8
  %6 = alloca %struct.dasd_eckd_private*, align 8
  %7 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_uid* %1, %struct.dasd_uid** %5, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %14 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %16, %struct.dasd_eckd_private** %6, align 8
  %17 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @get_ccwdev_lock(i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.dasd_uid*, %struct.dasd_uid** %5, align 8
  %24 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %25 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %24, i32 0, i32 0
  %26 = bitcast %struct.dasd_uid* %23 to i8*
  %27 = bitcast %struct.dasd_uid* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @get_ccwdev_lock(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32 %31, i64 %32)
  store i32 0, i32* %3, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
