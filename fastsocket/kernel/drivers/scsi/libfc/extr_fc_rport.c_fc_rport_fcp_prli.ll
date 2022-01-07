; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_fcp_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_fcp_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, %struct.TYPE_2__, %struct.fc_lport* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fc_els_spp = type { i32, i32 }

@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FCP_SPPF_TARG_FCN = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FC_RP_FLAGS_RETRY = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@FC_SPP_EST_IMG_PAIR = common dso_local global i32 0, align 4
@FC_SPP_RESP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)* @fc_rport_fcp_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_rport_fcp_prli(%struct.fc_rport_priv* %0, i32 %1, %struct.fc_els_spp* %2, %struct.fc_els_spp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_els_spp*, align 8
  %9 = alloca %struct.fc_els_spp*, align 8
  %10 = alloca %struct.fc_lport*, align 8
  %11 = alloca i32, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fc_els_spp* %2, %struct.fc_els_spp** %8, align 8
  store %struct.fc_els_spp* %3, %struct.fc_els_spp** %9, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %13 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %12, i32 0, i32 3
  %14 = load %struct.fc_lport*, %struct.fc_lport** %13, align 8
  store %struct.fc_lport* %14, %struct.fc_lport** %10, align 8
  %15 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %16 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohl(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %20 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %21 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %30 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %42 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @FC_RP_FLAGS_RETRY, align 4
  %53 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %54 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* @FC_COS_CLASS3, align 4
  %59 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %60 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %62 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %91

68:                                               ; preds = %57
  %69 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %70 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FC_SPP_EST_IMG_PAIR, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %75 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %79 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohl(i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %84 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  %87 = call i32 @htonl(i32 %86)
  %88 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %89 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @FC_SPP_RESP_ACK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %68, %67
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
