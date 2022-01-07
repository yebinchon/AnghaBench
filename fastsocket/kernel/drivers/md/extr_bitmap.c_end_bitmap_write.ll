; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_end_bitmap_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_end_bitmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.bitmap* }
%struct.bitmap = type { i32, i32, i32 }

@BITMAP_WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @end_bitmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_bitmap_write(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 0
  %8 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  store %struct.bitmap* %8, %struct.bitmap** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @BITMAP_WRITE_ERROR, align 4
  %13 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 2
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %18 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %17, i32 0, i32 1
  %19 = call i64 @atomic_dec_and_test(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %23 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %22, i32 0, i32 0
  %24 = call i32 @wake_up(i32* %23)
  br label %25

25:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
