; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_cee.c_bfa_nw_cee_get_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_cee.c_bfa_nw_cee_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee = type { i32, %struct.TYPE_6__, i32*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.bfa_cee_attr* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.bfa_cee_attr = type { i32 }
%struct.bfi_cee_get_req = type { i32, i32 }

@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@BFA_STATUS_DEVBUSY = common dso_local global i32 0, align 4
@BFI_MC_CEE = common dso_local global i32 0, align 4
@BFI_CEE_H2I_GET_CFG_REQ = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_nw_cee_get_attr(%struct.bfa_cee* %0, %struct.bfa_cee_attr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfa_cee*, align 8
  %7 = alloca %struct.bfa_cee_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bfi_cee_get_req*, align 8
  store %struct.bfa_cee* %0, %struct.bfa_cee** %6, align 8
  store %struct.bfa_cee_attr* %1, %struct.bfa_cee_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %12 = icmp ne %struct.bfa_cee* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %15 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %13, %4
  %19 = phi i1 [ false, %4 ], [ %17, %13 ]
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %24 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bfa_nw_ioc_is_operational(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %18
  %31 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @BFA_STATUS_DEVBUSY, align 4
  store i32 %36, i32* %5, align 4
  br label %81

37:                                               ; preds = %30
  %38 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %39 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %41 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.bfi_cee_get_req*
  store %struct.bfi_cee_get_req* %44, %struct.bfi_cee_get_req** %10, align 8
  %45 = load %struct.bfa_cee_attr*, %struct.bfa_cee_attr** %7, align 8
  %46 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %47 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %46, i32 0, i32 5
  store %struct.bfa_cee_attr* %45, %struct.bfa_cee_attr** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %50 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %54 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.bfi_cee_get_req*, %struct.bfi_cee_get_req** %10, align 8
  %57 = getelementptr inbounds %struct.bfi_cee_get_req, %struct.bfi_cee_get_req* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BFI_MC_CEE, align 4
  %60 = load i32, i32* @BFI_CEE_H2I_GET_CFG_REQ, align 4
  %61 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %62 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bfa_ioc_portid(i32* %63)
  %65 = call i32 @bfi_h2i_set(i32 %58, i32 %59, i32 %60, i32 %64)
  %66 = load %struct.bfi_cee_get_req*, %struct.bfi_cee_get_req** %10, align 8
  %67 = getelementptr inbounds %struct.bfi_cee_get_req, %struct.bfi_cee_get_req* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %70 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bfa_dma_be_addr_set(i32 %68, i32 %72)
  %74 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %75 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.bfa_cee*, %struct.bfa_cee** %6, align 8
  %78 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %77, i32 0, i32 1
  %79 = call i32 @bfa_nw_ioc_mbox_queue(i32* %76, %struct.TYPE_6__* %78, i32* null, i32* null)
  %80 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %37, %35, %28
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bfa_nw_ioc_is_operational(i32*) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32*) #1

declare dso_local i32 @bfa_dma_be_addr_set(i32, i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_queue(i32*, %struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
