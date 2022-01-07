; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"BM_%d : beiscsi_dev_probe - Failed inbeiscsi_init_controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"BM_%d : beiscsi_dev_probe - Failed inbeiscsi_init_sgl_handle\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"BM_%d : Failed in hba_setup_cid_tbls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_init_port(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = call i32 @beiscsi_init_controller(%struct.beiscsi_hba* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = load i32, i32* @KERN_ERR, align 4
  %12 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %13 = call i32 @beiscsi_log(%struct.beiscsi_hba* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = call i32 @beiscsi_init_sgl_handle(%struct.beiscsi_hba* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %24 = call i32 @beiscsi_log(%struct.beiscsi_hba* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %27 = call i64 @hba_setup_cid_tbls(%struct.beiscsi_hba* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %33 = call i32 @beiscsi_log(%struct.beiscsi_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kfree(i32 %40)
  br label %44

42:                                               ; preds = %25
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %29, %20
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = call i32 @hwi_cleanup(%struct.beiscsi_hba* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %42, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @beiscsi_init_controller(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_init_sgl_handle(%struct.beiscsi_hba*) #1

declare dso_local i64 @hba_setup_cid_tbls(%struct.beiscsi_hba*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @hwi_cleanup(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
