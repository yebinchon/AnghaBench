; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32, i32, %struct.fc_host_statistics }
%struct.bfad_hal_comp = type { i32 }
%union.bfa_port_stats_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @bfad_im_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @bfad_im_get_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.fc_host_statistics*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.bfad_im_port_s*, align 8
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.bfad_hal_comp, align 4
  %7 = alloca %union.bfa_port_stats_u*, align 8
  %8 = alloca %struct.fc_host_statistics*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %16, %struct.bfad_im_port_s** %4, align 8
  %17 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %17, i32 0, i32 0
  %19 = load %struct.bfad_s*, %struct.bfad_s** %18, align 8
  store %struct.bfad_s* %19, %struct.bfad_s** %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %union.bfa_port_stats_u* @kzalloc(i32 56, i32 %20)
  store %union.bfa_port_stats_u* %21, %union.bfa_port_stats_u** %7, align 8
  %22 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %23 = icmp eq %union.bfa_port_stats_u* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %140

25:                                               ; preds = %1
  %26 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %26, i32 0, i32 2
  store %struct.fc_host_statistics* %27, %struct.fc_host_statistics** %8, align 8
  %28 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %35 = call i32 @memset(%struct.fc_host_statistics* %34, i32 0, i32 56)
  %36 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %37 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %36, i32 0, i32 1
  %38 = call i32 @BFA_FCPORT(i32* %37)
  %39 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %40 = load i32, i32* @bfad_hcb_comp, align 4
  %41 = call i64 @bfa_port_get_stats(i32 %38, %union.bfa_port_stats_u* %39, i32 %40, %struct.bfad_hal_comp* %6)
  store i64 %41, i64* %9, align 8
  %42 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @BFA_STATUS_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %25
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %140

50:                                               ; preds = %25
  %51 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %52 = call i32 @wait_for_completion(i32* %51)
  %53 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %54 = bitcast %union.bfa_port_stats_u* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %58 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 4
  %59 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %60 = bitcast %union.bfa_port_stats_u* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %64 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 4
  %65 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %66 = bitcast %union.bfa_port_stats_u* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %70 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 4
  %71 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %72 = bitcast %union.bfa_port_stats_u* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %76 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 4
  %77 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %78 = bitcast %union.bfa_port_stats_u* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %82 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %84 = bitcast %union.bfa_port_stats_u* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %88 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  %89 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %90 = bitcast %union.bfa_port_stats_u* %89 to %struct.TYPE_2__*
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %94 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %96 = bitcast %union.bfa_port_stats_u* %95 to %struct.TYPE_2__*
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %100 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %102 = bitcast %union.bfa_port_stats_u* %101 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %106 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %108 = bitcast %union.bfa_port_stats_u* %107 to %struct.TYPE_2__*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %112 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %114 = bitcast %union.bfa_port_stats_u* %113 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %118 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %120 = bitcast %union.bfa_port_stats_u* %119 to %struct.TYPE_2__*
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %124 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %126 = bitcast %union.bfa_port_stats_u* %125 to %struct.TYPE_2__*
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %130 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %132 = bitcast %union.bfa_port_stats_u* %131 to %struct.TYPE_2__*
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  %136 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %7, align 8
  %138 = call i32 @kfree(%union.bfa_port_stats_u* %137)
  %139 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %8, align 8
  store %struct.fc_host_statistics* %139, %struct.fc_host_statistics** %2, align 8
  br label %140

140:                                              ; preds = %50, %49, %24
  %141 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %2, align 8
  ret %struct.fc_host_statistics* %141
}

declare dso_local %union.bfa_port_stats_u* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.fc_host_statistics*, i32, i32) #1

declare dso_local i64 @bfa_port_get_stats(i32, %union.bfa_port_stats_u*, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @BFA_FCPORT(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%union.bfa_port_stats_u*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
