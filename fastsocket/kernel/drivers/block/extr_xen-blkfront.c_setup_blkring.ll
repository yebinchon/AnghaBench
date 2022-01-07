; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_setup_blkring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_setup_blkring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.blkfront_info = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.blkif_sring = type { i32 }

@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allocating shared ring\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@blkif_interrupt = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"blkif\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"bind_evtchn_to_irqhandler failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.blkfront_info*)* @setup_blkring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_blkring(%struct.xenbus_device* %0, %struct.blkfront_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.blkfront_info*, align 8
  %6 = alloca %struct.blkif_sring*, align 8
  %7 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.blkfront_info* %1, %struct.blkfront_info** %5, align 8
  %8 = load i32, i32* @GRANT_INVALID_REF, align 4
  %9 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %10 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @GFP_NOIO, align 4
  %12 = load i32, i32* @__GFP_HIGH, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @__get_free_page(i32 %13)
  %15 = inttoptr i64 %14 to %struct.blkif_sring*
  store %struct.blkif_sring* %15, %struct.blkif_sring** %6, align 8
  %16 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %17 = icmp ne %struct.blkif_sring* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %19, i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %2
  %26 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %27 = call i32 @SHARED_RING_INIT(%struct.blkif_sring* %26)
  %28 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %29 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %28, i32 0, i32 3
  %30 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32 @FRONT_RING_INIT(%struct.TYPE_2__* %29, %struct.blkif_sring* %30, i32 %31)
  %33 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %34 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %37 = call i32 @sg_init_table(i32 %35, i32 %36)
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %39 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %40 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @virt_to_mfn(i32* %42)
  %44 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %38, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %25
  %48 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %49 = ptrtoint %struct.blkif_sring* %48 to i64
  %50 = call i32 @free_page(i64 %49)
  %51 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %52 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %83

54:                                               ; preds = %25
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %57 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %59 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %60 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %59, i32 0, i32 2
  %61 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %58, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %83

65:                                               ; preds = %54
  %66 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %67 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @blkif_interrupt, align 4
  %70 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %71 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %72 = call i32 @bind_evtchn_to_irqhandler(i32 %68, i32 %69, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.blkfront_info* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %76, i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %83

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %82 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %87

83:                                               ; preds = %75, %64, %47
  %84 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %85 = call i32 @blkif_free(%struct.blkfront_info* %84, i32 0)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %79, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @SHARED_RING_INIT(%struct.blkif_sring*) #1

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_2__*, %struct.blkif_sring*, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @xenbus_grant_ring(%struct.xenbus_device*, i32) #1

declare dso_local i32 @virt_to_mfn(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i8*, %struct.blkfront_info*) #1

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
