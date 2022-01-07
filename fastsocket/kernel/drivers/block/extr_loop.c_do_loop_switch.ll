; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_loop_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_loop_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.switch_request = type { i32, %struct.file* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop_device*, %struct.switch_request*)* @do_loop_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_loop_switch(%struct.loop_device* %0, %struct.switch_request* %1) #0 {
  %3 = alloca %struct.loop_device*, align 8
  %4 = alloca %struct.switch_request*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  store %struct.loop_device* %0, %struct.loop_device** %3, align 8
  store %struct.switch_request* %1, %struct.switch_request** %4, align 8
  %8 = load %struct.switch_request*, %struct.switch_request** %4, align 8
  %9 = getelementptr inbounds %struct.switch_request, %struct.switch_request* %8, i32 0, i32 1
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %5, align 8
  %11 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %12 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %11, i32 0, i32 2
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %6, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = icmp ne %struct.file* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %7, align 8
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.address_space*, %struct.address_space** %22, align 8
  %24 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %25 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mapping_set_gfp_mask(%struct.address_space* %23, i32 %26)
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %30 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %29, i32 0, i32 2
  store %struct.file* %28, %struct.file** %30, align 8
  %31 = load %struct.address_space*, %struct.address_space** %7, align 8
  %32 = getelementptr inbounds %struct.address_space, %struct.address_space* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @S_ISBLK(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %17
  %39 = load %struct.address_space*, %struct.address_space** %7, align 8
  %40 = getelementptr inbounds %struct.address_space, %struct.address_space* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %48

46:                                               ; preds = %17
  %47 = load i32, i32* @PAGE_SIZE, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi i32 [ %45, %38 ], [ %47, %46 ]
  %50 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %51 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.address_space*, %struct.address_space** %7, align 8
  %53 = call i32 @mapping_gfp_mask(%struct.address_space* %52)
  %54 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %55 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.address_space*, %struct.address_space** %7, align 8
  %57 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %58 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @__GFP_IO, align 4
  %61 = load i32, i32* @__GFP_FS, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %59, %63
  %65 = call i32 @mapping_set_gfp_mask(%struct.address_space* %56, i32 %64)
  br label %66

66:                                               ; preds = %48, %16
  %67 = load %struct.switch_request*, %struct.switch_request** %4, align 8
  %68 = getelementptr inbounds %struct.switch_request, %struct.switch_request* %67, i32 0, i32 0
  %69 = call i32 @complete(i32* %68)
  ret void
}

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
