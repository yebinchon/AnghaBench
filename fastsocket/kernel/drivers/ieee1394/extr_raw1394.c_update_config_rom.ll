; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_update_config_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_update_config_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32 }
%struct.pending_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.pending_request*)* @update_config_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_config_rom(%struct.file_info* %0, %struct.pending_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca %struct.pending_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store %struct.pending_request* %1, %struct.pending_request** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %10 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i32 %12, i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %23 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @int2ptr(i32 %25)
  %27 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %28 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @copy_from_user(i32* %21, i32 %26, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %62

36:                                               ; preds = %20
  %37 = load %struct.file_info*, %struct.file_info** %4, align 8
  %38 = getelementptr inbounds %struct.file_info, %struct.file_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %42 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %46 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i8
  %50 = call i32 @hpsb_update_config_rom(i32 %39, i32* %40, i32 %44, i8 zeroext %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %52 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @int2ptr(i32 %54)
  %56 = call i64 @copy_to_user(i32 %55, i32* %8, i32 4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %36
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %36
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %69 = call i32 @free_pending_request(%struct.pending_request* %68)
  %70 = load %struct.file_info*, %struct.file_info** %4, align 8
  %71 = getelementptr inbounds %struct.file_info, %struct.file_info* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(i32*, i32, i32) #1

declare dso_local i32 @int2ptr(i32) #1

declare dso_local i32 @hpsb_update_config_rom(i32, i32*, i32, i8 zeroext) #1

declare dso_local i64 @copy_to_user(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_pending_request(%struct.pending_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
