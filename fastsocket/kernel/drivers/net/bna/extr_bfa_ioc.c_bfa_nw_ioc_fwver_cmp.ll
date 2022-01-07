; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }
%struct.bfi_ioc_image_hdr = type { i64* }

@BFI_IOC_MD5SUM_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_nw_ioc_fwver_cmp(%struct.bfa_ioc* %0, %struct.bfi_ioc_image_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %6 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store %struct.bfi_ioc_image_hdr* %1, %struct.bfi_ioc_image_hdr** %5, align 8
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %9 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %8)
  %10 = call i64 @bfa_cb_image_get_chunk(i32 %9, i32 0)
  %11 = inttoptr i64 %10 to %struct.bfi_ioc_image_hdr*
  store %struct.bfi_ioc_image_hdr* %11, %struct.bfi_ioc_image_hdr** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @BFI_IOC_MD5SUM_SZ, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %23, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %38

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %12

37:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @bfa_cb_image_get_chunk(i32, i32) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
