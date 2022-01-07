; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_mbox_regisr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_mbox_regisr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.bfa_ioc_mbox_mod }
%struct.bfa_ioc_mbox_mod = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_mbox_regisr(%struct.bfa_ioc* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.bfa_ioc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_ioc_mbox_mod*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %10, i32 0, i32 0
  store %struct.bfa_ioc_mbox_mod* %11, %struct.bfa_ioc_mbox_mod** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %9, align 8
  %14 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %12, i32* %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %9, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %20, i8** %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
