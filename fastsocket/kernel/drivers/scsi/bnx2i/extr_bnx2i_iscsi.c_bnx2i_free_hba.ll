; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_free_hba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_free_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32*, i32, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_free_hba(%struct.bnx2i_hba* %0) #0 {
  %2 = alloca %struct.bnx2i_hba*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %2, align 8
  %4 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %4, i32 0, i32 5
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call i32 @iscsi_host_remove(%struct.Scsi_Host* %7)
  %9 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %9, i32 0, i32 4
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %12, i32 0, i32 3
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %15, i32 0, i32 2
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pci_dev_put(i32 %20)
  %22 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %28 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @pci_iounmap(i32 %29, i32* %32)
  %34 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %38 = call i32 @bnx2i_free_mp_bdt(%struct.bnx2i_hba* %37)
  %39 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %40 = call i32 @bnx2i_release_free_cid_que(%struct.bnx2i_hba* %39)
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %42 = call i32 @iscsi_host_free(%struct.Scsi_Host* %41)
  ret void
}

declare dso_local i32 @iscsi_host_remove(%struct.Scsi_Host*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @pci_iounmap(i32, i32*) #1

declare dso_local i32 @bnx2i_free_mp_bdt(%struct.bnx2i_hba*) #1

declare dso_local i32 @bnx2i_release_free_cid_que(%struct.bnx2i_hba*) #1

declare dso_local i32 @iscsi_host_free(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
