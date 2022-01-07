; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_check_clean_addr_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_check_clean_addr_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i64, i32, i32, i32 }
%struct.serv_parm = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@lpfc_delay_discovery = common dso_local global i64 0, align 8
@FC_DISC_DELAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.serv_parm*)* @lpfc_check_clean_addr_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_check_clean_addr_bit(%struct.lpfc_vport* %0, %struct.serv_parm* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.serv_parm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.serv_parm* %1, %struct.serv_parm** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %6, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 4
  %19 = load %struct.serv_parm*, %struct.serv_parm** %4, align 8
  %20 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %19, i32 0, i32 2
  %21 = call i64 @memcmp(i32* %18, i32* %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 3
  %26 = load %struct.serv_parm*, %struct.serv_parm** %4, align 8
  %27 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %26, i32 0, i32 1
  %28 = call i64 @memcmp(i32* %25, i32* %27, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %16, %2
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load %struct.serv_parm*, %struct.serv_parm** %4, align 8
  %36 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %34
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @lpfc_delay_discovery, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45, %40
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @spin_lock_irq(i32 %51)
  %53 = load i32, i32* @FC_DISC_DELAYED, align 4
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @spin_unlock_irq(i32 %60)
  br label %62

62:                                               ; preds = %48, %45, %34, %31
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
