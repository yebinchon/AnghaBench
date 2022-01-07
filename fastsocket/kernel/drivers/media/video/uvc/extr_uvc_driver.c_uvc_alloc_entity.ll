; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_alloc_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_alloc_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_entity = type { i32, i32, i32*, i32 }

@UVC_TERM_OUTPUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uvc_entity* (i32, i32, i32, i32)* @uvc_alloc_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uvc_entity* @uvc_alloc_entity(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uvc_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uvc_entity*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @UVC_TERM_OUTPUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = sub i32 %20, 1
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 24, %25
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.uvc_entity* @kzalloc(i32 %31, i32 %32)
  store %struct.uvc_entity* %33, %struct.uvc_entity** %10, align 8
  %34 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %35 = icmp eq %struct.uvc_entity* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store %struct.uvc_entity* null, %struct.uvc_entity** %5, align 8
  br label %56

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %40 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %43 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %46 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %48 = bitcast %struct.uvc_entity* %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 24
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %54 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  store %struct.uvc_entity* %55, %struct.uvc_entity** %5, align 8
  br label %56

56:                                               ; preds = %37, %36
  %57 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  ret %struct.uvc_entity* %57
}

declare dso_local %struct.uvc_entity* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
