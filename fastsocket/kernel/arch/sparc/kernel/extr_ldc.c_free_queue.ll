; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_free_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_packet = type { i32 }

@LDC_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.ldc_packet*)* @free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_queue(i64 %0, %struct.ldc_packet* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ldc_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %4, align 8
  %7 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %8 = icmp ne %struct.ldc_packet* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %20

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @LDC_PACKET_SIZE, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @get_order(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %17 = ptrtoint %struct.ldc_packet* %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @free_pages(i64 %17, i64 %18)
  br label %20

20:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
