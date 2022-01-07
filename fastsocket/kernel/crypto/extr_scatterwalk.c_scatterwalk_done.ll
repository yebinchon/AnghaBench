; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_scatterwalk.c_scatterwalk_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_scatterwalk.c_scatterwalk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatter_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scatterwalk_done(%struct.scatter_walk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scatter_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scatter_walk* %0, %struct.scatter_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %8 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @offset_in_page(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @scatterwalk_pagedone(%struct.scatter_walk* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @scatterwalk_pagedone(%struct.scatter_walk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
