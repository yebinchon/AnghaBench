; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_send_rxon_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_send_rxon_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32, %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd }
%struct.iwl_rxon_cmd = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iwl_rxon_assoc_cmd = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Using current RXON_ASSOC.  Not resending.\0A\00", align 1
@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwlagn_send_rxon_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_send_rxon_assoc(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rxon_assoc_cmd, align 8
  %8 = alloca %struct.iwl_rxon_cmd*, align 8
  %9 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %10, i32 0, i32 1
  store %struct.iwl_rxon_cmd* %11, %struct.iwl_rxon_cmd** %8, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %12, i32 0, i32 2
  store %struct.iwl_rxon_cmd* %13, %struct.iwl_rxon_cmd** %9, align 8
  %14 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %15 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %18 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %2
  %22 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %26 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %88

29:                                               ; preds = %21
  %30 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %34 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %29
  %38 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %42 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %37
  %46 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %47 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %45
  %54 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %58 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %53
  %62 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %66 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %71 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %74 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %69
  %78 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %79 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %9, align 8
  %82 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %87 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %144

88:                                               ; preds = %77, %69, %61, %53, %45, %37, %29, %21, %2
  %89 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %90 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  %94 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %95 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %100 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 2
  store i64 %102, i64* %103, align 8
  %104 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %105 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 3
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 11
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 10
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 9
  store i64 0, i64* %111, align 8
  %112 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %113 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 4
  store i64 %115, i64* %116, align 8
  %117 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %118 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 5
  store i64 %120, i64* %121, align 8
  %122 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %123 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 6
  store i64 %125, i64* %126, align 8
  %127 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %128 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 7
  store i64 %130, i64* %131, align 8
  %132 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %133 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, %struct.iwl_rxon_assoc_cmd* %7, i32 0, i32 8
  store i64 %135, i64* %136, align 8
  %137 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %138 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %139 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CMD_ASYNC, align 4
  %142 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %137, i32 %140, i32 %141, i32 96, %struct.iwl_rxon_assoc_cmd* %7)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %88, %85
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_rxon_assoc_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
