; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_remove_dynamic_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_remove_dynamic_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_key_conf = type { i64, i32 }
%struct.il_addsta_cmd = type { i32 }

@STA_KEY_FLG_KEYID_POS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Remove dynamic key: idx=%d sta=%d\0A\00", align 1
@STA_KEY_FLG_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Removing wrong key %d 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"idx %d not used in uCode key table.\0A\00", align 1
@STA_KEY_FLG_NO_ENC = common dso_local global i32 0, align 4
@STA_MODIFY_KEY_MASK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Not sending C_ADD_STA command because RFKILL enabled.\0A\00", align 1
@CMD_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_remove_dynamic_key(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.ieee80211_key_conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.il_addsta_cmd, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 4
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @STA_KEY_FLG_KEYID_POS, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 3
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 (i8*, ...) @D_WEP(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %3
  %50 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  store i32 0, i32* %4, align 4
  br label %181

54:                                               ; preds = %3
  %55 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @STA_KEY_FLG_INVALID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %54
  %68 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @IL_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %70, i32 %71)
  %73 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %74 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 0, i32* %4, align 4
  br label %181

77:                                               ; preds = %54
  %78 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %79 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 2
  %89 = call i32 @test_and_clear_bit(i32 %86, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %77
  %92 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %93 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IL_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %91, %77
  %103 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = call i32 @memset(%struct.TYPE_9__* %108, i32 0, i32 4)
  %110 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %111 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = call i32 @memset(%struct.TYPE_9__* %116, i32 0, i32 4)
  %118 = load i32, i32* @STA_KEY_FLG_NO_ENC, align 4
  %119 = load i32, i32* @STA_KEY_FLG_INVALID, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %122 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 %120, i32* %128, align 4
  %129 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %130 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %133 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %131, i32* %139, align 4
  %140 = load i32, i32* @STA_MODIFY_KEY_MASK, align 4
  %141 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %142 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i32 %140, i32* %148, align 4
  %149 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %150 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %151 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %150, i32 0, i32 1
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i32 %149, i32* %156, align 4
  %157 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %158 = call i64 @il_is_rfkill(%struct.il_priv* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %102
  %161 = call i32 (i8*, ...) @D_WEP(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %163 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %162, i32 0, i32 0
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  store i32 0, i32* %4, align 4
  br label %181

166:                                              ; preds = %102
  %167 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %168 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = call i32 @memcpy(%struct.il_addsta_cmd* %11, %struct.TYPE_10__* %172, i32 4)
  %174 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %175 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %174, i32 0, i32 0
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %179 = load i32, i32* @CMD_SYNC, align 4
  %180 = call i32 @il_send_add_sta(%struct.il_priv* %178, %struct.il_addsta_cmd* %11, i32 %179)
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %166, %160, %67, %49
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @D_WEP(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IL_WARN(i8*, i64, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i32 @memcpy(%struct.il_addsta_cmd*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @il_send_add_sta(%struct.il_priv*, %struct.il_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
