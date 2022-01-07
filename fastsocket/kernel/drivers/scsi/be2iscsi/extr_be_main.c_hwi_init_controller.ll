; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__*, %struct.hwi_controller* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { i32 }

@HWI_MEM_ADDN_CONTEXT = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BM_%d :  phwi_ctrlr->phwi_ctxt=%p\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"BM_%d : HWI_MEM_ADDN_CONTEXT is more than one element.Failing to load\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"BM_%d : hwi_init_async_pdu_ctx failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"BM_%d : hwi_init_controller failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @hwi_init_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwi_init_controller(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.hwi_controller*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 1
  %7 = load %struct.hwi_controller*, %struct.hwi_controller** %6, align 8
  store %struct.hwi_controller* %7, %struct.hwi_controller** %4, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* @HWI_MEM_ADDN_CONTEXT, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 1, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* @HWI_MEM_ADDN_CONTEXT, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.hwi_context_memory*
  %28 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %29 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %28, i32 0, i32 0
  store %struct.hwi_context_memory* %27, %struct.hwi_context_memory** %29, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %33 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %34 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %33, i32 0, i32 0
  %35 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %34, align 8
  %36 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.hwi_context_memory* %35)
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %41 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %16
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = call i32 @iscsi_init_global_templates(%struct.beiscsi_hba* %45)
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %48 = call i64 @beiscsi_init_wrb_handle(%struct.beiscsi_hba* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %76

53:                                               ; preds = %44
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %55 = call i64 @hwi_init_async_pdu_ctx(%struct.beiscsi_hba* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %61 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %76

64:                                               ; preds = %53
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %66 = call i64 @hwi_init_port(%struct.beiscsi_hba* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %72 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %68, %57, %50, %37
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @iscsi_init_global_templates(%struct.beiscsi_hba*) #1

declare dso_local i64 @beiscsi_init_wrb_handle(%struct.beiscsi_hba*) #1

declare dso_local i64 @hwi_init_async_pdu_ctx(%struct.beiscsi_hba*) #1

declare dso_local i64 @hwi_init_port(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
