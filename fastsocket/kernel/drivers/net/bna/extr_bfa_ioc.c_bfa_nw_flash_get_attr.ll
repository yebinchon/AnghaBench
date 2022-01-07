; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_flash_get_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_flash_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash = type { i32, %struct.TYPE_2__, i32, i32, i32*, i8*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfa_flash_attr = type { i32 }
%struct.bfi_flash_query_req = type { i32, i32 }

@BFA_STATUS_IOC_NON_OP = common dso_local global i32 0, align 4
@BFA_STATUS_DEVBUSY = common dso_local global i32 0, align 4
@BFI_MC_FLASH = common dso_local global i32 0, align 4
@BFI_FLASH_H2I_QUERY_REQ = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_nw_flash_get_attr(%struct.bfa_flash* %0, %struct.bfa_flash_attr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfa_flash*, align 8
  %7 = alloca %struct.bfa_flash_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bfi_flash_query_req*, align 8
  store %struct.bfa_flash* %0, %struct.bfa_flash** %6, align 8
  store %struct.bfa_flash_attr* %1, %struct.bfa_flash_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %12 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.bfi_flash_query_req*
  store %struct.bfi_flash_query_req* %15, %struct.bfi_flash_query_req** %10, align 8
  %16 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %17 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bfa_nw_ioc_is_operational(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @BFA_STATUS_IOC_NON_OP, align 4
  store i32 %22, i32* %5, align 4
  br label %66

23:                                               ; preds = %4
  %24 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %25 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @BFA_STATUS_DEVBUSY, align 4
  store i32 %29, i32* %5, align 4
  br label %66

30:                                               ; preds = %23
  %31 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %35 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %38 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %7, align 8
  %40 = bitcast %struct.bfa_flash_attr* %39 to i32*
  %41 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %42 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load %struct.bfi_flash_query_req*, %struct.bfi_flash_query_req** %10, align 8
  %44 = getelementptr inbounds %struct.bfi_flash_query_req, %struct.bfi_flash_query_req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BFI_MC_FLASH, align 4
  %47 = load i32, i32* @BFI_FLASH_H2I_QUERY_REQ, align 4
  %48 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %49 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bfa_ioc_portid(i32 %50)
  %52 = call i32 @bfi_h2i_set(i32 %45, i32 %46, i32 %47, i32 %51)
  %53 = load %struct.bfi_flash_query_req*, %struct.bfi_flash_query_req** %10, align 8
  %54 = getelementptr inbounds %struct.bfi_flash_query_req, %struct.bfi_flash_query_req* %53, i32 0, i32 0
  %55 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %56 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bfa_alen_set(i32* %54, i32 4, i32 %57)
  %59 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %60 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bfa_flash*, %struct.bfa_flash** %6, align 8
  %63 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %62, i32 0, i32 1
  %64 = call i32 @bfa_nw_ioc_mbox_queue(i32 %61, %struct.TYPE_2__* %63, i32* null, i32* null)
  %65 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %30, %28, %21
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @bfa_nw_ioc_is_operational(i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i32, i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_queue(i32, %struct.TYPE_2__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
