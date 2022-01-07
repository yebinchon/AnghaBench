; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_find_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_find_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_ctx = type { %struct.scsi_cmnd* }
%struct.pvscsi_adapter = type { i64, %struct.pvscsi_ctx* }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pvscsi_ctx* (%struct.pvscsi_adapter*, %struct.scsi_cmnd*)* @pvscsi_find_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pvscsi_ctx* @pvscsi_find_context(%struct.pvscsi_adapter* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.pvscsi_ctx*, align 8
  %4 = alloca %struct.pvscsi_adapter*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.pvscsi_ctx*, align 8
  %7 = alloca %struct.pvscsi_ctx*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %8 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %8, i32 0, i32 1
  %10 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %9, align 8
  %11 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %10, i64 %13
  store %struct.pvscsi_ctx* %14, %struct.pvscsi_ctx** %7, align 8
  %15 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %15, i32 0, i32 1
  %17 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %16, align 8
  store %struct.pvscsi_ctx* %17, %struct.pvscsi_ctx** %6, align 8
  br label %18

18:                                               ; preds = %31, %2
  %19 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %20 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %21 = icmp ult %struct.pvscsi_ctx* %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %23, i32 0, i32 0
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %24, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %27 = icmp eq %struct.scsi_cmnd* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  store %struct.pvscsi_ctx* %29, %struct.pvscsi_ctx** %3, align 8
  br label %35

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %32, i32 1
  store %struct.pvscsi_ctx* %33, %struct.pvscsi_ctx** %6, align 8
  br label %18

34:                                               ; preds = %18
  store %struct.pvscsi_ctx* null, %struct.pvscsi_ctx** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %3, align 8
  ret %struct.pvscsi_ctx* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
