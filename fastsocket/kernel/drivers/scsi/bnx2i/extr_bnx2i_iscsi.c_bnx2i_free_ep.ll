; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_free_ep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_free_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.bnx2i_endpoint* }
%struct.bnx2i_endpoint = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@bnx2i_resc_lock = common dso_local global i32 0, align 4
@EP_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_endpoint*)* @bnx2i_free_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_free_ep(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.bnx2i_endpoint*, align 8
  %4 = alloca i64, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  %5 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %5, i32 0, i32 0
  %7 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  store %struct.bnx2i_endpoint* %7, %struct.bnx2i_endpoint** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @bnx2i_resc_lock, i64 %8)
  %10 = load i32, i32* @EP_STATE_IDLE, align 4
  %11 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bnx2i_free_iscsi_cid(%struct.TYPE_4__* %26, i64 %29)
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %41, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %44, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %45, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @bnx2i_resc_lock, i64 %46)
  %48 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %49 = call i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint* %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bnx2i_free_iscsi_cid(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
