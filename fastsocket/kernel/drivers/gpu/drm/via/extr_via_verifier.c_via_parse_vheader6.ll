; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_parse_vheader6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_parse_vheader6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*)* @via_parse_vheader6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_parse_vheader6(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32* %17, i32** %10, align 8
  br label %18

18:                                               ; preds = %22, %3
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* %27, align 4
  %30 = call i32 @VIA_WRITE(i32 %26, i32 %29)
  br label %18

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 3
  %40 = sub nsw i32 4, %39
  %41 = load i32*, i32** %10, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %10, align 8
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32*, i32** %10, align 8
  %46 = load i32**, i32*** %5, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32, i32* @state_command, align 4
  ret i32 %47
}

declare dso_local i32 @VIA_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
