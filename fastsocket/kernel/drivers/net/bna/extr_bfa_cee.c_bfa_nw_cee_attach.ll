; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_cee.c_bfa_nw_cee_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_cee.c_bfa_nw_cee_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee = type { i32, %struct.bfa_ioc*, i8* }
%struct.bfa_ioc = type { i32 }

@BFI_MC_CEE = common dso_local global i32 0, align 4
@bfa_cee_isr = common dso_local global i32 0, align 4
@bfa_cee_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_cee_attach(%struct.bfa_cee* %0, %struct.bfa_ioc* %1, i8* %2) #0 {
  %4 = alloca %struct.bfa_cee*, align 8
  %5 = alloca %struct.bfa_ioc*, align 8
  %6 = alloca i8*, align 8
  store %struct.bfa_cee* %0, %struct.bfa_cee** %4, align 8
  store %struct.bfa_ioc* %1, %struct.bfa_ioc** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %8 = icmp ne %struct.bfa_cee* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %16 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %17 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %16, i32 0, i32 1
  store %struct.bfa_ioc* %15, %struct.bfa_ioc** %17, align 8
  %18 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %19 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %18, i32 0, i32 1
  %20 = load %struct.bfa_ioc*, %struct.bfa_ioc** %19, align 8
  %21 = load i32, i32* @BFI_MC_CEE, align 4
  %22 = load i32, i32* @bfa_cee_isr, align 4
  %23 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %24 = call i32 @bfa_nw_ioc_mbox_regisr(%struct.bfa_ioc* %20, i32 %21, i32 %22, %struct.bfa_cee* %23)
  %25 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %25, i32 0, i32 0
  %27 = call i32 @bfa_q_qe_init(i32* %26)
  %28 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %28, i32 0, i32 0
  %30 = load i32, i32* @bfa_cee_notify, align 4
  %31 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %32 = call i32 @bfa_ioc_notify_init(i32* %29, i32 %30, %struct.bfa_cee* %31)
  %33 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %33, i32 0, i32 1
  %35 = load %struct.bfa_ioc*, %struct.bfa_ioc** %34, align 8
  %36 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %36, i32 0, i32 0
  %38 = call i32 @bfa_nw_ioc_notify_register(%struct.bfa_ioc* %35, i32* %37)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_regisr(%struct.bfa_ioc*, i32, i32, %struct.bfa_cee*) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @bfa_ioc_notify_init(i32*, i32, %struct.bfa_cee*) #1

declare dso_local i32 @bfa_nw_ioc_notify_register(%struct.bfa_ioc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
