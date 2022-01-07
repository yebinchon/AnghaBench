; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_no_bufs_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_no_bufs_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i32, i32, i32 }
%struct.ipath_ibdev = type { i32, i32, i32, i32 }

@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_PROCESS_SEND_OK = common dso_local global i32 0, align 4
@IPATH_S_WAITING = common dso_local global i32 0, align 4
@IPATH_S_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_qp*, %struct.ipath_ibdev*)* @ipath_no_bufs_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_no_bufs_available(%struct.ipath_qp* %0, %struct.ipath_ibdev* %1) #0 {
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca %struct.ipath_ibdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipath_qp* %0, %struct.ipath_qp** %3, align 8
  store %struct.ipath_ibdev* %1, %struct.ipath_ibdev** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %8 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32*, i32** @ib_ipath_state_ops, align 8
  %12 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPATH_PROCESS_SEND_OK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %22 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @IPATH_S_WAITING, align 4
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @IPATH_S_BUSY, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %33 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %37 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %36, i32 0, i32 1
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %40 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %39, i32 0, i32 2
  %41 = call i64 @list_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %20
  %44 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %45 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %44, i32 0, i32 2
  %46 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %47 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %46, i32 0, i32 2
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %43, %20
  %50 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %51 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  br label %54

53:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %56 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %55, i32 0, i32 1
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %63 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %66 = call i32 @want_buffer(i32 %64, %struct.ipath_qp* %65)
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @want_buffer(i32, %struct.ipath_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
