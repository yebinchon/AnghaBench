; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcd_count = common dso_local global i64 0, align 8
@pcd_sector = common dso_local global i32 0, align 4
@pcd_bufblk = common dso_local global i32 0, align 4
@pcd_buf = common dso_local global i32 0, align 4
@pcd_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcd_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_transfer() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i64, i64* @pcd_count, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load i32, i32* @pcd_sector, align 4
  %7 = sdiv i32 %6, 4
  %8 = load i32, i32* @pcd_bufblk, align 4
  %9 = icmp eq i32 %7, %8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i1 [ false, %2 ], [ %9, %5 ]
  br i1 %11, label %12, label %28

12:                                               ; preds = %10
  %13 = load i32, i32* @pcd_sector, align 4
  %14 = srem i32 %13, 4
  %15 = mul nsw i32 %14, 512
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @pcd_buf, align 4
  %17 = load i64, i64* @pcd_buffer, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @memcpy(i32 %16, i64 %20, i32 512)
  %22 = load i64, i64* @pcd_count, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* @pcd_count, align 8
  %24 = load i32, i32* @pcd_buf, align 4
  %25 = add nsw i32 %24, 512
  store i32 %25, i32* @pcd_buf, align 4
  %26 = load i32, i32* @pcd_sector, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @pcd_sector, align 4
  br label %2

28:                                               ; preds = %10
  ret void
}

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
