; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee_s = type { %struct.bfa_ioc_s*, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_ioc_s = type { i32 }

@BFI_MC_CEE = common dso_local global i32 0, align 4
@bfa_cee_isr = common dso_local global i32 0, align 4
@bfa_cee_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cee_attach(%struct.bfa_cee_s* %0, %struct.bfa_ioc_s* %1, i8* %2) #0 {
  %4 = alloca %struct.bfa_cee_s*, align 8
  %5 = alloca %struct.bfa_ioc_s*, align 8
  %6 = alloca i8*, align 8
  store %struct.bfa_cee_s* %0, %struct.bfa_cee_s** %4, align 8
  store %struct.bfa_ioc_s* %1, %struct.bfa_ioc_s** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %8 = icmp eq %struct.bfa_cee_s* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %15 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %15, i32 0, i32 0
  store %struct.bfa_ioc_s* %14, %struct.bfa_ioc_s** %16, align 8
  %17 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %17, i32 0, i32 0
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %18, align 8
  %20 = load i32, i32* @BFI_MC_CEE, align 4
  %21 = load i32, i32* @bfa_cee_isr, align 4
  %22 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %23 = call i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s* %19, i32 %20, i32 %21, %struct.bfa_cee_s* %22)
  %24 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %24, i32 0, i32 1
  %26 = call i32 @bfa_q_qe_init(%struct.TYPE_3__* %25)
  %27 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %27, i32 0, i32 1
  %29 = load i32, i32* @bfa_cee_notify, align 4
  %30 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %31 = call i32 @bfa_ioc_notify_init(%struct.TYPE_3__* %28, i32 %29, %struct.bfa_cee_s* %30)
  %32 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %35, i32 0, i32 0
  %37 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %36, align 8
  %38 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %34, i32* %38)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s*, i32, i32, %struct.bfa_cee_s*) #1

declare dso_local i32 @bfa_q_qe_init(%struct.TYPE_3__*) #1

declare dso_local i32 @bfa_ioc_notify_init(%struct.TYPE_3__*, i32, %struct.bfa_cee_s*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
