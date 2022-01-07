; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sil24.c_sil24_qc_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sil24.c_sil24_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__, i32, i32, %struct.ata_port* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ata_port = type { %struct.sil24_port_priv* }
%struct.sil24_port_priv = type { %union.sil24_cmd_block* }
%union.sil24_cmd_block = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.sil24_sge*, %struct.sil24_prb }
%struct.sil24_sge = type { i32 }
%struct.sil24_prb = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { %struct.sil24_sge*, %struct.sil24_prb }

@PRB_CTRL_PROTOCOL = common dso_local global i32 0, align 4
@PRB_PROT_NCQ = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@PRB_PROT_WRITE = common dso_local global i32 0, align 4
@PRB_PROT_READ = common dso_local global i32 0, align 4
@PRB_CTRL_PACKET_WRITE = common dso_local global i32 0, align 4
@PRB_CTRL_PACKET_READ = common dso_local global i32 0, align 4
@ATA_QCFLAG_DMAMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @sil24_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil24_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.sil24_port_priv*, align 8
  %5 = alloca %union.sil24_cmd_block*, align 8
  %6 = alloca %struct.sil24_prb*, align 8
  %7 = alloca %struct.sil24_sge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 5
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %3, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %14, align 8
  store %struct.sil24_port_priv* %15, %struct.sil24_port_priv** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %4, align 8
  %17 = getelementptr inbounds %struct.sil24_port_priv, %struct.sil24_port_priv* %16, i32 0, i32 0
  %18 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %17, align 8
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @sil24_tag(i32 %21)
  %23 = getelementptr inbounds %union.sil24_cmd_block, %union.sil24_cmd_block* %18, i64 %22
  store %union.sil24_cmd_block* %23, %union.sil24_cmd_block** %5, align 8
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ata_is_atapi(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %78, label %30

30:                                               ; preds = %1
  %31 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %5, align 8
  %32 = bitcast %union.sil24_cmd_block* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store %struct.sil24_prb* %33, %struct.sil24_prb** %6, align 8
  %34 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %5, align 8
  %35 = bitcast %union.sil24_cmd_block* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.sil24_sge*, %struct.sil24_sge** %36, align 8
  store %struct.sil24_sge* %37, %struct.sil24_sge** %7, align 8
  %38 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ata_is_data(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  %45 = load i32, i32* @PRB_CTRL_PROTOCOL, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %47 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ata_is_ncq(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @PRB_PROT_NCQ, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %58 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @PRB_PROT_WRITE, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %72

68:                                               ; preds = %56
  %69 = load i32, i32* @PRB_PROT_READ, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.sil24_prb*, %struct.sil24_prb** %6, align 8
  %76 = getelementptr inbounds %struct.sil24_prb, %struct.sil24_prb* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %30
  br label %124

78:                                               ; preds = %1
  %79 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %5, align 8
  %80 = bitcast %union.sil24_cmd_block* %79 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store %struct.sil24_prb* %81, %struct.sil24_prb** %6, align 8
  %82 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %5, align 8
  %83 = bitcast %union.sil24_cmd_block* %82 to %struct.TYPE_7__*
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.sil24_sge*, %struct.sil24_sge** %84, align 8
  store %struct.sil24_sge* %85, %struct.sil24_sge** %7, align 8
  %86 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %5, align 8
  %87 = bitcast %union.sil24_cmd_block* %86 to %struct.TYPE_7__*
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memset(i32 %89, i32 0, i32 32)
  %91 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %5, align 8
  %92 = bitcast %union.sil24_cmd_block* %91 to %struct.TYPE_7__*
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %96 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %99 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i32 %94, i32 %97, i32 %102)
  %104 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %105 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ata_is_data(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %78
  %111 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %112 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @PRB_CTRL_PACKET_WRITE, align 4
  store i32 %119, i32* %8, align 4
  br label %122

120:                                              ; preds = %110
  %121 = load i32, i32* @PRB_CTRL_PACKET_READ, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %120, %118
  br label %123

123:                                              ; preds = %122, %78
  br label %124

124:                                              ; preds = %123, %77
  %125 = load i32, i32* %8, align 4
  %126 = call i8* @cpu_to_le16(i32 %125)
  %127 = load %struct.sil24_prb*, %struct.sil24_prb** %6, align 8
  %128 = getelementptr inbounds %struct.sil24_prb, %struct.sil24_prb* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %130 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %129, i32 0, i32 2
  %131 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %132 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sil24_prb*, %struct.sil24_prb** %6, align 8
  %139 = getelementptr inbounds %struct.sil24_prb, %struct.sil24_prb* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ata_tf_to_fis(%struct.TYPE_10__* %130, i32 %137, i32 1, i32 %140)
  %142 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %143 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %124
  %149 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %150 = load %struct.sil24_sge*, %struct.sil24_sge** %7, align 8
  %151 = call i32 @sil24_fill_sg(%struct.ata_queued_cmd* %149, %struct.sil24_sge* %150)
  br label %152

152:                                              ; preds = %148, %124
  ret void
}

declare dso_local i64 @sil24_tag(i32) #1

declare dso_local i32 @ata_is_atapi(i32) #1

declare dso_local i64 @ata_is_data(i32) #1

declare dso_local i64 @ata_is_ncq(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ata_tf_to_fis(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @sil24_fill_sg(%struct.ata_queued_cmd*, %struct.sil24_sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
