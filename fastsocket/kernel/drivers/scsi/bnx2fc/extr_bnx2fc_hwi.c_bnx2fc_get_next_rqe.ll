; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_get_next_rqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_get_next_rqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { i32, i64 }

@BNX2FC_RQ_BUF_SZ = common dso_local global i32 0, align 4
@BNX2FC_RQ_WQES_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bnx2fc_get_next_rqe(%struct.bnx2fc_rport* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bnx2fc_rport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BNX2FC_RQ_BUF_SZ, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %10, i64 %16
  store i8* %17, i8** %6, align 8
  %18 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @BNX2FC_RQ_WQES_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %45

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BNX2FC_RQ_WQES_MAX, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load i32, i32* @BNX2FC_RQ_WQES_MAX, align 4
  %39 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %26
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
