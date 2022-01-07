; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_..libcxgbi.h_cxgbi_is_ddp_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_..libcxgbi.h_cxgbi_is_ddp_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_tag_format = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_tag_format*, i32)* @cxgbi_is_ddp_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_is_ddp_tag(%struct.cxgbi_tag_format* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_tag_format*, align 8
  %4 = alloca i32, align 4
  store %struct.cxgbi_tag_format* %0, %struct.cxgbi_tag_format** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %3, align 8
  %7 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 1, %13
  %15 = and i32 %5, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
