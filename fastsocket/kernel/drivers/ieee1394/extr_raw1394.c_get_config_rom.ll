; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_get_config_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_get_config_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pending_request = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR1212_CONFIG_ROM_SPACE_OFFSET = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.pending_request*)* @get_config_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_config_rom(%struct.file_info* %0, %struct.pending_request* %1) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
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
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.file_info*, %struct.file_info** %4, align 8
  %22 = getelementptr inbounds %struct.file_info, %struct.file_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* @CSR1212_CONFIG_ROM_SPACE_OFFSET, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %30 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @csr1212_read(%struct.TYPE_10__* %26, i32 %27, i32* %28, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %35 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @int2ptr(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %41 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @copy_to_user(i32 %38, i32* %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %20
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %20
  %50 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %51 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @int2ptr(i32 %53)
  %55 = load %struct.file_info*, %struct.file_info** %4, align 8
  %56 = getelementptr inbounds %struct.file_info, %struct.file_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i64 @copy_to_user(i32 %54, i32* %63, i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %49
  %70 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %71 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @int2ptr(i32 %73)
  %75 = load %struct.file_info*, %struct.file_info** %4, align 8
  %76 = getelementptr inbounds %struct.file_info, %struct.file_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = call i64 @copy_to_user(i32 %74, i32* %79, i32 4)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %69
  %86 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %87 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @int2ptr(i32 %89)
  %91 = call i64 @copy_to_user(i32 %90, i32* %8, i32 4)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EFAULT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %85
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load i32, i32* %6, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %103 = call i32 @free_pending_request(%struct.pending_request* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %17
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @csr1212_read(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i64 @copy_to_user(i32, i32*, i32) #1

declare dso_local i32 @int2ptr(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_pending_request(%struct.pending_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
