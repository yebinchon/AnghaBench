; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.file = type { i32 }
%struct.front_face = type { %struct.poseidon* }
%struct.poseidon = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@POSEIDON_INPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SGNL_SRC_SEL = common dso_local global i32 0, align 4
@pd_inputs = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.front_face*, align 8
  %9 = alloca %struct.poseidon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.front_face*
  store %struct.front_face* %13, %struct.front_face** %8, align 8
  %14 = load %struct.front_face*, %struct.front_face** %8, align 8
  %15 = getelementptr inbounds %struct.front_face, %struct.front_face* %14, i32 0, i32 0
  %16 = load %struct.poseidon*, %struct.poseidon** %15, align 8
  store %struct.poseidon* %16, %struct.poseidon** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ult i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @POSEIDON_INPUTS, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %28 = load i32, i32* @SGNL_SRC_SEL, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_inputs, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @send_set_req(%struct.poseidon* %27, i32 %28, i32 %34, i32* %11)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %43 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %38, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
