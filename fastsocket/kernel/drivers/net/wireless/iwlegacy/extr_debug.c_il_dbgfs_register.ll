; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_debug.c_il_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_debug.c_il_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_6__*, i32, %struct.dentry*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@nvm = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@sram = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@stations = common dso_local global i32 0, align 4
@channels = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@qos = common dso_local global i32 0, align 4
@disable_ht40 = common dso_local global i32 0, align 4
@rx_stats = common dso_local global i32 0, align 4
@tx_stats = common dso_local global i32 0, align 4
@rx_queue = common dso_local global i32 0, align 4
@tx_queue = common dso_local global i32 0, align 4
@power_save_status = common dso_local global i32 0, align 4
@clear_ucode_stats = common dso_local global i32 0, align 4
@clear_traffic_stats = common dso_local global i32 0, align 4
@fh_reg = common dso_local global i32 0, align 4
@missed_beacon = common dso_local global i32 0, align 4
@force_reset = common dso_local global i32 0, align 4
@ucode_rx_stats = common dso_local global i32 0, align 4
@ucode_tx_stats = common dso_local global i32 0, align 4
@ucode_general_stats = common dso_local global i32 0, align 4
@sensitivity = common dso_local global i32 0, align 4
@chain_noise = common dso_local global i32 0, align 4
@rxon_flags = common dso_local global i32 0, align 4
@rxon_filter_flags = common dso_local global i32 0, align 4
@wd_timeout = common dso_local global i32 0, align 4
@disable_sensitivity = common dso_local global i32 0, align 4
@disable_chain_noise = common dso_local global i32 0, align 4
@disable_tx_power = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Can't create the debugfs directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_dbgfs_register(%struct.il_priv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call %struct.dentry* @debugfs_create_dir(i8* %18, %struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = icmp ne %struct.dentry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %213

26:                                               ; preds = %2
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 4
  store %struct.dentry* %27, %struct.dentry** %29, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %30)
  store %struct.dentry* %31, %struct.dentry** %8, align 8
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %207

35:                                               ; preds = %26
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %36)
  store %struct.dentry* %37, %struct.dentry** %9, align 8
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = icmp ne %struct.dentry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %207

41:                                               ; preds = %35
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %42)
  store %struct.dentry* %43, %struct.dentry** %10, align 8
  %44 = load %struct.dentry*, %struct.dentry** %10, align 8
  %45 = icmp ne %struct.dentry* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %207

47:                                               ; preds = %41
  %48 = load i32, i32* @nvm, align 4
  %49 = load %struct.dentry*, %struct.dentry** %8, align 8
  %50 = load i32, i32* @S_IRUSR, align 4
  %51 = call i32 @DEBUGFS_ADD_FILE(i32 %48, %struct.dentry* %49, i32 %50)
  %52 = load i32, i32* @sram, align 4
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = load i32, i32* @S_IWUSR, align 4
  %55 = load i32, i32* @S_IRUSR, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @DEBUGFS_ADD_FILE(i32 %52, %struct.dentry* %53, i32 %56)
  %58 = load i32, i32* @stations, align 4
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = load i32, i32* @S_IRUSR, align 4
  %61 = call i32 @DEBUGFS_ADD_FILE(i32 %58, %struct.dentry* %59, i32 %60)
  %62 = load i32, i32* @channels, align 4
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = load i32, i32* @S_IRUSR, align 4
  %65 = call i32 @DEBUGFS_ADD_FILE(i32 %62, %struct.dentry* %63, i32 %64)
  %66 = load i32, i32* @status, align 4
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = load i32, i32* @S_IRUSR, align 4
  %69 = call i32 @DEBUGFS_ADD_FILE(i32 %66, %struct.dentry* %67, i32 %68)
  %70 = load i32, i32* @interrupt, align 4
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = load i32, i32* @S_IWUSR, align 4
  %73 = load i32, i32* @S_IRUSR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @DEBUGFS_ADD_FILE(i32 %70, %struct.dentry* %71, i32 %74)
  %76 = load i32, i32* @qos, align 4
  %77 = load %struct.dentry*, %struct.dentry** %8, align 8
  %78 = load i32, i32* @S_IRUSR, align 4
  %79 = call i32 @DEBUGFS_ADD_FILE(i32 %76, %struct.dentry* %77, i32 %78)
  %80 = load i32, i32* @disable_ht40, align 4
  %81 = load %struct.dentry*, %struct.dentry** %8, align 8
  %82 = load i32, i32* @S_IWUSR, align 4
  %83 = load i32, i32* @S_IRUSR, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @DEBUGFS_ADD_FILE(i32 %80, %struct.dentry* %81, i32 %84)
  %86 = load i32, i32* @rx_stats, align 4
  %87 = load %struct.dentry*, %struct.dentry** %10, align 8
  %88 = load i32, i32* @S_IRUSR, align 4
  %89 = call i32 @DEBUGFS_ADD_FILE(i32 %86, %struct.dentry* %87, i32 %88)
  %90 = load i32, i32* @tx_stats, align 4
  %91 = load %struct.dentry*, %struct.dentry** %10, align 8
  %92 = load i32, i32* @S_IRUSR, align 4
  %93 = call i32 @DEBUGFS_ADD_FILE(i32 %90, %struct.dentry* %91, i32 %92)
  %94 = load i32, i32* @rx_queue, align 4
  %95 = load %struct.dentry*, %struct.dentry** %10, align 8
  %96 = load i32, i32* @S_IRUSR, align 4
  %97 = call i32 @DEBUGFS_ADD_FILE(i32 %94, %struct.dentry* %95, i32 %96)
  %98 = load i32, i32* @tx_queue, align 4
  %99 = load %struct.dentry*, %struct.dentry** %10, align 8
  %100 = load i32, i32* @S_IRUSR, align 4
  %101 = call i32 @DEBUGFS_ADD_FILE(i32 %98, %struct.dentry* %99, i32 %100)
  %102 = load i32, i32* @power_save_status, align 4
  %103 = load %struct.dentry*, %struct.dentry** %10, align 8
  %104 = load i32, i32* @S_IRUSR, align 4
  %105 = call i32 @DEBUGFS_ADD_FILE(i32 %102, %struct.dentry* %103, i32 %104)
  %106 = load i32, i32* @clear_ucode_stats, align 4
  %107 = load %struct.dentry*, %struct.dentry** %10, align 8
  %108 = load i32, i32* @S_IWUSR, align 4
  %109 = call i32 @DEBUGFS_ADD_FILE(i32 %106, %struct.dentry* %107, i32 %108)
  %110 = load i32, i32* @clear_traffic_stats, align 4
  %111 = load %struct.dentry*, %struct.dentry** %10, align 8
  %112 = load i32, i32* @S_IWUSR, align 4
  %113 = call i32 @DEBUGFS_ADD_FILE(i32 %110, %struct.dentry* %111, i32 %112)
  %114 = load i32, i32* @fh_reg, align 4
  %115 = load %struct.dentry*, %struct.dentry** %10, align 8
  %116 = load i32, i32* @S_IRUSR, align 4
  %117 = call i32 @DEBUGFS_ADD_FILE(i32 %114, %struct.dentry* %115, i32 %116)
  %118 = load i32, i32* @missed_beacon, align 4
  %119 = load %struct.dentry*, %struct.dentry** %10, align 8
  %120 = load i32, i32* @S_IWUSR, align 4
  %121 = call i32 @DEBUGFS_ADD_FILE(i32 %118, %struct.dentry* %119, i32 %120)
  %122 = load i32, i32* @force_reset, align 4
  %123 = load %struct.dentry*, %struct.dentry** %10, align 8
  %124 = load i32, i32* @S_IWUSR, align 4
  %125 = load i32, i32* @S_IRUSR, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @DEBUGFS_ADD_FILE(i32 %122, %struct.dentry* %123, i32 %126)
  %128 = load i32, i32* @ucode_rx_stats, align 4
  %129 = load %struct.dentry*, %struct.dentry** %10, align 8
  %130 = load i32, i32* @S_IRUSR, align 4
  %131 = call i32 @DEBUGFS_ADD_FILE(i32 %128, %struct.dentry* %129, i32 %130)
  %132 = load i32, i32* @ucode_tx_stats, align 4
  %133 = load %struct.dentry*, %struct.dentry** %10, align 8
  %134 = load i32, i32* @S_IRUSR, align 4
  %135 = call i32 @DEBUGFS_ADD_FILE(i32 %132, %struct.dentry* %133, i32 %134)
  %136 = load i32, i32* @ucode_general_stats, align 4
  %137 = load %struct.dentry*, %struct.dentry** %10, align 8
  %138 = load i32, i32* @S_IRUSR, align 4
  %139 = call i32 @DEBUGFS_ADD_FILE(i32 %136, %struct.dentry* %137, i32 %138)
  %140 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %141 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %47
  %147 = load i32, i32* @sensitivity, align 4
  %148 = load %struct.dentry*, %struct.dentry** %10, align 8
  %149 = load i32, i32* @S_IRUSR, align 4
  %150 = call i32 @DEBUGFS_ADD_FILE(i32 %147, %struct.dentry* %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %47
  %152 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %153 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load i32, i32* @chain_noise, align 4
  %160 = load %struct.dentry*, %struct.dentry** %10, align 8
  %161 = load i32, i32* @S_IRUSR, align 4
  %162 = call i32 @DEBUGFS_ADD_FILE(i32 %159, %struct.dentry* %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %151
  %164 = load i32, i32* @rxon_flags, align 4
  %165 = load %struct.dentry*, %struct.dentry** %10, align 8
  %166 = load i32, i32* @S_IWUSR, align 4
  %167 = call i32 @DEBUGFS_ADD_FILE(i32 %164, %struct.dentry* %165, i32 %166)
  %168 = load i32, i32* @rxon_filter_flags, align 4
  %169 = load %struct.dentry*, %struct.dentry** %10, align 8
  %170 = load i32, i32* @S_IWUSR, align 4
  %171 = call i32 @DEBUGFS_ADD_FILE(i32 %168, %struct.dentry* %169, i32 %170)
  %172 = load i32, i32* @wd_timeout, align 4
  %173 = load %struct.dentry*, %struct.dentry** %10, align 8
  %174 = load i32, i32* @S_IWUSR, align 4
  %175 = call i32 @DEBUGFS_ADD_FILE(i32 %172, %struct.dentry* %173, i32 %174)
  %176 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %177 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %176, i32 0, i32 2
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %163
  %183 = load i32, i32* @disable_sensitivity, align 4
  %184 = load %struct.dentry*, %struct.dentry** %9, align 8
  %185 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %186 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %185, i32 0, i32 3
  %187 = call i32 @DEBUGFS_ADD_BOOL(i32 %183, %struct.dentry* %184, i32* %186)
  br label %188

188:                                              ; preds = %182, %163
  %189 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %190 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %189, i32 0, i32 2
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load i32, i32* @disable_chain_noise, align 4
  %197 = load %struct.dentry*, %struct.dentry** %9, align 8
  %198 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %199 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %198, i32 0, i32 1
  %200 = call i32 @DEBUGFS_ADD_BOOL(i32 %196, %struct.dentry* %197, i32* %199)
  br label %201

201:                                              ; preds = %195, %188
  %202 = load i32, i32* @disable_tx_power, align 4
  %203 = load %struct.dentry*, %struct.dentry** %9, align 8
  %204 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %205 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %204, i32 0, i32 0
  %206 = call i32 @DEBUGFS_ADD_BOOL(i32 %202, %struct.dentry* %203, i32* %205)
  store i32 0, i32* %3, align 4
  br label %213

207:                                              ; preds = %46, %40, %34
  %208 = call i32 @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %209 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %210 = call i32 @il_dbgfs_unregister(%struct.il_priv* %209)
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %207, %201, %23
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @DEBUGFS_ADD_FILE(i32, %struct.dentry*, i32) #1

declare dso_local i32 @DEBUGFS_ADD_BOOL(i32, %struct.dentry*, i32*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il_dbgfs_unregister(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
