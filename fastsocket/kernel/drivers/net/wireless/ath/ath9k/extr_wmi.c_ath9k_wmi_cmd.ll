; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i32, i32, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.sk_buff = type { i32 }

@AH_UNPLUGGED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Timeout waiting for WMI command: %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"WMI failure for: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_wmi_cmd(%struct.wmi* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ath_hw*, align 8
  %17 = alloca %struct.ath_common*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.wmi* %0, %struct.wmi** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load %struct.wmi*, %struct.wmi** %9, align 8
  %25 = getelementptr inbounds %struct.wmi, %struct.wmi* %24, i32 0, i32 7
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ath_hw*, %struct.ath_hw** %27, align 8
  store %struct.ath_hw* %28, %struct.ath_hw** %16, align 8
  %29 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %30 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %29)
  store %struct.ath_common* %30, %struct.ath_common** %17, align 8
  store i64 8, i64* %18, align 8
  store i32 0, i32* %22, align 4
  %31 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AH_UNPLUGGED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %139

38:                                               ; preds = %7
  %39 = load i64, i64* %18, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @alloc_skb(i64 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %19, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %139

49:                                               ; preds = %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i32 @skb_reserve(%struct.sk_buff* %50, i64 %51)
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @skb_put(%struct.sk_buff* %59, i64 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %20, align 8
  %63 = load i32*, i32** %20, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @memcpy(i32* %63, i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %58, %55, %49
  %68 = load %struct.wmi*, %struct.wmi** %9, align 8
  %69 = getelementptr inbounds %struct.wmi, %struct.wmi* %68, i32 0, i32 1
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.wmi*, %struct.wmi** %9, align 8
  %72 = getelementptr inbounds %struct.wmi, %struct.wmi* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @EPROTO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %22, align 4
  br label %127

79:                                               ; preds = %67
  %80 = load i32*, i32** %13, align 8
  %81 = load %struct.wmi*, %struct.wmi** %9, align 8
  %82 = getelementptr inbounds %struct.wmi, %struct.wmi* %81, i32 0, i32 5
  store i32* %80, i32** %82, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.wmi*, %struct.wmi** %9, align 8
  %85 = getelementptr inbounds %struct.wmi, %struct.wmi* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load %struct.wmi*, %struct.wmi** %9, align 8
  %87 = getelementptr inbounds %struct.wmi, %struct.wmi* %86, i32 0, i32 3
  %88 = load i64, i64* %23, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.wmi*, %struct.wmi** %9, align 8
  %92 = getelementptr inbounds %struct.wmi, %struct.wmi* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.wmi*, %struct.wmi** %9, align 8
  %94 = getelementptr inbounds %struct.wmi, %struct.wmi* %93, i32 0, i32 3
  %95 = load i64, i64* %23, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.wmi*, %struct.wmi** %9, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @ath9k_wmi_cmd_issue(%struct.wmi* %97, %struct.sk_buff* %98, i32 %99, i64 %100)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %79
  br label %127

105:                                              ; preds = %79
  %106 = load %struct.wmi*, %struct.wmi** %9, align 8
  %107 = getelementptr inbounds %struct.wmi, %struct.wmi* %106, i32 0, i32 2
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @wait_for_completion_timeout(i32* %107, i64 %108)
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %105
  %113 = load %struct.ath_common*, %struct.ath_common** %17, align 8
  %114 = load i32, i32* @WMI, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @wmi_cmd_to_name(i32 %115)
  %117 = call i32 @ath_dbg(%struct.ath_common* %113, i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load %struct.wmi*, %struct.wmi** %9, align 8
  %119 = getelementptr inbounds %struct.wmi, %struct.wmi* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* @ETIMEDOUT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %139

123:                                              ; preds = %105
  %124 = load %struct.wmi*, %struct.wmi** %9, align 8
  %125 = getelementptr inbounds %struct.wmi, %struct.wmi* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  store i32 0, i32* %8, align 4
  br label %139

127:                                              ; preds = %104, %76
  %128 = load %struct.ath_common*, %struct.ath_common** %17, align 8
  %129 = load i32, i32* @WMI, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @wmi_cmd_to_name(i32 %130)
  %132 = call i32 @ath_dbg(%struct.ath_common* %128, i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.wmi*, %struct.wmi** %9, align 8
  %134 = getelementptr inbounds %struct.wmi, %struct.wmi* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  %138 = load i32, i32* %22, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %127, %123, %112, %46, %37
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_wmi_cmd_issue(%struct.wmi*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @wmi_cmd_to_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
