; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_account.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*)* @zfcp_qdio_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_account(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %7 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %7, i32 0, i32 2
  %9 = call i32 @spin_lock(i32* %8)
  %10 = call i64 (...) @get_clock_monotonic()
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = lshr i64 %15, 12
  store i64 %16, i64* %4, align 8
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = mul i64 %25, %26
  %28 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %29 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %36 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %38 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @get_clock_monotonic(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
