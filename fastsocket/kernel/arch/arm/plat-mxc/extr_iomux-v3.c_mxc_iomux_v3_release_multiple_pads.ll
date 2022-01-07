; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_iomux-v3.c_mxc_iomux_v3_release_multiple_pads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_iomux-v3.c_mxc_iomux_v3_release_multiple_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pad_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mxc_iomux_v3_release_multiple_pads(%struct.pad_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.pad_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pad_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.pad_desc* %0, %struct.pad_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  store %struct.pad_desc* %7, %struct.pad_desc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %17, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.pad_desc*, %struct.pad_desc** %5, align 8
  %14 = call i32 @mxc_iomux_v3_release_pad(%struct.pad_desc* %13)
  %15 = load %struct.pad_desc*, %struct.pad_desc** %5, align 8
  %16 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %15, i32 1
  store %struct.pad_desc* %16, %struct.pad_desc** %5, align 8
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %8

20:                                               ; preds = %8
  ret void
}

declare dso_local i32 @mxc_iomux_v3_release_pad(%struct.pad_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
