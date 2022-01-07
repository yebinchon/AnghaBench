; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_dealloc_mw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_dealloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32, i32 }
%struct.nes_mr = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i32 }
%struct.nes_hw_cqp_wqe = type { i32 }
%struct.nes_cqp_request = type { i32, i64, i64, i32, i32, i32, %struct.nes_hw_cqp_wqe }

@NES_DBG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get a cqp_request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i32 0, align 4
@NES_CQP_DEALLOCATE_STAG = common dso_local global i32 0, align 4
@NES_CQP_STAG_WQE_STAG_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Waiting for deallocate STag 0x%08X to complete.\0A\00", align 1
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [96 x i8] c"Deallocate STag completed, wait_event_timeout ret = %u, CQP Major:Minor codes = 0x%04X:0x%04X.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mw*)* @nes_dealloc_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_dealloc_mw(%struct.ib_mw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mw*, align 8
  %4 = alloca %struct.nes_mr*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_adapter*, align 8
  %8 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %9 = alloca %struct.nes_cqp_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_mw* %0, %struct.ib_mw** %3, align 8
  %12 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  %13 = call %struct.nes_mr* @to_nesmw(%struct.ib_mw* %12)
  store %struct.nes_mr* %13, %struct.nes_mr** %4, align 8
  %14 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  %15 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nes_vnic* @to_nesvnic(i32 %16)
  store %struct.nes_vnic* %17, %struct.nes_vnic** %5, align 8
  %18 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %19 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %18, i32 0, i32 0
  %20 = load %struct.nes_device*, %struct.nes_device** %19, align 8
  store %struct.nes_device* %20, %struct.nes_device** %6, align 8
  %21 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %22 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %21, i32 0, i32 0
  %23 = load %struct.nes_adapter*, %struct.nes_adapter** %22, align 8
  store %struct.nes_adapter* %23, %struct.nes_adapter** %7, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %25 = call %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device* %24)
  store %struct.nes_cqp_request* %25, %struct.nes_cqp_request** %9, align 8
  %26 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %27 = icmp eq %struct.nes_cqp_request* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @NES_DBG_MR, align 4
  %30 = call i32 (i32, i8*, ...) @nes_debug(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %116

33:                                               ; preds = %1
  %34 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %35 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %37 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %36, i32 0, i32 6
  store %struct.nes_hw_cqp_wqe* %37, %struct.nes_hw_cqp_wqe** %8, align 8
  %38 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %8, align 8
  %39 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %40 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %38, %struct.nes_device* %39)
  %41 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %8, align 8
  %42 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NES_CQP_WQE_OPCODE_IDX, align 4
  %45 = load i32, i32* @NES_CQP_DEALLOCATE_STAG, align 4
  %46 = call i32 @set_wqe_32bit_value(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %8, align 8
  %48 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NES_CQP_STAG_WQE_STAG_IDX, align 4
  %51 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  %52 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_wqe_32bit_value(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %56 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %55, i32 0, i32 5
  %57 = call i32 @atomic_set(i32* %56, i32 2)
  %58 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %59 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %60 = call i32 @nes_post_cqp_request(%struct.nes_device* %58, %struct.nes_cqp_request* %59)
  %61 = load i32, i32* @NES_DBG_MR, align 4
  %62 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  %63 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @nes_debug(i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %67 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %70 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 0, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %75 = call i32 @wait_event_timeout(i32 %68, i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @NES_DBG_MR, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %79 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %82 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @nes_debug(i32 %76, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %77, i64 %80, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %33
  %88 = load i32, i32* @ETIME, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %99

90:                                               ; preds = %33
  %91 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %92 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %101 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %102 = call i32 @nes_put_cqp_request(%struct.nes_device* %100, %struct.nes_cqp_request* %101)
  %103 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %104 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %105 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  %108 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 268435200
  %111 = ashr i32 %110, 8
  %112 = call i32 @nes_free_resource(%struct.nes_adapter* %103, i32 %106, i32 %111)
  %113 = load %struct.nes_mr*, %struct.nes_mr** %4, align 8
  %114 = call i32 @kfree(%struct.nes_mr* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %99, %28
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.nes_mr* @to_nesmw(%struct.ib_mw*) #1

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device*) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nes_post_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @nes_put_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

declare dso_local i32 @nes_free_resource(%struct.nes_adapter*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nes_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
