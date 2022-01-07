; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_free_device_ib_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_free_device_ib_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_device = type { i32, i32*, i32*, i32, i32, i32**, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_device*)* @iser_free_device_ib_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_free_device_ib_res(%struct.iser_device* %0) #0 {
  %2 = alloca %struct.iser_device*, align 8
  %3 = alloca i32, align 4
  store %struct.iser_device* %0, %struct.iser_device** %2, align 8
  %4 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %5 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %52, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %13 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %10
  %17 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %18 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @tasklet_kill(i32* %22)
  %24 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %25 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %24, i32 0, i32 6
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ib_destroy_cq(i32* %30)
  %32 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %33 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %32, i32 0, i32 5
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ib_destroy_cq(i32* %38)
  %40 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %41 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %40, i32 0, i32 6
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  %46 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %47 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %46, i32 0, i32 5
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %16
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %10

55:                                               ; preds = %10
  %56 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %57 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %56, i32 0, i32 4
  %58 = call i32 @ib_unregister_event_handler(i32* %57)
  %59 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %60 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ib_dereg_mr(i32* %61)
  %63 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %64 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ib_dealloc_pd(i32* %65)
  %67 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %68 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @kfree(i32 %69)
  %71 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %72 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %74 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ib_destroy_cq(i32*) #1

declare dso_local i32 @ib_unregister_event_handler(i32*) #1

declare dso_local i32 @ib_dereg_mr(i32*) #1

declare dso_local i32 @ib_dealloc_pd(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
