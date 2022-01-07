; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_mbox_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_mbox_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.bfa_ioc_mbox_mod }
%struct.bfa_ioc_mbox_mod = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (i32, %struct.bfi_mbmsg*)* }
%struct.bfi_mbmsg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BFI_MC_IOC = common dso_local global i32 0, align 4
@BFI_MC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_mbox_isr(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca %struct.bfa_ioc_mbox_mod*, align 8
  %4 = alloca %struct.bfi_mbmsg, align 4
  %5 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %6 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %6, i32 0, i32 0
  store %struct.bfa_ioc_mbox_mod* %7, %struct.bfa_ioc_mbox_mod** %3, align 8
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %9 = call i64 @bfa_ioc_msgget(%struct.bfa_ioc* %8, %struct.bfi_mbmsg* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bfi_mbmsg, %struct.bfi_mbmsg* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BFI_MC_IOC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %20 = call i32 @bfa_ioc_isr(%struct.bfa_ioc* %19, %struct.bfi_mbmsg* %4)
  br label %59

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BFI_MC_MAX, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (i32, %struct.bfi_mbmsg*)*, i32 (i32, %struct.bfi_mbmsg*)** %32, align 8
  %34 = icmp eq i32 (i32, %struct.bfi_mbmsg*)* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %21
  br label %59

36:                                               ; preds = %25
  %37 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (i32, %struct.bfi_mbmsg*)*, i32 (i32, %struct.bfi_mbmsg*)** %43, align 8
  %45 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %44(i32 %52, %struct.bfi_mbmsg* %4)
  br label %54

54:                                               ; preds = %36, %1
  %55 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %56 = call i32 @bfa_ioc_lpu_read_stat(%struct.bfa_ioc* %55)
  %57 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %58 = call i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc* %57)
  br label %59

59:                                               ; preds = %54, %35, %18
  ret void
}

declare dso_local i64 @bfa_ioc_msgget(%struct.bfa_ioc*, %struct.bfi_mbmsg*) #1

declare dso_local i32 @bfa_ioc_isr(%struct.bfa_ioc*, %struct.bfi_mbmsg*) #1

declare dso_local i32 @bfa_ioc_lpu_read_stat(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
