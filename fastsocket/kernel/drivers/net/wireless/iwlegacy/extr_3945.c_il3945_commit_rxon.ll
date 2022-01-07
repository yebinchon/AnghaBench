; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_commit_rxon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_commit_rxon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.il_priv = type { i32, %struct.il3945_rxon_cmd, i32, i32 }
%struct.il3945_rxon_cmd = type { i32, i32, i64, i64, i32, i32 }

@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RXON_FLG_TSF2HOST_MSK = common dso_local global i32 0, align 4
@RXON_FLG_DIS_DIV_MSK = common dso_local global i32 0, align 4
@RXON_FLG_ANT_SEL_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid RXON configuration.  Not committing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Error setting RXON_ASSOC configuration (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Toggling associated bit on current RXON\0A\00", align 1
@C_RXON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Error clearing ASSOC_MSK on current configuration (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Sending RXON\0A* with%s RXON_FILTER_ASSOC_MSK\0A* channel = %d\0A* bssid = %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@il3945_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Error setting new configuration (%d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Error setting Tx power (%d).\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Error setting HW rate table: %02X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_commit_rxon(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il3945_rxon_cmd*, align 8
  %5 = alloca %struct.il3945_rxon_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 1
  %10 = bitcast %struct.il3945_rxon_cmd* %9 to i8*
  %11 = bitcast i8* %10 to %struct.il3945_rxon_cmd*
  store %struct.il3945_rxon_cmd* %11, %struct.il3945_rxon_cmd** %4, align 8
  %12 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 3
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.il3945_rxon_cmd*
  store %struct.il3945_rxon_cmd* %15, %struct.il3945_rxon_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @S_EXIT_PENDING, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 2
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %195

33:                                               ; preds = %1
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = call i32 @il_is_alive(%struct.il_priv* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %195

38:                                               ; preds = %33
  %39 = load i32, i32* @RXON_FLG_TSF2HOST_MSK, align 4
  %40 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @RXON_FLG_DIS_DIV_MSK, align 4
  %45 = load i32, i32* @RXON_FLG_ANT_SEL_MSK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = call i32 @il3945_get_antenna_flags(%struct.il_priv* %52)
  %54 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %59 = call i32 @il_check_rxon_cmd(%struct.il_priv* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %38
  %63 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %195

66:                                               ; preds = %38
  %67 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %68 = call i32 @il_full_rxon_required(%struct.il_priv* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %66
  %71 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %72 = call i32 @il_send_rxon_assoc(%struct.il_priv* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %195

79:                                               ; preds = %70
  %80 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %4, align 8
  %81 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %82 = call i32 @memcpy(%struct.il3945_rxon_cmd* %80, %struct.il3945_rxon_cmd* %81, i32 32)
  %83 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %85 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @il_set_tx_power(%struct.il_priv* %83, i32 %86, i32 0)
  store i32 0, i32* %2, align 4
  br label %195

88:                                               ; preds = %66
  %89 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %90 = call i64 @il_is_associated(%struct.il_priv* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %128

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %108 = load i32, i32* @C_RXON, align 4
  %109 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %110 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %109, i32 0, i32 1
  %111 = call i32 @il_send_cmd_pdu(%struct.il_priv* %107, i32 %108, i32 32, %struct.il3945_rxon_cmd* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %95
  %115 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %116 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %195

123:                                              ; preds = %95
  %124 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %125 = call i32 @il_clear_ucode_stations(%struct.il_priv* %124)
  %126 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %127 = call i32 @il_restore_stations(%struct.il_priv* %126)
  br label %128

128:                                              ; preds = %123, %92, %88
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %133 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %134 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %138 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* %132, i32 %136, i32 %139)
  %141 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %142 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %144 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @il3945_mod_params, i32 0, i32 0), align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @il_set_rxon_hwcrypto(%struct.il_priv* %145, i32 %149)
  %151 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %152 = load i32, i32* @C_RXON, align 4
  %153 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %154 = call i32 @il_send_cmd_pdu(%struct.il_priv* %151, i32 %152, i32 32, %struct.il3945_rxon_cmd* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %128
  %158 = load i32, i32* %6, align 4
  %159 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %2, align 4
  br label %195

161:                                              ; preds = %128
  %162 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %4, align 8
  %163 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %164 = call i32 @memcpy(%struct.il3945_rxon_cmd* %162, %struct.il3945_rxon_cmd* %163, i32 32)
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %161
  %168 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %169 = call i32 @il_clear_ucode_stations(%struct.il_priv* %168)
  %170 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %171 = call i32 @il_restore_stations(%struct.il_priv* %170)
  br label %172

172:                                              ; preds = %167, %161
  %173 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %174 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %175 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @il_set_tx_power(%struct.il_priv* %173, i32 %176, i32 1)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load i32, i32* %6, align 4
  %182 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %195

184:                                              ; preds = %172
  %185 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %186 = call i32 @il3945_init_hw_rate_table(%struct.il_priv* %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load i32, i32* %6, align 4
  %191 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %195

194:                                              ; preds = %184
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %189, %180, %157, %114, %79, %75, %62, %37, %30
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_is_alive(%struct.il_priv*) #1

declare dso_local i32 @il3945_get_antenna_flags(%struct.il_priv*) #1

declare dso_local i32 @il_check_rxon_cmd(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @il_full_rxon_required(%struct.il_priv*) #1

declare dso_local i32 @il_send_rxon_assoc(%struct.il_priv*) #1

declare dso_local i32 @memcpy(%struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd*, i32) #1

declare dso_local i32 @il_set_tx_power(%struct.il_priv*, i32, i32) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il3945_rxon_cmd*) #1

declare dso_local i32 @il_clear_ucode_stations(%struct.il_priv*) #1

declare dso_local i32 @il_restore_stations(%struct.il_priv*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @il_set_rxon_hwcrypto(%struct.il_priv*, i32) #1

declare dso_local i32 @il3945_init_hw_rate_table(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
