; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_mbox_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_mbox_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__, %struct.bfa_ioc_mbox_mod }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_ioc_mbox_mod = type { i32 }
%struct.bfa_mbox_cmd = type { i32 (i8*)*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_mbox_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_mbox_poll(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca %struct.bfa_ioc_mbox_mod*, align 8
  %4 = alloca %struct.bfa_mbox_cmd*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %8, i32 0, i32 1
  store %struct.bfa_ioc_mbox_mod* %9, %struct.bfa_ioc_mbox_mod** %3, align 8
  %10 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @readl(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %49

24:                                               ; preds = %15
  %25 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %25, i32 0, i32 0
  %27 = call i32 @bfa_q_deq(i32* %26, %struct.bfa_mbox_cmd** %4)
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %29 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bfa_ioc_mbox_send(%struct.bfa_ioc* %28, i32 %31, i32 4)
  %33 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %33, i32 0, i32 0
  %35 = load i32 (i8*)*, i32 (i8*)** %34, align 8
  %36 = icmp ne i32 (i8*)* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %24
  %38 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %38, i32 0, i32 0
  %40 = load i32 (i8*)*, i32 (i8*)** %39, align 8
  store i32 (i8*)* %40, i32 (i8*)** %5, align 8
  %41 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %6, align 8
  %44 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %44, i32 0, i32 0
  store i32 (i8*)* null, i32 (i8*)** %45, align 8
  %46 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 %46(i8* %47)
  br label %49

49:                                               ; preds = %14, %23, %37, %24
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.bfa_mbox_cmd**) #1

declare dso_local i32 @bfa_ioc_mbox_send(%struct.bfa_ioc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
