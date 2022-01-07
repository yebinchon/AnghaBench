; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_queue_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_queue_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umad_file = type { i32, i32, i32 }
%struct.ib_mad_agent = type { i32 }
%struct.ib_umad_packet = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IB_UMAD_MAX_AGENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_umad_file*, %struct.ib_mad_agent*, %struct.ib_umad_packet*)* @queue_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_packet(%struct.ib_umad_file* %0, %struct.ib_mad_agent* %1, %struct.ib_umad_packet* %2) #0 {
  %4 = alloca %struct.ib_umad_file*, align 8
  %5 = alloca %struct.ib_mad_agent*, align 8
  %6 = alloca %struct.ib_umad_packet*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_umad_file* %0, %struct.ib_umad_file** %4, align 8
  store %struct.ib_mad_agent* %1, %struct.ib_mad_agent** %5, align 8
  store %struct.ib_umad_packet* %2, %struct.ib_umad_packet** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.ib_umad_file*, %struct.ib_umad_file** %4, align 8
  %9 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %12 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %43, %3
  %16 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %17 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_UMAD_MAX_AGENTS, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %15
  %24 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %25 = load %struct.ib_umad_file*, %struct.ib_umad_file** %4, align 8
  %26 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %27 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.ib_mad_agent* @__get_agent(%struct.ib_umad_file* %25, i64 %30)
  %32 = icmp eq %struct.ib_mad_agent* %24, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %35 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %34, i32 0, i32 0
  %36 = load %struct.ib_umad_file*, %struct.ib_umad_file** %4, align 8
  %37 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %36, i32 0, i32 2
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  %39 = load %struct.ib_umad_file*, %struct.ib_umad_file** %4, align 8
  %40 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %39, i32 0, i32 1
  %41 = call i32 @wake_up_interruptible(i32* %40)
  store i32 0, i32* %7, align 4
  br label %50

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %45 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %15

50:                                               ; preds = %33, %15
  %51 = load %struct.ib_umad_file*, %struct.ib_umad_file** %4, align 8
  %52 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ib_mad_agent* @__get_agent(%struct.ib_umad_file*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
