; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_get_sdebug_capacity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_get_sdebug_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scsi_debug_virtual_gb = common dso_local global i64 0, align 8
@scsi_debug_sector_size = common dso_local global i32 0, align 4
@sdebug_store_sectors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_sdebug_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sdebug_capacity() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @scsi_debug_virtual_gb, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @scsi_debug_virtual_gb, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @scsi_debug_sector_size, align 4
  %8 = sdiv i32 1073741824, %7
  %9 = mul nsw i32 %6, %8
  store i32 %9, i32* %1, align 4
  br label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @sdebug_store_sectors, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %10, %4
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
