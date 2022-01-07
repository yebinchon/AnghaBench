; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_port_s = type { i32, %struct.bfa_ioc_s*, %struct.TYPE_3__, i8*, i8*, i32*, i32*, i8*, i8*, %struct.bfa_trc_mod_s*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_ioc_s = type { i32 }
%struct.bfa_trc_mod_s = type { i32 }
%struct.timeval = type { i32 }

@BFA_FALSE = common dso_local global i8* null, align 8
@BFI_MC_PORT = common dso_local global i32 0, align 4
@bfa_port_isr = common dso_local global i32 0, align 4
@bfa_port_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_port_attach(%struct.bfa_port_s* %0, %struct.bfa_ioc_s* %1, i8* %2, %struct.bfa_trc_mod_s* %3) #0 {
  %5 = alloca %struct.bfa_port_s*, align 8
  %6 = alloca %struct.bfa_ioc_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bfa_trc_mod_s*, align 8
  %9 = alloca %struct.timeval, align 4
  store %struct.bfa_port_s* %0, %struct.bfa_port_s** %5, align 8
  store %struct.bfa_ioc_s* %1, %struct.bfa_ioc_s** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.bfa_trc_mod_s* %3, %struct.bfa_trc_mod_s** %8, align 8
  %10 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %11 = icmp ne %struct.bfa_port_s* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %16, i32 0, i32 10
  store i8* %15, i8** %17, align 8
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %19 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %19, i32 0, i32 1
  store %struct.bfa_ioc_s* %18, %struct.bfa_ioc_s** %20, align 8
  %21 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %8, align 8
  %22 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %22, i32 0, i32 9
  store %struct.bfa_trc_mod_s* %21, %struct.bfa_trc_mod_s** %23, align 8
  %24 = load i8*, i8** @BFA_FALSE, align 8
  %25 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @BFA_FALSE, align 8
  %28 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %32, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = load i8*, i8** @BFA_FALSE, align 8
  %35 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @BFA_FALSE, align 8
  %38 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %40, i32 0, i32 1
  %42 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %41, align 8
  %43 = load i32, i32* @BFI_MC_PORT, align 4
  %44 = load i32, i32* @bfa_port_isr, align 4
  %45 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %46 = call i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s* %42, i32 %43, i32 %44, %struct.bfa_port_s* %45)
  %47 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %47, i32 0, i32 2
  %49 = call i32 @bfa_q_qe_init(%struct.TYPE_3__* %48)
  %50 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %50, i32 0, i32 2
  %52 = load i32, i32* @bfa_port_notify, align 4
  %53 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %54 = call i32 @bfa_ioc_notify_init(%struct.TYPE_3__* %51, i32 %52, %struct.bfa_port_s* %53)
  %55 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %58, i32 0, i32 1
  %60 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %59, align 8
  %61 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %57, i32* %61)
  %63 = call i32 @do_gettimeofday(%struct.timeval* %9)
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %67 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %69 = call i32 @bfa_trc(%struct.bfa_port_s* %68, i32 0)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s*, i32, i32, %struct.bfa_port_s*) #1

declare dso_local i32 @bfa_q_qe_init(%struct.TYPE_3__*) #1

declare dso_local i32 @bfa_ioc_notify_init(%struct.TYPE_3__*, i32, %struct.bfa_port_s*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_port_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
