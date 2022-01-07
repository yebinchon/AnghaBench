; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_qp_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_qp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qib_ibport }
%struct.qib_ibport = type { i32 }
%struct.qib_ib_header = type { i32 }
%struct.qib_qp = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@ib_qib_disable_sma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*, %struct.qib_ib_header*, i32, i8*, i32, %struct.qib_qp*)* @qib_qp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_qp_rcv(%struct.qib_ctxtdata* %0, %struct.qib_ib_header* %1, i32 %2, i8* %3, i32 %4, %struct.qib_qp* %5) #0 {
  %7 = alloca %struct.qib_ctxtdata*, align 8
  %8 = alloca %struct.qib_ib_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qib_qp*, align 8
  %13 = alloca %struct.qib_ibport*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %7, align 8
  store %struct.qib_ib_header* %1, %struct.qib_ib_header** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.qib_qp* %5, %struct.qib_qp** %12, align 8
  %14 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %15 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.qib_ibport* %17, %struct.qib_ibport** %13, align 8
  %18 = load %struct.qib_qp*, %struct.qib_qp** %12, align 8
  %19 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32*, i32** @ib_qib_state_ops, align 8
  %22 = load %struct.qib_qp*, %struct.qib_qp** %12, align 8
  %23 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %6
  %31 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %32 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %71

35:                                               ; preds = %6
  %36 = load %struct.qib_qp*, %struct.qib_qp** %12, align 8
  %37 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %69 [
    i32 130, label %40
    i32 132, label %40
    i32 128, label %45
    i32 131, label %53
    i32 129, label %61
  ]

40:                                               ; preds = %35, %35
  %41 = load i32, i32* @ib_qib_disable_sma, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %70

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %35, %44
  %46 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %47 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.qib_qp*, %struct.qib_qp** %12, align 8
  %52 = call i32 @qib_ud_rcv(%struct.qib_ibport* %46, %struct.qib_ib_header* %47, i32 %48, i8* %49, i32 %50, %struct.qib_qp* %51)
  br label %70

53:                                               ; preds = %35
  %54 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %55 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.qib_qp*, %struct.qib_qp** %12, align 8
  %60 = call i32 @qib_rc_rcv(%struct.qib_ctxtdata* %54, %struct.qib_ib_header* %55, i32 %56, i8* %57, i32 %58, %struct.qib_qp* %59)
  br label %70

61:                                               ; preds = %35
  %62 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %63 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.qib_qp*, %struct.qib_qp** %12, align 8
  %68 = call i32 @qib_uc_rcv(%struct.qib_ibport* %62, %struct.qib_ib_header* %63, i32 %64, i8* %65, i32 %66, %struct.qib_qp* %67)
  br label %70

69:                                               ; preds = %35
  br label %70

70:                                               ; preds = %69, %61, %53, %45, %43
  br label %71

71:                                               ; preds = %70, %30
  %72 = load %struct.qib_qp*, %struct.qib_qp** %12, align 8
  %73 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock(i32* %73)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qib_ud_rcv(%struct.qib_ibport*, %struct.qib_ib_header*, i32, i8*, i32, %struct.qib_qp*) #1

declare dso_local i32 @qib_rc_rcv(%struct.qib_ctxtdata*, %struct.qib_ib_header*, i32, i8*, i32, %struct.qib_qp*) #1

declare dso_local i32 @qib_uc_rcv(%struct.qib_ibport*, %struct.qib_ib_header*, i32, i8*, i32, %struct.qib_qp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
