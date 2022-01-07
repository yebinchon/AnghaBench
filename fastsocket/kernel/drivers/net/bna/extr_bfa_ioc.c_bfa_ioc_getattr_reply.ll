; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_getattr_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_getattr_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.bfi_ioc_attr* }
%struct.bfi_ioc_attr = type { i32, i8*, i8* }

@IOC_E_FWRSP_GETATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_getattr_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_getattr_reply(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca %struct.bfi_ioc_attr*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %4, i32 0, i32 0
  %6 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  store %struct.bfi_ioc_attr* %6, %struct.bfi_ioc_attr** %3, align 8
  %7 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %3, align 8
  %8 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @ntohl(i8* %9)
  %11 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %3, align 8
  %12 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %3, align 8
  %14 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @ntohl(i8* %15)
  %17 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %3, align 8
  %18 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %3, align 8
  %20 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ntohs(i32 %21)
  %23 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %3, align 8
  %24 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %26 = load i32, i32* @IOC_E_FWRSP_GETATTR, align 4
  %27 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc* %25, i32 %26)
  ret void
}

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_ioc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
