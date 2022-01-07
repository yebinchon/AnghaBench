; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_send_tgi_tx_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_send_tgi_tx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.ipw_tgi_tx_key = type { i32, i32, i8**, i64, i64, i32 }

@SCM_TEMPORAL_KEY_LENGTH = common dso_local global i32 0, align 4
@IPW_CMD_TGI_TX_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32, i32)* @ipw_send_tgi_tx_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_send_tgi_tx_key(%struct.ipw_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw_tgi_tx_key, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %51

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.ipw_tgi_tx_key, %struct.ipw_tgi_tx_key* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ipw_tgi_tx_key, %struct.ipw_tgi_tx_key* %7, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SCM_TEMPORAL_KEY_LENGTH, align 4
  %35 = call i32 @memcpy(i32 %23, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.ipw_tgi_tx_key, %struct.ipw_tgi_tx_key* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ipw_tgi_tx_key, %struct.ipw_tgi_tx_key* %7, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.ipw_tgi_tx_key, %struct.ipw_tgi_tx_key* %7, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = call i8* @cpu_to_le32(i32 0)
  %41 = getelementptr inbounds %struct.ipw_tgi_tx_key, %struct.ipw_tgi_tx_key* %7, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  store i8* %40, i8** %43, align 8
  %44 = call i8* @cpu_to_le32(i32 0)
  %45 = getelementptr inbounds %struct.ipw_tgi_tx_key, %struct.ipw_tgi_tx_key* %7, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %49 = load i32, i32* @IPW_CMD_TGI_TX_KEY, align 4
  %50 = call i32 @ipw_send_cmd_pdu(%struct.ipw_priv* %48, i32 %49, i32 40, %struct.ipw_tgi_tx_key* %7)
  br label %51

51:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ipw_send_cmd_pdu(%struct.ipw_priv*, i32, i32, %struct.ipw_tgi_tx_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
