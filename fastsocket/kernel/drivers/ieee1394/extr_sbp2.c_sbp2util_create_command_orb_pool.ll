; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2util_create_command_orb_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2util_create_command_orb_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sbp2_command_info = type { i8*, i32, i8*, i32, i32 }

@sbp2_serialize_io = common dso_local global i64 0, align 8
@SBP2_MAX_CMDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp2_lu*)* @sbp2util_create_command_orb_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2util_create_command_orb_pool(%struct.sbp2_lu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbp2_lu*, align 8
  %4 = alloca %struct.sbp2_command_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %3, align 8
  %8 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %9 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load i64, i64* @sbp2_serialize_io, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @SBP2_MAX_CMDS, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 2, %18 ], [ %20, %19 ]
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %72, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.sbp2_command_info* @kzalloc(i32 32, i32 %28)
  store %struct.sbp2_command_info* %29, %struct.sbp2_command_info** %4, align 8
  %30 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %31 = icmp ne %struct.sbp2_command_info* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %86

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %36 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %35, i32 0, i32 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i8* @dma_map_single(%struct.device* %34, i32* %36, i32 4, i32 %37)
  %39 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %40 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %43 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @dma_mapping_error(%struct.device* %41, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %83

48:                                               ; preds = %33
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %51 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %50, i32 0, i32 3
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i8* @dma_map_single(%struct.device* %49, i32* %51, i32 4, i32 %52)
  %54 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %55 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %58 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @dma_mapping_error(%struct.device* %56, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %76

63:                                               ; preds = %48
  %64 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %65 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %64, i32 0, i32 1
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %68 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %67, i32 0, i32 1
  %69 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %70 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %69, i32 0, i32 0
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %23

75:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %89

76:                                               ; preds = %62
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %79 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @DMA_TO_DEVICE, align 4
  %82 = call i32 @dma_unmap_single(%struct.device* %77, i8* %80, i32 4, i32 %81)
  br label %83

83:                                               ; preds = %76, %47
  %84 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %85 = call i32 @kfree(%struct.sbp2_command_info* %84)
  br label %86

86:                                               ; preds = %83, %32
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %75
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.sbp2_command_info* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.sbp2_command_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
