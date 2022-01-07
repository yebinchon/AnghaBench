; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_destroy_dmaring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_destroy_dmaring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, i32, i32, %struct.b43_dmaring*, %struct.b43_dmaring*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*, i8*)* @b43_destroy_dmaring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_destroy_dmaring(%struct.b43_dmaring* %0, i8* %1) #0 {
  %3 = alloca %struct.b43_dmaring*, align 8
  %4 = alloca i8*, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %6 = icmp ne %struct.b43_dmaring* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %25

8:                                                ; preds = %2
  %9 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %10 = call i32 @dmacontroller_cleanup(%struct.b43_dmaring* %9)
  %11 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %12 = call i32 @free_all_descbuffers(%struct.b43_dmaring* %11)
  %13 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %14 = call i32 @free_ringmemory(%struct.b43_dmaring* %13)
  %15 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %16 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %15, i32 0, i32 4
  %17 = load %struct.b43_dmaring*, %struct.b43_dmaring** %16, align 8
  %18 = call i32 @kfree(%struct.b43_dmaring* %17)
  %19 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %20 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %19, i32 0, i32 3
  %21 = load %struct.b43_dmaring*, %struct.b43_dmaring** %20, align 8
  %22 = call i32 @kfree(%struct.b43_dmaring* %21)
  %23 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %24 = call i32 @kfree(%struct.b43_dmaring* %23)
  br label %25

25:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @dmacontroller_cleanup(%struct.b43_dmaring*) #1

declare dso_local i32 @free_all_descbuffers(%struct.b43_dmaring*) #1

declare dso_local i32 @free_ringmemory(%struct.b43_dmaring*) #1

declare dso_local i32 @kfree(%struct.b43_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
