; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_..libcxgbi.h_cxgbi_tag_rsvd_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_..libcxgbi.h_cxgbi_tag_rsvd_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_tag_format = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_tag_format*, i32)* @cxgbi_tag_rsvd_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_tag_rsvd_bits(%struct.cxgbi_tag_format* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbi_tag_format*, align 8
  %5 = alloca i32, align 4
  store %struct.cxgbi_tag_format* %0, %struct.cxgbi_tag_format** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @cxgbi_is_ddp_tag(%struct.cxgbi_tag_format* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %13 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %11, %14
  %16 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %17 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @cxgbi_is_ddp_tag(%struct.cxgbi_tag_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
