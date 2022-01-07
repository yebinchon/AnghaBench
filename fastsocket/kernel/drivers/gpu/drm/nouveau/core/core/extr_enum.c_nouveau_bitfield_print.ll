; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_enum.c_nouveau_bitfield_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_enum.c_nouveau_bitfield_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bitfield = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" (unknown bits 0x%08x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_bitfield_print(%struct.nouveau_bitfield* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_bitfield*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_bitfield* %0, %struct.nouveau_bitfield** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %2
  %6 = load %struct.nouveau_bitfield*, %struct.nouveau_bitfield** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_bitfield, %struct.nouveau_bitfield* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nouveau_bitfield*, %struct.nouveau_bitfield** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_bitfield, %struct.nouveau_bitfield* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.nouveau_bitfield*, %struct.nouveau_bitfield** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_bitfield, %struct.nouveau_bitfield* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.nouveau_bitfield*, %struct.nouveau_bitfield** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_bitfield, %struct.nouveau_bitfield* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %17, %10
  %29 = load %struct.nouveau_bitfield*, %struct.nouveau_bitfield** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_bitfield, %struct.nouveau_bitfield* %29, i32 1
  store %struct.nouveau_bitfield* %30, %struct.nouveau_bitfield** %3, align 8
  br label %5

31:                                               ; preds = %5
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pr_cont(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
