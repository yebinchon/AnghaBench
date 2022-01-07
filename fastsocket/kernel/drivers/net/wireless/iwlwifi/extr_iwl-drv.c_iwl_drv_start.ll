; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_drv_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_drv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { i8*, i8*, %struct.iwl_drv*, i32, i32, i32, %struct.iwl_cfg* }
%struct.iwl_trans = type { i8*, i8*, %struct.iwl_trans*, i32, i32, i32, %struct.iwl_cfg* }
%struct.iwl_cfg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't request the fw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@iwl_dbgfs_root = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iwl_drv* @iwl_drv_start(%struct.iwl_trans* %0, %struct.iwl_cfg* %1) #0 {
  %3 = alloca %struct.iwl_drv*, align 8
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_cfg*, align 8
  %6 = alloca %struct.iwl_drv*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.iwl_trans* @kzalloc(i32 48, i32 %8)
  %10 = bitcast %struct.iwl_trans* %9 to %struct.iwl_drv*
  store %struct.iwl_drv* %10, %struct.iwl_drv** %6, align 8
  %11 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %12 = icmp ne %struct.iwl_drv* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.iwl_drv* null, %struct.iwl_drv** %3, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %16 = bitcast %struct.iwl_trans* %15 to %struct.iwl_drv*
  %17 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %17, i32 0, i32 2
  store %struct.iwl_drv* %16, %struct.iwl_drv** %18, align 8
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.iwl_cfg*, %struct.iwl_cfg** %5, align 8
  %25 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %25, i32 0, i32 6
  store %struct.iwl_cfg* %24, %struct.iwl_cfg** %26, align 8
  %27 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %27, i32 0, i32 5
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %31 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %30, i32 0, i32 4
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %34 = bitcast %struct.iwl_drv* %33 to %struct.iwl_trans*
  %35 = call i32 @iwl_request_firmware(%struct.iwl_trans* %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %14
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %40 = call i32 @IWL_ERR(%struct.iwl_trans* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %43

41:                                               ; preds = %14
  %42 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  store %struct.iwl_drv* %42, %struct.iwl_drv** %3, align 8
  br label %50

43:                                               ; preds = %38
  %44 = load %struct.iwl_drv*, %struct.iwl_drv** %6, align 8
  %45 = bitcast %struct.iwl_drv* %44 to %struct.iwl_trans*
  %46 = call i32 @kfree(%struct.iwl_trans* %45)
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.iwl_trans* @ERR_PTR(i32 %47)
  %49 = bitcast %struct.iwl_trans* %48 to %struct.iwl_drv*
  store %struct.iwl_drv* %49, %struct.iwl_drv** %3, align 8
  br label %50

50:                                               ; preds = %43, %41, %13
  %51 = load %struct.iwl_drv*, %struct.iwl_drv** %3, align 8
  ret %struct.iwl_drv* %51
}

declare dso_local %struct.iwl_trans* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @iwl_request_firmware(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @kfree(%struct.iwl_trans*) #1

declare dso_local %struct.iwl_trans* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
