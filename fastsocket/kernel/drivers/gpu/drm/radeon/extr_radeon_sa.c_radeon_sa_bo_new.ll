; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sa_manager = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_sa_bo = type { i32, i32, i32*, %struct.radeon_sa_manager* }
%struct.radeon_fence = type { i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sa_bo_new(%struct.radeon_device* %0, %struct.radeon_sa_manager* %1, %struct.radeon_sa_bo** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_sa_manager*, align 8
  %10 = alloca %struct.radeon_sa_bo**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store %struct.radeon_sa_manager* %1, %struct.radeon_sa_manager** %9, align 8
  store %struct.radeon_sa_bo** %2, %struct.radeon_sa_bo*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca %struct.radeon_fence*, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %29 = icmp ugt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %34 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ugt i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.radeon_sa_bo* @kmalloc(i32 24, i32 %39)
  %41 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  store %struct.radeon_sa_bo* %40, %struct.radeon_sa_bo** %41, align 8
  %42 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  %43 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %42, align 8
  %44 = icmp eq %struct.radeon_sa_bo* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %6
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %156

48:                                               ; preds = %6
  %49 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %50 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  %51 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %50, align 8
  %52 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %51, i32 0, i32 3
  store %struct.radeon_sa_manager* %49, %struct.radeon_sa_manager** %52, align 8
  %53 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  %54 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %53, align 8
  %55 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  %57 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %56, align 8
  %58 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %57, i32 0, i32 1
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  %61 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %60, align 8
  %62 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %61, i32 0, i32 0
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  br label %68

68:                                               ; preds = %142, %48
  store i32 0, i32* %17, align 4
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %23, i64 %75
  store %struct.radeon_fence* null, %struct.radeon_fence** %76, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %26, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %69

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %100, %83
  %85 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %86 = call i32 @radeon_sa_bo_try_free(%struct.radeon_sa_manager* %85)
  %87 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %88 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  %89 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @radeon_sa_bo_try_alloc(%struct.radeon_sa_manager* %87, %struct.radeon_sa_bo* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %96 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %156

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %102 = call i64 @radeon_sa_bo_next_hole(%struct.radeon_sa_manager* %101, %struct.radeon_fence** %23, i32* %26)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %84, label %104

104:                                              ; preds = %100
  %105 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %106 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %110 = call i32 @radeon_fence_wait_any(%struct.radeon_device* %109, %struct.radeon_fence** %23, i32 0)
  store i32 %110, i32* %18, align 4
  %111 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %112 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @spin_lock(i32* %113)
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %104
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %124 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %123, i32 0, i32 1
  %125 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @radeon_sa_event(%struct.radeon_sa_manager* %125, i32 %126, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @wait_event_interruptible_locked(i32 %130, i32 %128)
  store i32 %131, i32* %18, align 4
  br label %141

132:                                              ; preds = %119, %104
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @ENOENT, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %137, %132
  br label %141

141:                                              ; preds = %140, %122
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br i1 %145, label %68, label %146

146:                                              ; preds = %142
  %147 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %148 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i32 @spin_unlock(i32* %149)
  %151 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  %152 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %151, align 8
  %153 = call i32 @kfree(%struct.radeon_sa_bo* %152)
  %154 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %10, align 8
  store %struct.radeon_sa_bo* null, %struct.radeon_sa_bo** %154, align 8
  %155 = load i32, i32* %18, align 4
  store i32 %155, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %156

156:                                              ; preds = %146, %94, %45
  %157 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local %struct.radeon_sa_bo* @kmalloc(i32, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @radeon_sa_bo_try_free(%struct.radeon_sa_manager*) #2

declare dso_local i64 @radeon_sa_bo_try_alloc(%struct.radeon_sa_manager*, %struct.radeon_sa_bo*, i32, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i64 @radeon_sa_bo_next_hole(%struct.radeon_sa_manager*, %struct.radeon_fence**, i32*) #2

declare dso_local i32 @radeon_fence_wait_any(%struct.radeon_device*, %struct.radeon_fence**, i32) #2

declare dso_local i32 @wait_event_interruptible_locked(i32, i32) #2

declare dso_local i32 @radeon_sa_event(%struct.radeon_sa_manager*, i32, i32) #2

declare dso_local i32 @kfree(%struct.radeon_sa_bo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
