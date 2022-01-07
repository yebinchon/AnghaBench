; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_fwver_get(%struct.bfa_ioc* %0, %struct.bfi_ioc_image_hdr* %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store %struct.bfi_ioc_image_hdr* %1, %struct.bfi_ioc_image_hdr** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %10 = bitcast %struct.bfi_ioc_image_hdr* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @bfa_ioc_smem_pgnum(%struct.bfa_ioc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @writel(i32 %14, i32 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %43, %2
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %26, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @readl(i32 %32)
  %34 = call i32 @swab32(i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %20

46:                                               ; preds = %20
  ret void
}

declare dso_local i32 @bfa_ioc_smem_pgnum(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
