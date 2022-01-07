; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_send_rxon_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_send_rxon_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_rxon_cmd, %struct.il_rxon_cmd }
%struct.il_rxon_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.il4965_rxon_assoc_cmd = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Using current RXON_ASSOC.  Not resending.\0A\00", align 1
@C_RXON_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_send_rxon_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_send_rxon_assoc(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.il4965_rxon_assoc_cmd, align 8
  %6 = alloca %struct.il_rxon_cmd*, align 8
  %7 = alloca %struct.il_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  store %struct.il_rxon_cmd* %9, %struct.il_rxon_cmd** %6, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 1
  store %struct.il_rxon_cmd* %11, %struct.il_rxon_cmd** %7, align 8
  %12 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %1
  %20 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %19
  %28 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %27
  %36 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %35
  %44 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %43
  %52 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %64 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

69:                                               ; preds = %59, %51, %43, %35, %27, %19, %1
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %76 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 1
  store i64 %78, i64* %79, align 8
  %80 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %81 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  %85 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %86 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 3
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 7
  store i64 0, i64* %90, align 8
  %91 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 4
  store i64 %94, i64* %95, align 8
  %96 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 5
  store i64 %99, i64* %100, align 8
  %101 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 6
  store i64 %104, i64* %105, align 8
  %106 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %107 = load i32, i32* @C_RXON_ASSOC, align 4
  %108 = call i32 @il_send_cmd_pdu_async(%struct.il_priv* %106, i32 %107, i32 64, %struct.il4965_rxon_assoc_cmd* %5, i32* null)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %69, %67
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il_send_cmd_pdu_async(%struct.il_priv*, i32, i32, %struct.il4965_rxon_assoc_cmd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
