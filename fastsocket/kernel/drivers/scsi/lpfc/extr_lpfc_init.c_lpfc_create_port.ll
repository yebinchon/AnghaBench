; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i64, i32, i32, %struct.lpfc_hba* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.lpfc_hba = type { i64, i32, i32, %struct.TYPE_7__*, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i64, i32, i64, i32, i32, i64 }

@lpfc_vport_template = common dso_local global i32 0, align 4
@lpfc_template = common dso_local global i32 0, align 4
@FC_LOADING = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@LPFC_MAX_TARGET = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_vport_transport_template = common dso_local global i32 0, align 4
@LPFC_NPIV_PORT = common dso_local global i32 0, align 4
@lpfc_transport_template = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i32 0, align 4
@lpfc_disc_timeout = common dso_local global i32 0, align 4
@lpfc_fdmi_tmo = common dso_local global i32 0, align 4
@lpfc_els_timeout = common dso_local global i32 0, align 4
@lpfc_delayed_disc_tmo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = icmp ne %struct.device* %11, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @lpfc_vport_template, i32 120)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %9, align 8
  br label %21

19:                                               ; preds = %3
  %20 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @lpfc_template, i32 120)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %9, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %23 = icmp ne %struct.Scsi_Host* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %192

25:                                               ; preds = %21
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %29, %struct.lpfc_vport** %8, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %32 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %31, i32 0, i32 13
  store %struct.lpfc_hba* %30, %struct.lpfc_hba** %32, align 8
  %33 = load i32, i32* @FC_LOADING, align 4
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %35 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 10
  store i64 0, i64* %44, align 8
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %46 = call i32 @lpfc_get_vport_cfgparam(%struct.lpfc_vport* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @LPFC_MAX_TARGET, align 4
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %54 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 2
  store i32 16, i32* %61, align 8
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LPFC_SLI_REV4, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %25
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 6
  store i64 %73, i64* %75, align 8
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %80 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %67, %25
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 10
  %86 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %87 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = icmp ne %struct.device* %88, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %81
  %95 = load i32, i32* @lpfc_vport_transport_template, align 4
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @LPFC_NPIV_PORT, align 4
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %100 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 4
  br label %108

101:                                              ; preds = %81
  %102 = load i32, i32* @lpfc_transport_template, align 4
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %104 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @LPFC_PHYSICAL_PORT, align 4
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %107 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %94
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %110 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %109, i32 0, i32 7
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %113 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %112, i32 0, i32 6
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %116 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %115, i32 0, i32 5
  %117 = call i32 @spin_lock_init(i32* %116)
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %119 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %118, i32 0, i32 4
  %120 = call i32 @init_timer(%struct.TYPE_8__* %119)
  %121 = load i32, i32* @lpfc_disc_timeout, align 4
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %123 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 8
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %126 = ptrtoint %struct.lpfc_vport* %125 to i64
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %131 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %130, i32 0, i32 3
  %132 = call i32 @init_timer(%struct.TYPE_8__* %131)
  %133 = load i32, i32* @lpfc_fdmi_tmo, align 4
  %134 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %135 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %138 = ptrtoint %struct.lpfc_vport* %137 to i64
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %140 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %143 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %142, i32 0, i32 2
  %144 = call i32 @init_timer(%struct.TYPE_8__* %143)
  %145 = load i32, i32* @lpfc_els_timeout, align 4
  %146 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %147 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 8
  %149 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %150 = ptrtoint %struct.lpfc_vport* %149 to i64
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %152 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %155 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %154, i32 0, i32 1
  %156 = call i32 @init_timer(%struct.TYPE_8__* %155)
  %157 = load i32, i32* @lpfc_delayed_disc_tmo, align 4
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %159 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %162 = ptrtoint %struct.lpfc_vport* %161 to i64
  %163 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %164 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  %166 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %167 = load %struct.device*, %struct.device** %7, align 8
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %169 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %168, i32 0, i32 3
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = call i32 @scsi_add_host_with_dma(%struct.Scsi_Host* %166, %struct.device* %167, %struct.device* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %108
  br label %189

176:                                              ; preds = %108
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 1
  %179 = call i32 @spin_lock_irq(i32* %178)
  %180 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %181 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %180, i32 0, i32 0
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %183 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %182, i32 0, i32 2
  %184 = call i32 @list_add_tail(i32* %181, i32* %183)
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 1
  %187 = call i32 @spin_unlock_irq(i32* %186)
  %188 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_vport* %188, %struct.lpfc_vport** %4, align 8
  br label %193

189:                                              ; preds = %175
  %190 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %191 = call i32 @scsi_host_put(%struct.Scsi_Host* %190)
  br label %192

192:                                              ; preds = %189, %24
  store %struct.lpfc_vport* null, %struct.lpfc_vport** %4, align 8
  br label %193

193:                                              ; preds = %192, %176
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  ret %struct.lpfc_vport* %194
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @lpfc_get_vport_cfgparam(%struct.lpfc_vport*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @scsi_add_host_with_dma(%struct.Scsi_Host*, %struct.device*, %struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
