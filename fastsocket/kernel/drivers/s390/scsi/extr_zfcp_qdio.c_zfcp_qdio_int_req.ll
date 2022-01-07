; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_qdio = type { i32, %struct.TYPE_2__*, %struct.zfcp_qdio_queue }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_qdio_queue = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"qdireq1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32, i32, i32, i32, i64)* @zfcp_qdio_int_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_int_req(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.zfcp_qdio*, align 8
  %14 = alloca %struct.zfcp_qdio_queue*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = inttoptr i64 %15 to %struct.zfcp_qdio*
  store %struct.zfcp_qdio* %16, %struct.zfcp_qdio** %13, align 8
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %17, i32 0, i32 2
  store %struct.zfcp_qdio_queue* %18, %struct.zfcp_qdio_queue** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %6
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %24 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @zfcp_dbf_hba_qdio(i32 %27, i32 %28, i32 %29, i32 %30, i32 0, i32 0, i32* null)
  %32 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %51

35:                                               ; preds = %6
  %36 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %14, align 8
  %37 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @zfcp_qdio_zero_sbals(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %43 = call i32 @zfcp_qdio_account(%struct.zfcp_qdio* %42)
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %14, align 8
  %46 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %45, i32 0, i32 0
  %47 = call i32 @atomic_add(i32 %44, i32* %46)
  %48 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %49 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %48, i32 0, i32 0
  %50 = call i32 @wake_up(i32* %49)
  br label %51

51:                                               ; preds = %35, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_dbf_hba_qdio(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio*, i8*, i32) #1

declare dso_local i32 @zfcp_qdio_zero_sbals(i32, i32, i32) #1

declare dso_local i32 @zfcp_qdio_account(%struct.zfcp_qdio*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
