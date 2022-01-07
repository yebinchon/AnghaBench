; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-integrity.c_blk_integrity_is_initialized.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-integrity.c_blk_integrity_is_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.blk_integrity = type { i64 }

@bi_unsupported_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_integrity_is_initialized(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.blk_integrity*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = call %struct.blk_integrity* @blk_get_integrity(%struct.gendisk* %4)
  store %struct.blk_integrity* %5, %struct.blk_integrity** %3, align 8
  %6 = load %struct.blk_integrity*, %struct.blk_integrity** %3, align 8
  %7 = icmp ne %struct.blk_integrity* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.blk_integrity*, %struct.blk_integrity** %3, align 8
  %10 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.blk_integrity*, %struct.blk_integrity** %3, align 8
  %15 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @bi_unsupported_name, align 4
  %18 = call i64 @strcmp(i64 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %13, %8, %1
  %21 = phi i1 [ false, %8 ], [ false, %1 ], [ %19, %13 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local %struct.blk_integrity* @blk_get_integrity(%struct.gendisk*) #1

declare dso_local i64 @strcmp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
