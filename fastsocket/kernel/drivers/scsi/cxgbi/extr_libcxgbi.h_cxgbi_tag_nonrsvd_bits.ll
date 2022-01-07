; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.h_cxgbi_tag_nonrsvd_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.h_cxgbi_tag_nonrsvd_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_tag_format = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_tag_format*, i32)* @cxgbi_tag_nonrsvd_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_tag_nonrsvd_bits(%struct.cxgbi_tag_format* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_tag_format*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxgbi_tag_format* %0, %struct.cxgbi_tag_format** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %3, align 8
  %13 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = sub nsw i32 %15, 1
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  %18 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @cxgbi_is_ddp_tag(%struct.cxgbi_tag_format* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %3, align 8
  %25 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %23, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, 1
  %34 = ashr i32 %30, %33
  %35 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %3, align 8
  %36 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  store i32 %38, i32* %7, align 4
  br label %58

39:                                               ; preds = %2
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 1
  %55 = load i32, i32* %8, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %39, %22
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %59, %60
  ret i32 %61
}

declare dso_local i64 @cxgbi_is_ddp_tag(%struct.cxgbi_tag_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
