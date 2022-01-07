; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_wr_id_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_wr_id_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32*, %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*)* @ocrdma_alloc_wr_id_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_alloc_wr_id_tbl(%struct.ocrdma_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_qp*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %3, align 8
  %4 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %5 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 %10, i32 %11)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %15 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %17 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %25 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %35 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %37 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
