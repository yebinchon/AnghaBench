; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_apply_r_mips_hi16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_apply_r_mips_hi16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_hi16 = type { %struct.mips_hi16*, i32, i32* }
%struct.module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mips_hi16_list = common dso_local global %struct.mips_hi16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i32)* @apply_r_mips_hi16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_mips_hi16(%struct.module* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mips_hi16*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mips_hi16* @kmalloc(i32 24, i32 %9)
  store %struct.mips_hi16* %10, %struct.mips_hi16** %8, align 8
  %11 = load %struct.mips_hi16*, %struct.mips_hi16** %8, align 8
  %12 = icmp ne %struct.mips_hi16* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.mips_hi16*, %struct.mips_hi16** %8, align 8
  %19 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mips_hi16*, %struct.mips_hi16** %8, align 8
  %22 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mips_hi16*, %struct.mips_hi16** @mips_hi16_list, align 8
  %24 = load %struct.mips_hi16*, %struct.mips_hi16** %8, align 8
  %25 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %24, i32 0, i32 0
  store %struct.mips_hi16* %23, %struct.mips_hi16** %25, align 8
  %26 = load %struct.mips_hi16*, %struct.mips_hi16** %8, align 8
  store %struct.mips_hi16* %26, %struct.mips_hi16** @mips_hi16_list, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %16, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.mips_hi16* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
