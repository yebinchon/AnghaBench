; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_enum_isa_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_enum_isa_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, i32, i32, i64, i32 }

@MAX_ISA_DEVICES = common dso_local global i32 0, align 4
@io = common dso_local global i64* null, align 8
@irq = common dso_local global i64* null, align 8
@debug_level = common dso_local global i64 0, align 8
@DEBUG_LEVEL_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"ISA device specified io=%04X,irq=%d,dma=%d\0A\00", align 1
@dma = common dso_local global i64* null, align 8
@DEBUG_LEVEL_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"can't allocate device instance data.\0A\00", align 1
@MGSL_BUS_TYPE_ISA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mgsl_enum_isa_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgsl_enum_isa_devices() #0 {
  %1 = alloca %struct.mgsl_struct*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %95, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAX_ISA_DEVICES, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i64*, i64** @io, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load i64*, i64** @irq, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %7, %3
  %22 = phi i1 [ false, %7 ], [ false, %3 ], [ %20, %14 ]
  br i1 %22, label %23, label %98

23:                                               ; preds = %21
  %24 = load i64, i64* @debug_level, align 8
  %25 = load i64, i64* @DEBUG_LEVEL_INFO, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i64*, i64** @io, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** @irq, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @dma, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %37, i64 %42)
  br label %44

44:                                               ; preds = %27, %23
  %45 = call %struct.mgsl_struct* (...) @mgsl_allocate_device()
  store %struct.mgsl_struct* %45, %struct.mgsl_struct** %1, align 8
  %46 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %47 = icmp ne %struct.mgsl_struct* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @debug_level, align 8
  %50 = load i64, i64* @DEBUG_LEVEL_ERROR, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %95

55:                                               ; preds = %44
  %56 = load i64*, i64** @io, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %63 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i64*, i64** @irq, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %71 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %73 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @irq_canonicalize(i32 %74)
  %76 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %77 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i64*, i64** @dma, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %85 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @MGSL_BUS_TYPE_ISA, align 4
  %87 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %88 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %90 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %89, i32 0, i32 3
  store i32 16, i32* %90, align 4
  %91 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %92 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %94 = call i32 @mgsl_add_device(%struct.mgsl_struct* %93)
  br label %95

95:                                               ; preds = %55, %54
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %3

98:                                               ; preds = %21
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.mgsl_struct* @mgsl_allocate_device(...) #1

declare dso_local i32 @irq_canonicalize(i32) #1

declare dso_local i32 @mgsl_add_device(%struct.mgsl_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
