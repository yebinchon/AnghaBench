; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dcb.c_dcb_outp_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dcb.c_dcb_outp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.dcb_output = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_outp_match(%struct.nouveau_bios* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.dcb_output* %5) #0 {
  %7 = alloca %struct.nouveau_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dcb_output*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.dcb_output* %5, %struct.dcb_output** %12, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %40, %6
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %17 = load i32, i32* %14, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %14, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.dcb_output*, %struct.dcb_output** %12, align 8
  %22 = call i32 @dcb_outp_parse(%struct.nouveau_bios* %16, i32 %17, i32* %19, i32* %20, %struct.dcb_output* %21)
  store i32 %22, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load %struct.dcb_output*, %struct.dcb_output** %12, align 8
  %26 = call i32 @dcb_outp_hasht(%struct.dcb_output* %25)
  %27 = and i32 %26, 255
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.dcb_output*, %struct.dcb_output** %12, align 8
  %33 = call i32 @dcb_outp_hashm(%struct.dcb_output* %32)
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %24
  br label %15

41:                                               ; preds = %38, %15
  %42 = load i32, i32* %13, align 4
  ret i32 %42
}

declare dso_local i32 @dcb_outp_parse(%struct.nouveau_bios*, i32, i32*, i32*, %struct.dcb_output*) #1

declare dso_local i32 @dcb_outp_hasht(%struct.dcb_output*) #1

declare dso_local i32 @dcb_outp_hashm(%struct.dcb_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
