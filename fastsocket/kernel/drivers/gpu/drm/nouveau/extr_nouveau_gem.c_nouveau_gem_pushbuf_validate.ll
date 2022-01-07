; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_nouveau_gem_pushbuf_bo = type { i32 }
%struct.validate_op = type { i32, i32, i32 }
%struct.nouveau_cli = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"validate_init\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"validate vram_list\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"validate gart_list\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"validate both_list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.drm_file*, %struct.drm_nouveau_gem_pushbuf_bo*, i32, i32, %struct.validate_op*, i32*)* @nouveau_gem_pushbuf_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_pushbuf_validate(%struct.nouveau_channel* %0, %struct.drm_file* %1, %struct.drm_nouveau_gem_pushbuf_bo* %2, i32 %3, i32 %4, %struct.validate_op* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_channel*, align 8
  %10 = alloca %struct.drm_file*, align 8
  %11 = alloca %struct.drm_nouveau_gem_pushbuf_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.validate_op*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nouveau_cli*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %9, align 8
  store %struct.drm_file* %1, %struct.drm_file** %10, align 8
  store %struct.drm_nouveau_gem_pushbuf_bo* %2, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.validate_op* %5, %struct.validate_op** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %20 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %19)
  store %struct.nouveau_cli* %20, %struct.nouveau_cli** %16, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %22 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %21, i32 0, i32 2
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %25 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %28 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %140

33:                                               ; preds = %7
  %34 = load %struct.nouveau_channel*, %struct.nouveau_channel** %9, align 8
  %35 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %36 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %39 = call i32 @validate_init(%struct.nouveau_channel* %34, %struct.drm_file* %35, %struct.drm_nouveau_gem_pushbuf_bo* %36, i32 %37, %struct.validate_op* %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %33
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @ERESTARTSYS, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %50 = call i32 @NV_ERROR(%struct.nouveau_cli* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %8, align 4
  br label %140

53:                                               ; preds = %33
  %54 = load %struct.nouveau_channel*, %struct.nouveau_channel** %9, align 8
  %55 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %56 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %57 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %56, i32 0, i32 2
  %58 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @validate_list(%struct.nouveau_channel* %54, %struct.nouveau_cli* %55, i32* %57, %struct.drm_nouveau_gem_pushbuf_bo* %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %53
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @ERESTARTSYS, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %73 = call i32 @NV_ERROR(%struct.nouveau_cli* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %76 = call i32 @validate_fini(%struct.validate_op* %75, i32* null)
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %8, align 4
  br label %140

78:                                               ; preds = %53
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %18, align 4
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %9, align 8
  %83 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %84 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %85 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %84, i32 0, i32 1
  %86 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @validate_list(%struct.nouveau_channel* %82, %struct.nouveau_cli* %83, i32* %85, %struct.drm_nouveau_gem_pushbuf_bo* %86, i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %78
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @ERESTARTSYS, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %101 = call i32 @NV_ERROR(%struct.nouveau_cli* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %104 = call i32 @validate_fini(%struct.validate_op* %103, i32* null)
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %8, align 4
  br label %140

106:                                              ; preds = %78
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %18, align 4
  %110 = load %struct.nouveau_channel*, %struct.nouveau_channel** %9, align 8
  %111 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %112 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %113 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %112, i32 0, i32 0
  %114 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @validate_list(%struct.nouveau_channel* %110, %struct.nouveau_cli* %111, i32* %113, %struct.drm_nouveau_gem_pushbuf_bo* %114, i32 %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %106
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @ERESTARTSYS, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %129 = call i32 @NV_ERROR(%struct.nouveau_cli* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %132 = call i32 @validate_fini(%struct.validate_op* %131, i32* null)
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %8, align 4
  br label %140

134:                                              ; preds = %106
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32*, i32** %15, align 8
  store i32 %138, i32* %139, align 4
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %134, %130, %102, %74, %51, %32
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @validate_init(%struct.nouveau_channel*, %struct.drm_file*, %struct.drm_nouveau_gem_pushbuf_bo*, i32, %struct.validate_op*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_cli*, i8*) #1

declare dso_local i32 @validate_list(%struct.nouveau_channel*, %struct.nouveau_cli*, i32*, %struct.drm_nouveau_gem_pushbuf_bo*, i32) #1

declare dso_local i32 @validate_fini(%struct.validate_op*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
