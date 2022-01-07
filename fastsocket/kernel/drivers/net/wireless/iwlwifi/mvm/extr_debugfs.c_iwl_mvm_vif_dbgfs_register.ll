; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_vif_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_vif_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.iwl_mvm_vif = type { i32, %struct.TYPE_15__*, %struct.iwl_mvm* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"iwlmvm\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to create debugfs directory under %s\0A\00", align 1
@mac_params = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"../../../%s/%s/%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Can't create debugfs symbolic link under %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't create debugfs entity\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_vif_dbgfs_register(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca [100 x i8], align 16
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call %struct.TYPE_15__* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.dentry* %17)
  %19 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %19, i32 0, i32 1
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %20, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %22, i32 0, i32 2
  store %struct.iwl_mvm* %21, %struct.iwl_mvm** %23, align 8
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %16
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %94

35:                                               ; preds = %16
  %36 = load i32, i32* @mac_params, align 4
  %37 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load i32, i32* @S_IRUSR, align 4
  %41 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %36, %struct.TYPE_15__* %39, i32 %40)
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @snprintf(i8* %42, i32 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* %56, i8* %60, i8* %66)
  %68 = load %struct.dentry*, %struct.dentry** %5, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %76 = call i32 @debugfs_create_symlink(i8* %71, i32 %74, i8* %75)
  %77 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %35
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %85 = load %struct.dentry*, %struct.dentry** %5, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %83, %35
  br label %94

91:                                               ; No predecessors!
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %93 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %90, %28, %15
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.TYPE_15__* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @debugfs_create_symlink(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
