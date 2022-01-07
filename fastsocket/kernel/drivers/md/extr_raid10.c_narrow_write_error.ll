; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_narrow_write_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_narrow_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { i32, i32, %struct.TYPE_6__*, %struct.mddev*, %struct.bio* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r10bio*, i32)* @narrow_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @narrow_write_error(%struct.r10bio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.r10conf*, align 8
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bio*, align 8
  store %struct.r10bio* %0, %struct.r10bio** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %17 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %16, i32 0, i32 4
  %18 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %18, %struct.bio** %6, align 8
  %19 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %20 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %19, i32 0, i32 3
  %21 = load %struct.mddev*, %struct.mddev** %20, align 8
  store %struct.mddev* %21, %struct.mddev** %7, align 8
  %22 = load %struct.mddev*, %struct.mddev** %7, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 0
  %24 = load %struct.r10conf*, %struct.r10conf** %23, align 8
  store %struct.r10conf* %24, %struct.r10conf** %8, align 8
  %25 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %26 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %29 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.md_rdev*, %struct.md_rdev** %37, align 8
  store %struct.md_rdev* %38, %struct.md_rdev** %9, align 8
  %39 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %40 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %42 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

48:                                               ; preds = %2
  %49 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %55 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %58 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 1
  %64 = xor i32 %63, -1
  %65 = and i32 %61, %64
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %131, %48
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %141

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.bio*, %struct.bio** %6, align 8
  %79 = load i32, i32* @GFP_NOIO, align 4
  %80 = load %struct.mddev*, %struct.mddev** %7, align 8
  %81 = call %struct.bio* @bio_clone_mddev(%struct.bio* %78, i32 %79, %struct.mddev* %80)
  store %struct.bio* %81, %struct.bio** %15, align 8
  %82 = load %struct.bio*, %struct.bio** %15, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.bio*, %struct.bio** %6, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @md_trim_bio(%struct.bio* %82, i32 %87, i32 %88)
  %90 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %91 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %99 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %100 = call i32 @choose_data_offset(%struct.r10bio* %98, %struct.md_rdev* %99)
  %101 = add nsw i32 %97, %100
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %104 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = add nsw i32 %101, %106
  %108 = load %struct.bio*, %struct.bio** %15, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %111 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.bio*, %struct.bio** %15, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @WRITE, align 4
  %116 = load %struct.bio*, %struct.bio** %15, align 8
  %117 = call i64 @submit_bio_wait(i32 %115, %struct.bio* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %77
  %120 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @rdev_set_badblocks(%struct.md_rdev* %120, i32 %121, i32 %122, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %125, %119
  %129 = phi i1 [ false, %119 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %128, %77
  %132 = load %struct.bio*, %struct.bio** %15, align 8
  %133 = call i32 @bio_put(%struct.bio* %132)
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %12, align 4
  br label %68

141:                                              ; preds = %68
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %47
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.bio* @bio_clone_mddev(%struct.bio*, i32, %struct.mddev*) #1

declare dso_local i32 @md_trim_bio(%struct.bio*, i32, i32) #1

declare dso_local i32 @choose_data_offset(%struct.r10bio*, %struct.md_rdev*) #1

declare dso_local i64 @submit_bio_wait(i32, %struct.bio*) #1

declare dso_local i64 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
