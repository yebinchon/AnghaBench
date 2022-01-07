; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.zfcp_adapter*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.zfcp_adapter = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ZFCP_STATUS_ERP_LOWMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"eractd1\00", align 1
@ZFCP_STATUS_COMMON_ERP_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*)* @zfcp_erp_action_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_action_dequeue(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %4 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %4, i32 0, i32 2
  %6 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  store %struct.zfcp_adapter* %6, %struct.zfcp_adapter** %3, align 8
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %25 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %17, %1
  %29 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %30 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %29, i32 0, i32 5
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %33 = call i32 @zfcp_dbf_rec_action(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_erp_action* %32)
  %34 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %35 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %58 [
    i32 128, label %37
    i32 129, label %44
    i32 130, label %44
    i32 131, label %51
  ]

37:                                               ; preds = %28
  %38 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %39 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %40 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @atomic_clear_mask(i32 %38, i32* %42)
  br label %58

44:                                               ; preds = %28, %28
  %45 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %46 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %47 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @atomic_clear_mask(i32 %45, i32* %49)
  br label %58

51:                                               ; preds = %28
  %52 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %53 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %54 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %53, i32 0, i32 2
  %55 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %54, align 8
  %56 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %55, i32 0, i32 0
  %57 = call i32 @atomic_clear_mask(i32 %52, i32* %56)
  br label %58

58:                                               ; preds = %28, %51, %44, %37
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @zfcp_dbf_rec_action(i8*, %struct.zfcp_erp_action*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
