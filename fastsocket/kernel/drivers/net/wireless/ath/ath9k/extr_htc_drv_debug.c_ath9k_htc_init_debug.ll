; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_debug.c_ath9k_htc_init_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_debug.c_ath9k_htc_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tgt_int_stats\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@fops_tgt_int_stats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tgt_tx_stats\00", align 1
@fops_tgt_tx_stats = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"tgt_rx_stats\00", align 1
@fops_tgt_rx_stats = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"xmit\00", align 1
@fops_xmit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@fops_recv = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@fops_slot = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@fops_queue = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@fops_debug = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"base_eeprom\00", align 1
@fops_base_eeprom = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"modal_eeprom\00", align 1
@fops_modal_eeprom = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_htc_init_debug(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %11, %struct.ath9k_htc_priv** %5, align 8
  %12 = load i32, i32* @KBUILD_MODNAME, align 4
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @debugfs_create_dir(i32 %12, i32 %19)
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %105

32:                                               ; preds = %1
  %33 = load i32, i32* @S_IRUSR, align 4
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %39 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, %struct.ath9k_htc_priv* %38, i32* @fops_tgt_int_stats)
  %40 = load i32, i32* @S_IRUSR, align 4
  %41 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %46 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44, %struct.ath9k_htc_priv* %45, i32* @fops_tgt_tx_stats)
  %47 = load i32, i32* @S_IRUSR, align 4
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %53 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %51, %struct.ath9k_htc_priv* %52, i32* @fops_tgt_rx_stats)
  %54 = load i32, i32* @S_IRUSR, align 4
  %55 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %60 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %58, %struct.ath9k_htc_priv* %59, i32* @fops_xmit)
  %61 = load i32, i32* @S_IRUSR, align 4
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %67 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %65, %struct.ath9k_htc_priv* %66, i32* @fops_recv)
  %68 = load i32, i32* @S_IRUSR, align 4
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %74 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %68, i32 %72, %struct.ath9k_htc_priv* %73, i32* @fops_slot)
  %75 = load i32, i32* @S_IRUSR, align 4
  %76 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %77 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %81 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %79, %struct.ath9k_htc_priv* %80, i32* @fops_queue)
  %82 = load i32, i32* @S_IRUSR, align 4
  %83 = load i32, i32* @S_IWUSR, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %86 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %90 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32 %88, %struct.ath9k_htc_priv* %89, i32* @fops_debug)
  %91 = load i32, i32* @S_IRUSR, align 4
  %92 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %93 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %97 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %91, i32 %95, %struct.ath9k_htc_priv* %96, i32* @fops_base_eeprom)
  %98 = load i32, i32* @S_IRUSR, align 4
  %99 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %100 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %104 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %98, i32 %102, %struct.ath9k_htc_priv* %103, i32* @fops_modal_eeprom)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %32, %29
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.ath9k_htc_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
