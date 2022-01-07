; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_..libcxgbi.h_cxgbi_ddp_tag_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_..libcxgbi.h_cxgbi_ddp_tag_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_tag_format = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_tag_format*, i32)* @cxgbi_ddp_tag_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_ddp_tag_base(%struct.cxgbi_tag_format* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbi_tag_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxgbi_tag_format* %0, %struct.cxgbi_tag_format** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %10 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %28 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %32 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %35 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %16, %2
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
