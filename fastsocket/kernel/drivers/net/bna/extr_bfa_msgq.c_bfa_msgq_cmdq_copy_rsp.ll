; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_cmdq_copy_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_cmdq_copy_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_cmdq = type { i32, %struct.TYPE_10__, %struct.TYPE_8__*, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.bfi_msgq_h2i_cmdq_copy_rsp = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@BFI_MC_MSGQ = common dso_local global i32 0, align 4
@BFI_MSGQ_H2I_CMDQ_COPY_RSP = common dso_local global i32 0, align 4
@BFI_CMD_COPY_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_cmdq*)* @bfa_msgq_cmdq_copy_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_msgq_cmdq_copy_rsp(%struct.bfa_msgq_cmdq* %0) #0 {
  %2 = alloca %struct.bfa_msgq_cmdq*, align 8
  %3 = alloca %struct.bfi_msgq_h2i_cmdq_copy_rsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.bfa_msgq_cmdq* %0, %struct.bfa_msgq_cmdq** %2, align 8
  %6 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = bitcast i32* %10 to %struct.bfi_msgq_h2i_cmdq_copy_rsp*
  store %struct.bfi_msgq_h2i_cmdq_copy_rsp* %11, %struct.bfi_msgq_h2i_cmdq_copy_rsp** %3, align 8
  %12 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load %struct.bfi_msgq_h2i_cmdq_copy_rsp*, %struct.bfi_msgq_h2i_cmdq_copy_rsp** %3, align 8
  %18 = call i32 @memset(%struct.bfi_msgq_h2i_cmdq_copy_rsp* %17, i32 0, i32 8)
  %19 = load %struct.bfi_msgq_h2i_cmdq_copy_rsp*, %struct.bfi_msgq_h2i_cmdq_copy_rsp** %3, align 8
  %20 = getelementptr inbounds %struct.bfi_msgq_h2i_cmdq_copy_rsp, %struct.bfi_msgq_h2i_cmdq_copy_rsp* %19, i32 0, i32 1
  %21 = load i32, i32* @BFI_MC_MSGQ, align 4
  %22 = load i32, i32* @BFI_MSGQ_H2I_CMDQ_COPY_RSP, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfi_h2i_set(i32 %25, i32 %21, i32 %22, i32 0)
  %27 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @htons(i32 %29)
  %31 = load %struct.bfi_msgq_h2i_cmdq_copy_rsp*, %struct.bfi_msgq_h2i_cmdq_copy_rsp** %3, align 8
  %32 = getelementptr inbounds %struct.bfi_msgq_h2i_cmdq_copy_rsp, %struct.bfi_msgq_h2i_cmdq_copy_rsp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %36 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BFI_CMD_COPY_SZ, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @BFI_CMD_COPY_SZ, align 4
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %44 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  store i32 %47, i32* %4, align 4
  %48 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %49 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %5, align 8
  %53 = load %struct.bfi_msgq_h2i_cmdq_copy_rsp*, %struct.bfi_msgq_h2i_cmdq_copy_rsp** %3, align 8
  %54 = getelementptr inbounds %struct.bfi_msgq_h2i_cmdq_copy_rsp, %struct.bfi_msgq_h2i_cmdq_copy_rsp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @memcpy(i32 %55, i32* %56, i32 %57)
  %59 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %60 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %66 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %71 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %75 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %80 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %79, i32 0, i32 1
  %81 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %82 = call i32 @bfa_nw_ioc_mbox_queue(i32 %78, %struct.TYPE_10__* %80, i32 (%struct.bfa_msgq_cmdq*)* @bfa_msgq_cmdq_copy_next, %struct.bfa_msgq_cmdq* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %46
  %85 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %86 = call i32 @bfa_msgq_cmdq_copy_next(%struct.bfa_msgq_cmdq* %85)
  br label %87

87:                                               ; preds = %84, %46
  ret void
}

declare dso_local i32 @memset(%struct.bfi_msgq_h2i_cmdq_copy_rsp*, i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_queue(i32, %struct.TYPE_10__*, i32 (%struct.bfa_msgq_cmdq*)*, %struct.bfa_msgq_cmdq*) #1

declare dso_local i32 @bfa_msgq_cmdq_copy_next(%struct.bfa_msgq_cmdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
