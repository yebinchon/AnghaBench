; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { %struct.cxgbi_ddp_info* }
%struct.cxgbi_ddp_info = type { i32 }

@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cdev 0x%p, release ddp 0x%p.\0A\00", align 1
@ddp_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_ddp_cleanup(%struct.cxgbi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.cxgbi_ddp_info*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  %5 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %6 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %5, i32 0, i32 0
  %7 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %6, align 8
  store %struct.cxgbi_ddp_info* %7, %struct.cxgbi_ddp_info** %4, align 8
  %8 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %9 = shl i32 1, %8
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %11 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %4, align 8
  %12 = call i32 @log_debug(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %10, %struct.cxgbi_ddp_info* %11)
  %13 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %14 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %13, i32 0, i32 0
  store %struct.cxgbi_ddp_info* null, %struct.cxgbi_ddp_info** %14, align 8
  %15 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %4, align 8
  %16 = icmp ne %struct.cxgbi_ddp_info* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %4, align 8
  %19 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %18, i32 0, i32 0
  %20 = load i32, i32* @ddp_destroy, align 4
  %21 = call i32 @kref_put(i32* %19, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, %struct.cxgbi_ddp_info*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
