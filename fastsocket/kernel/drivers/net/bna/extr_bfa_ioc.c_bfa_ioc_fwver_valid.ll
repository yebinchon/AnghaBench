; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_fwver_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_fwver_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }
%struct.bfi_ioc_image_hdr = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*, i64)* @bfa_ioc_fwver_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_fwver_valid(%struct.bfa_ioc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bfi_ioc_image_hdr, align 8
  %7 = alloca %struct.bfi_ioc_image_hdr*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %9 = call i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc* %8, %struct.bfi_ioc_image_hdr* %6)
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %11 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %10)
  %12 = call i64 @bfa_cb_image_get_chunk(i32 %11, i32 0)
  %13 = inttoptr i64 %12 to %struct.bfi_ioc_image_hdr*
  store %struct.bfi_ioc_image_hdr* %13, %struct.bfi_ioc_image_hdr** %7, align 8
  %14 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @swab32(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %30 = call i32 @bfa_nw_ioc_fwver_cmp(%struct.bfa_ioc* %29, %struct.bfi_ioc_image_hdr* %6)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %27, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

declare dso_local i64 @bfa_cb_image_get_chunk(i32, i32) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #1

declare dso_local i64 @swab32(i32) #1

declare dso_local i32 @bfa_nw_ioc_fwver_cmp(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
