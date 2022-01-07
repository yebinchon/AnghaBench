; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_rsp_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_rsp_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq = type { %struct.bfa_msgq_rspq }
%struct.bfa_msgq_rspq = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@BFI_MSGQ_RSP_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_msgq_rsp_copy(%struct.bfa_msgq* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.bfa_msgq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfa_msgq_rspq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.bfa_msgq* %0, %struct.bfa_msgq** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.bfa_msgq*, %struct.bfa_msgq** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %13, i32 0, i32 0
  store %struct.bfa_msgq_rspq* %14, %struct.bfa_msgq_rspq** %7, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %7, align 8
  %17 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %7, align 8
  %20 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @BFI_MSGQ_RSP_ENTRY_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32*, i32** %11, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %5, align 8
  store i32* %30, i32** %12, align 8
  br label %31

31:                                               ; preds = %44, %3
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @BFI_MSGQ_RSP_ENTRY_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @BFI_MSGQ_RSP_ENTRY_SIZE, align 4
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i64 [ %40, %39 ], [ %43, %41 ]
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @memcpy(i32* %46, i32* %47, i64 %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i32, i32* @BFI_MSGQ_RSP_ENTRY_SIZE, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %12, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %7, align 8
  %59 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @BFA_MSGQ_INDX_ADD(i32 %57, i32 1, i32 %60)
  %62 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %7, align 8
  %63 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @BFI_MSGQ_RSP_ENTRY_SIZE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32*, i32** %11, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %11, align 8
  br label %31

73:                                               ; preds = %31
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @BFA_MSGQ_INDX_ADD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
