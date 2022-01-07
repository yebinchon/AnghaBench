; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fip_header = type { i32 }
%struct.anon = type { %struct.fc_rport_priv, %struct.fcoe_rport }
%struct.fc_rport_priv = type { i32 }
%struct.fcoe_rport = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"vn_recv vn_parse error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"vn_recv unknown subcode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)* @fcoe_ctlr_vn_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_ctlr_vn_recv(%struct.fcoe_ctlr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fip_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.anon, align 4
  %8 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fip_header*
  store %struct.fip_header* %12, %struct.fip_header** %5, align 8
  %13 = load %struct.fip_header*, %struct.fip_header** %5, align 8
  %14 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %19 = call i32 @fcoe_ctlr_vn_parse(%struct.fcoe_ctlr* %16, %struct.sk_buff* %17, %struct.fc_rport_priv* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %28 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %51 [
    i32 128, label %31
    i32 129, label %35
    i32 131, label %39
    i32 130, label %43
    i32 132, label %47
  ]

31:                                               ; preds = %26
  %32 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %34 = call i32 @fcoe_ctlr_vn_probe_req(%struct.fcoe_ctlr* %32, %struct.fc_rport_priv* %33)
  br label %55

35:                                               ; preds = %26
  %36 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %38 = call i32 @fcoe_ctlr_vn_probe_reply(%struct.fcoe_ctlr* %36, %struct.fc_rport_priv* %37)
  br label %55

39:                                               ; preds = %26
  %40 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %42 = call i32 @fcoe_ctlr_vn_claim_notify(%struct.fcoe_ctlr* %40, %struct.fc_rport_priv* %41)
  br label %55

43:                                               ; preds = %26
  %44 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %46 = call i32 @fcoe_ctlr_vn_claim_resp(%struct.fcoe_ctlr* %44, %struct.fc_rport_priv* %45)
  br label %55

47:                                               ; preds = %26
  %48 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %50 = call i32 @fcoe_ctlr_vn_beacon(%struct.fcoe_ctlr* %48, %struct.fc_rport_priv* %49)
  br label %55

51:                                               ; preds = %26
  %52 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %47, %43, %39, %35, %31
  %56 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %57 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55, %22
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @fcoe_ctlr_vn_parse(%struct.fcoe_ctlr*, %struct.sk_buff*, %struct.fc_rport_priv*) #1

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fcoe_ctlr_vn_probe_req(%struct.fcoe_ctlr*, %struct.fc_rport_priv*) #1

declare dso_local i32 @fcoe_ctlr_vn_probe_reply(%struct.fcoe_ctlr*, %struct.fc_rport_priv*) #1

declare dso_local i32 @fcoe_ctlr_vn_claim_notify(%struct.fcoe_ctlr*, %struct.fc_rport_priv*) #1

declare dso_local i32 @fcoe_ctlr_vn_claim_resp(%struct.fcoe_ctlr*, %struct.fc_rport_priv*) #1

declare dso_local i32 @fcoe_ctlr_vn_beacon(%struct.fcoe_ctlr*, %struct.fc_rport_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
