; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_qp_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_qp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_ibdev = type { i32 }
%struct.ipath_ib_header = type { i32 }
%struct.ipath_qp = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@ib_ipath_disable_sma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_ibdev*, %struct.ipath_ib_header*, i32, i8*, i32, %struct.ipath_qp*)* @ipath_qp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_qp_rcv(%struct.ipath_ibdev* %0, %struct.ipath_ib_header* %1, i32 %2, i8* %3, i32 %4, %struct.ipath_qp* %5) #0 {
  %7 = alloca %struct.ipath_ibdev*, align 8
  %8 = alloca %struct.ipath_ib_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipath_qp*, align 8
  store %struct.ipath_ibdev* %0, %struct.ipath_ibdev** %7, align 8
  store %struct.ipath_ib_header* %1, %struct.ipath_ib_header** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ipath_qp* %5, %struct.ipath_qp** %12, align 8
  %13 = load i32*, i32** @ib_ipath_state_ops, align 8
  %14 = load %struct.ipath_qp*, %struct.ipath_qp** %12, align 8
  %15 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IPATH_PROCESS_RECV_OK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %24 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %62

27:                                               ; preds = %6
  %28 = load %struct.ipath_qp*, %struct.ipath_qp** %12, align 8
  %29 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %61 [
    i32 130, label %32
    i32 132, label %32
    i32 128, label %37
    i32 131, label %45
    i32 129, label %53
  ]

32:                                               ; preds = %27, %27
  %33 = load i32, i32* @ib_ipath_disable_sma, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %62

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %27, %36
  %38 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %39 = load %struct.ipath_ib_header*, %struct.ipath_ib_header** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ipath_qp*, %struct.ipath_qp** %12, align 8
  %44 = call i32 @ipath_ud_rcv(%struct.ipath_ibdev* %38, %struct.ipath_ib_header* %39, i32 %40, i8* %41, i32 %42, %struct.ipath_qp* %43)
  br label %62

45:                                               ; preds = %27
  %46 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %47 = load %struct.ipath_ib_header*, %struct.ipath_ib_header** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.ipath_qp*, %struct.ipath_qp** %12, align 8
  %52 = call i32 @ipath_rc_rcv(%struct.ipath_ibdev* %46, %struct.ipath_ib_header* %47, i32 %48, i8* %49, i32 %50, %struct.ipath_qp* %51)
  br label %62

53:                                               ; preds = %27
  %54 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %55 = load %struct.ipath_ib_header*, %struct.ipath_ib_header** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.ipath_qp*, %struct.ipath_qp** %12, align 8
  %60 = call i32 @ipath_uc_rcv(%struct.ipath_ibdev* %54, %struct.ipath_ib_header* %55, i32 %56, i8* %57, i32 %58, %struct.ipath_qp* %59)
  br label %62

61:                                               ; preds = %27
  br label %62

62:                                               ; preds = %22, %61, %53, %45, %37, %35
  ret void
}

declare dso_local i32 @ipath_ud_rcv(%struct.ipath_ibdev*, %struct.ipath_ib_header*, i32, i8*, i32, %struct.ipath_qp*) #1

declare dso_local i32 @ipath_rc_rcv(%struct.ipath_ibdev*, %struct.ipath_ib_header*, i32, i8*, i32, %struct.ipath_qp*) #1

declare dso_local i32 @ipath_uc_rcv(%struct.ipath_ibdev*, %struct.ipath_ib_header*, i32, i8*, i32, %struct.ipath_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
