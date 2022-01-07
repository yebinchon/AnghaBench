; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_verify_mmio_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_verify_mmio_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c"Invalid VIDEO DMA command. Attempt to access 3D- or command burst area.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Invalid VIDEO DMA command. Attempt to access PCI DMA area.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Invalid VIDEO DMA command. Attempt to access VGA registers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_mmio_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_mmio_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 1023
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 3072
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %27

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 3327
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 4864
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %27

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 5119
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %27

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22, %17, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
