; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_send_static_wepkey_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_send_static_wepkey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.iwl_wep_cmd = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32*, i64 }
%struct.iwl_host_cmd = type { i64*, i32, i32, i32 }

@WEP_KEYS_MAX = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i32 0, align 4
@WEP_KEY_WEP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*, i32)* @iwl_send_static_wepkey_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_static_wepkey_cmd(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iwl_wep_cmd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.iwl_host_cmd, align 8
  %15 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @WEP_KEYS_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 16, %18
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = bitcast i32* %21 to %struct.iwl_wep_cmd*
  store %struct.iwl_wep_cmd* %22, %struct.iwl_wep_cmd** %12, align 8
  store i64 16, i64* %13, align 8
  %23 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  store i64* null, i64** %23, align 8
  %24 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 1
  %25 = load i32, i32* @CMD_SYNC, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 2
  %27 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %28 = ptrtoint %struct.iwl_wep_cmd* %27 to i32
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 3
  %30 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %31 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %29, align 8
  %33 = call i32 (...) @might_sleep()
  %34 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* @WEP_KEYS_MAX, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = add i64 %35, %38
  %40 = call i32 @memset(%struct.iwl_wep_cmd* %34, i32 0, i64 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %123, %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @WEP_KEYS_MAX, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %48 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 8
  %54 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %55 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %66 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 4
  store i32 1, i32* %9, align 4
  br label %81

72:                                               ; preds = %45
  %73 = load i32, i32* @WEP_INVALID_OFFSET, align 4
  %74 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %75 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %63
  %82 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %83 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %91 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i64 %89, i64* %96, align 8
  %97 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %98 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %107 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %115 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @memcpy(i32* %105, i32 %113, i64 %121)
  br label %123

123:                                              ; preds = %81
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %41

126:                                              ; preds = %41
  %127 = load i32, i32* @WEP_KEY_WEP_TYPE, align 4
  %128 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %129 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @WEP_KEYS_MAX, align 4
  %131 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %132 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @WEP_KEYS_MAX, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 4, %134
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %13, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 %138, i64* %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144, %126
  %148 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %149 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %148, %struct.iwl_host_cmd* %14)
  store i32 %149, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %151

150:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @might_sleep(...) #2

declare dso_local i32 @memset(%struct.iwl_wep_cmd*, i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32, i64) #2

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
