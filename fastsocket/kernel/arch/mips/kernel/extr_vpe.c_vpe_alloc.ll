; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_vpe_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_vpe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe = type { i32 }

@MAX_VPES = common dso_local global i32 0, align 4
@VPE_STATE_INUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vpe* @vpe_alloc() #0 {
  %1 = alloca %struct.vpe*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpe*, align 8
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MAX_VPES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.vpe* @get_vpe(i32 %9)
  store %struct.vpe* %10, %struct.vpe** %3, align 8
  %11 = icmp ne %struct.vpe* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @VPE_STATE_INUSE, align 4
  %14 = load %struct.vpe*, %struct.vpe** %3, align 8
  %15 = getelementptr inbounds %struct.vpe, %struct.vpe* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vpe*, %struct.vpe** %3, align 8
  store %struct.vpe* %16, %struct.vpe** %1, align 8
  br label %22

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %4

21:                                               ; preds = %4
  store %struct.vpe* null, %struct.vpe** %1, align 8
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.vpe*, %struct.vpe** %1, align 8
  ret %struct.vpe* %23
}

declare dso_local %struct.vpe* @get_vpe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
