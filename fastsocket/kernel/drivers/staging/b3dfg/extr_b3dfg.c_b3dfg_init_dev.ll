; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_init_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i32, i32, i32, i32, i32, i32, %struct.b3dfg_buffer* }
%struct.b3dfg_buffer = type { i32, i32* }

@B3D_REG_FRM_SIZE = common dso_local global i32 0, align 4
@B3D_REG_HW_CTRL = common dso_local global i32 0, align 4
@b3dfg_nbuf = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@B3DFG_FRAMES_PER_BUFFER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b3dfg_dev*)* @b3dfg_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b3dfg_init_dev(%struct.b3dfg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b3dfg_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b3dfg_buffer*, align 8
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %3, align 8
  %8 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %9 = load i32, i32* @B3D_REG_FRM_SIZE, align 4
  %10 = call i32 @b3dfg_read32(%struct.b3dfg_dev* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %12 = load i32, i32* @B3D_REG_HW_CTRL, align 4
  %13 = call i32 @b3dfg_write32(%struct.b3dfg_dev* %11, i32 %12, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 4096
  %16 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %17 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @b3dfg_nbuf, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 16, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.b3dfg_buffer* @kzalloc(i32 %21, i32 %22)
  %24 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %25 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %24, i32 0, i32 6
  store %struct.b3dfg_buffer* %23, %struct.b3dfg_buffer** %25, align 8
  %26 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %27 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %26, i32 0, i32 6
  %28 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %27, align 8
  %29 = icmp ne %struct.b3dfg_buffer* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %98

31:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %76, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @b3dfg_nbuf, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %38 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %37, i32 0, i32 6
  %39 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %39, i64 %41
  store %struct.b3dfg_buffer* %42, %struct.b3dfg_buffer** %7, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %69, %36
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @B3DFG_FRAMES_PER_BUFFER, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %49 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @kmalloc(i32 %50, i32 %51)
  %53 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %7, align 8
  %60 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %47
  br label %95

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %43

72:                                               ; preds = %43
  %73 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %73, i32 0, i32 0
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %32

79:                                               ; preds = %32
  %80 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %81 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %80, i32 0, i32 5
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %84 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %83, i32 0, i32 4
  %85 = call i32 @init_waitqueue_head(i32* %84)
  %86 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %87 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %86, i32 0, i32 3
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %90 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %89, i32 0, i32 2
  %91 = call i32 @spin_lock_init(i32* %90)
  %92 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %93 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %92, i32 0, i32 1
  %94 = call i32 @spin_lock_init(i32* %93)
  store i32 0, i32* %2, align 4
  br label %101

95:                                               ; preds = %67
  %96 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %97 = call i32 @free_all_frame_buffers(%struct.b3dfg_dev* %96)
  br label %98

98:                                               ; preds = %95, %30
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %98, %79
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @b3dfg_read32(%struct.b3dfg_dev*, i32) #1

declare dso_local i32 @b3dfg_write32(%struct.b3dfg_dev*, i32, i32) #1

declare dso_local %struct.b3dfg_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @free_all_frame_buffers(%struct.b3dfg_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
