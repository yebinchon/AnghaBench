; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_lq_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_lq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.il_link_quality_cmd = type { i64 }
%struct.il_host_cmd = type { i32, i32, %struct.il_link_quality_cmd*, i32 }

@C_TX_LINK_QUALITY_CMD = common dso_local global i32 0, align 4
@IL_INVALID_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"init LQ command complete, clearing sta addition status for sta %d\0A\00", align 1
@IL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_send_lq_cmd(%struct.il_priv* %0, %struct.il_link_quality_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.il_link_quality_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.il_host_cmd, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.il_link_quality_cmd* %1, %struct.il_link_quality_cmd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %12, i32 0, i32 0
  store i32 8, i32* %13, align 8
  %14 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %12, i32 0, i32 1
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %12, i32 0, i32 2
  %17 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %7, align 8
  store %struct.il_link_quality_cmd* %17, %struct.il_link_quality_cmd** %16, align 8
  %18 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %12, i32 0, i32 3
  %19 = load i32, i32* @C_TX_LINK_QUALITY_CMD, align 4
  store i32 %19, i32* %18, align 8
  %20 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IL_INVALID_STATION, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %123

31:                                               ; preds = %4
  %32 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IL_STA_DRIVER_ACTIVE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %31
  %49 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %123

55:                                               ; preds = %31
  %56 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %57 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %61 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %7, align 8
  %62 = call i32 @il_dump_lq_cmd(%struct.il_priv* %60, %struct.il_link_quality_cmd* %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %12, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CMD_ASYNC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %65, %55
  %72 = phi i1 [ false, %55 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %76 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %7, align 8
  %77 = call i64 @il_is_lq_table_valid(%struct.il_priv* %75, %struct.il_link_quality_cmd* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %81 = call i32 @il_send_cmd(%struct.il_priv* %80, %struct.il_host_cmd* %12)
  store i32 %81, i32* %10, align 4
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CMD_ASYNC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %123

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %93
  %97 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @D_INFO(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %99)
  %101 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 0
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @spin_lock_irqsave(i32* %102, i64 %103)
  %105 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %106
  store i32 %116, i32* %114, align 4
  %117 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %118 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %117, i32 0, i32 0
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %96, %93
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %91, %48, %28
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il_dump_lq_cmd(%struct.il_priv*, %struct.il_link_quality_cmd*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @il_is_lq_table_valid(%struct.il_priv*, %struct.il_link_quality_cmd*) #1

declare dso_local i32 @il_send_cmd(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @D_INFO(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
