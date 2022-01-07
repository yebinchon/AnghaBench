; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_init_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to reset TX queue #%d\0A\00", align 1
@AR5K_BWMODE_40MHZ = common dso_local global i64 0, align 8
@AR5K_DCU_GBL_IFS_MISC = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_MISC_TURBO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_init_queues(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AR5K_AR5210, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ath5k_hw_reset_tx_queue(%struct.ath5k_hw* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %13

36:                                               ; preds = %13
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %39 = call i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %36
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AR5K_BWMODE_40MHZ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %48 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC, align 4
  %49 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC_TURBO_MODE, align 4
  %50 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %58 = call i32 @ath5k_hw_get_default_slottime(%struct.ath5k_hw* %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ath5k_hw_reset_tx_queue(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

declare dso_local i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_get_default_slottime(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
