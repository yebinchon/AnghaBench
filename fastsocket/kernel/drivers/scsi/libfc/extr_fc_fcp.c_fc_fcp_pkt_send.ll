; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.fc_lport.0*, %struct.fc_fcp_pkt*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_fcp_pkt = type opaque
%struct.fc_fcp_pkt.1 = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.fc_fcp_internal = type { i32, i32 }
%struct.scsi_lun = type { i32 }

@FCP_CFL_LEN_MASK = common dso_local global i32 0, align 4
@fc_fcp_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_fcp_pkt.1*)* @fc_fcp_pkt_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_fcp_pkt_send(%struct.fc_lport* %0, %struct.fc_fcp_pkt.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_fcp_pkt.1*, align 8
  %5 = alloca %struct.fc_fcp_internal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_fcp_pkt.1* %1, %struct.fc_fcp_pkt.1** %4, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %9 = call %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport* %8)
  store %struct.fc_fcp_internal* %9, %struct.fc_fcp_internal** %5, align 8
  %10 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %11 = bitcast %struct.fc_fcp_pkt.1* %10 to i8*
  %12 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %13 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %11, i8** %16, align 8
  %17 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %18 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @htonl(i32 %19)
  %21 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %22 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %25 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FCP_CFL_LEN_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %31 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %34 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %41 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.scsi_lun*
  %45 = call i32 @int_to_scsilun(i32 %39, %struct.scsi_lun* %44)
  %46 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %47 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %51 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %56 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memcpy(i32 %49, i32 %54, i32 %59)
  %61 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %62 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %66 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %65, i32 0, i32 1
  %67 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %68 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %67, i32 0, i32 1
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  %70 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %71 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %70, i32 0, i32 0
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %75 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32 (%struct.fc_lport.0*, %struct.fc_fcp_pkt*, i32)*, i32 (%struct.fc_lport.0*, %struct.fc_fcp_pkt*, i32)** %76, align 8
  %78 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %79 = bitcast %struct.fc_lport* %78 to %struct.fc_lport.0*
  %80 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %81 = bitcast %struct.fc_fcp_pkt.1* %80 to %struct.fc_fcp_pkt*
  %82 = load i32, i32* @fc_fcp_recv, align 4
  %83 = call i32 %77(%struct.fc_lport.0* %79, %struct.fc_fcp_pkt* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %2
  %88 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %89 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %93 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i8* null, i8** %96, align 8
  %97 = load %struct.fc_fcp_pkt.1*, %struct.fc_fcp_pkt.1** %4, align 8
  %98 = getelementptr inbounds %struct.fc_fcp_pkt.1, %struct.fc_fcp_pkt.1* %97, i32 0, i32 1
  %99 = call i32 @list_del(i32* %98)
  %100 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %101 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %100, i32 0, i32 0
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %87, %2
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
