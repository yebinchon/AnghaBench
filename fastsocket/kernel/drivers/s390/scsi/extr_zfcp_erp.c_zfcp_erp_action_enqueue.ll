; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, i32, i32, i32, i32, i32 }
%struct.zfcp_port = type { i32 }
%struct.zfcp_unit = type { i32 }
%struct.zfcp_erp_action = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_ERP_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"eracte1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.zfcp_unit*, i8*, i8*)* @zfcp_erp_action_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_action_enqueue(i32 %0, %struct.zfcp_adapter* %1, %struct.zfcp_port* %2, %struct.zfcp_unit* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zfcp_adapter*, align 8
  %10 = alloca %struct.zfcp_port*, align 8
  %11 = alloca %struct.zfcp_unit*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.zfcp_erp_action*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_port* %2, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_unit* %3, %struct.zfcp_unit** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 1, i32* %14, align 4
  store %struct.zfcp_erp_action* null, %struct.zfcp_erp_action** %16, align 8
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %74

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %28 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %29 = call i32 @zfcp_erp_required_act(i32 %25, %struct.zfcp_adapter* %26, %struct.zfcp_port* %27, %struct.zfcp_unit* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %63

33:                                               ; preds = %24
  %34 = load i32, i32* @ZFCP_STATUS_ADAPTER_ERP_PENDING, align 4
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 4
  %37 = call i32 @atomic_set_mask(i32 %34, i32* %36)
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %41 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %42 = call %struct.zfcp_erp_action* @zfcp_erp_setup_act(i32 %38, %struct.zfcp_adapter* %39, %struct.zfcp_port* %40, %struct.zfcp_unit* %41)
  store %struct.zfcp_erp_action* %42, %struct.zfcp_erp_action** %16, align 8
  %43 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %16, align 8
  %44 = icmp ne %struct.zfcp_erp_action* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %63

46:                                               ; preds = %33
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %48 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %16, align 8
  %52 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %51, i32 0, i32 0
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %54 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %53, i32 0, i32 2
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %57 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %56, i32 0, i32 1
  %58 = call i32 @wake_up(i32* %57)
  %59 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %60 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @zfcp_dbf_rec_thread(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %46, %45, %32
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %16, align 8
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %70 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %71 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %72 = call i32 @zfcp_dbf_rec_trigger(i8* %64, i8* %65, i32 %66, i32 %67, %struct.zfcp_erp_action* %68, %struct.zfcp_adapter* %69, %struct.zfcp_port* %70, %struct.zfcp_unit* %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %63, %21
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @zfcp_erp_required_act(i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.zfcp_unit*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local %struct.zfcp_erp_action* @zfcp_erp_setup_act(i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.zfcp_unit*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @zfcp_dbf_rec_thread(i8*, i32) #1

declare dso_local i32 @zfcp_dbf_rec_trigger(i8*, i8*, i32, i32, %struct.zfcp_erp_action*, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.zfcp_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
