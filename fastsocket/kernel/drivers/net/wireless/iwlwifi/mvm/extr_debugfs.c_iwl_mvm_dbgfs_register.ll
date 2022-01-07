; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_12__*, %struct.dentry* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.dentry = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@tx_flush = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@sta_drain = common dso_local global i32 0, align 4
@sram = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@stations = common dso_local global i32 0, align 4
@bt_notif = common dso_local global i32 0, align 4
@power_down_allow = common dso_local global i32 0, align 4
@power_down_d3_allow = common dso_local global i32 0, align 4
@fw_restart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"../../%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"iwlwifi\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Can't create the mvm debugfs directory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_dbgfs_register(%struct.iwl_mvm* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca [100 x i8], align 16
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %5, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 1
  store %struct.dentry* %7, %struct.dentry** %9, align 8
  %10 = load i32, i32* @tx_flush, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 1
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %14 = load i32, i32* @S_IWUSR, align 4
  %15 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %10, %struct.dentry* %13, i32 %14)
  %16 = load i32, i32* @sta_drain, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 1
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  %20 = load i32, i32* @S_IWUSR, align 4
  %21 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %16, %struct.dentry* %19, i32 %20)
  %22 = load i32, i32* @sram, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 1
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = load i32, i32* @S_IRUSR, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %22, %struct.dentry* %25, i32 %28)
  %30 = load i32, i32* @stations, align 4
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = load i32, i32* @S_IRUSR, align 4
  %33 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %30, %struct.dentry* %31, i32 %32)
  %34 = load i32, i32* @bt_notif, align 4
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = load i32, i32* @S_IRUSR, align 4
  %37 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %34, %struct.dentry* %35, i32 %36)
  %38 = load i32, i32* @power_down_allow, align 4
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 1
  %41 = load %struct.dentry*, %struct.dentry** %40, align 8
  %42 = load i32, i32* @S_IWUSR, align 4
  %43 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %38, %struct.dentry* %41, i32 %42)
  %44 = load i32, i32* @power_down_d3_allow, align 4
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 1
  %47 = load %struct.dentry*, %struct.dentry** %46, align 8
  %48 = load i32, i32* @S_IWUSR, align 4
  %49 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %44, %struct.dentry* %47, i32 %48)
  %50 = load i32, i32* @fw_restart, align 4
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 1
  %53 = load %struct.dentry*, %struct.dentry** %52, align 8
  %54 = load i32, i32* @S_IWUSR, align 4
  %55 = call i32 @MVM_DEBUGFS_ADD_FILE(i32 %50, %struct.dentry* %53, i32 %54)
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @snprintf(i8* %56, i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %70)
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %80 = call i32 @debugfs_create_symlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %2
  br label %84

83:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

84:                                               ; preds = %82
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %86 = call i32 @IWL_ERR(%struct.iwl_mvm* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @MVM_DEBUGFS_ADD_FILE(i32, %struct.dentry*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @debugfs_create_symlink(i8*, i32, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
