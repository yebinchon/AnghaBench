; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.h_cxgbi_set_non_ddp_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.h_cxgbi_set_non_ddp_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_tag_format = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_tag_format*, i32)* @cxgbi_set_non_ddp_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_set_non_ddp_tag(%struct.cxgbi_tag_format* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbi_tag_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cxgbi_tag_format* %0, %struct.cxgbi_tag_format** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %11 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %14 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = sub nsw i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %32, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, 1
  %42 = ashr i32 %38, %41
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %46, %47
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 1, %50
  %52 = or i32 %48, %51
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %25, %2
  %54 = load i32, i32* %5, align 4
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 1, %56
  %58 = or i32 %54, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
