; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_update_7322_usrhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_update_7322_usrhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32 }

@IBA7322_HDRHEAD_PKTINT_SHIFT = common dso_local global i32 0, align 4
@ur_rcvegrindexhead = common dso_local global i32 0, align 4
@ur_rcvhdrhead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*, i32, i32, i32, i32)* @qib_update_7322_usrhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_update_7322_usrhead(%struct.qib_ctxtdata* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qib_ctxtdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IBA7322_HDRHEAD_PKTINT_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @adjust_rcv_timeout(%struct.qib_ctxtdata* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %24 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ur_rcvegrindexhead, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %29 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @qib_write_ureg(i32 %25, i32 %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %22, %19
  %33 = call i32 (...) @mmiowb()
  %34 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %35 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ur_rcvhdrhead, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %40 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @qib_write_ureg(i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %44 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ur_rcvhdrhead, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %49 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @qib_write_ureg(i32 %45, i32 %46, i32 %47, i32 %50)
  %52 = call i32 (...) @mmiowb()
  ret void
}

declare dso_local i32 @adjust_rcv_timeout(%struct.qib_ctxtdata*, i32) #1

declare dso_local i32 @qib_write_ureg(i32, i32, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
